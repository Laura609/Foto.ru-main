import 'dart:async';
import 'package:flutter/material.dart';
import 'package:forum/Widgets/Forums/forum_message_widget.dart';
import 'package:forum/constants/constants.dart';
import 'package:forum/models/message.dart';
import 'package:forum/models/profile.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class ForumTopicDetailsWidget extends StatefulWidget {
  final String userPhotoUrl;
  final String topicTitle;
  final String topicDetails;

  const ForumTopicDetailsWidget({
    super.key,
    required this.userPhotoUrl,
    required this.topicTitle,
    required this.topicDetails,
  });

  @override
  State<ForumTopicDetailsWidget> createState() =>
      _ForumTopicDetailsWidgetState();
}

class _ForumTopicDetailsWidgetState extends State<ForumTopicDetailsWidget> {
  final TextEditingController _messageController = TextEditingController();
  final Map<String, Profile> _profileCache = {};
  late final Stream<List<Message>> _messagesStream;

  @override
  void initState() {
    super.initState();
    final myUserId = supabase.auth.currentUser!.id;
    _messagesStream = supabase
        .from('messages')
        .stream(primaryKey: ['id'])
        .order('created_at', ascending: true)
        .map((maps) => maps
            .map((map) => Message.fromMap(map: map, myUserId: myUserId))
            .toList());
  }

  Future<void> _loadProfileCache(String profileId) async {
    if (_profileCache.containsKey(profileId)) {
      return;
    }
    final data =
        await supabase.from('profiles').select().eq('id', profileId).single();
    final profile = Profile.fromMap(data);
    setState(() {
      _profileCache[profileId] = profile;
    });
  }

  Future<void> _sendMessage(String text, ScaffoldMessengerState scaffoldMessenger) async {
    final myUserId = supabase.auth.currentUser!.id;
    try {
      await supabase.from('messages').insert({
        'profile_id': myUserId,
        'content': text,
      });
    } on PostgrestException catch (error) {
      scaffoldMessenger.showSnackBar(
        SnackBar(content: Text(error.message)),
      );
    } catch (_) {
      scaffoldMessenger.showSnackBar(
        const SnackBar(content: Text(unexpectedErrorMessage)),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final scaffoldMessenger = ScaffoldMessenger.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(43, 43, 43, 1),
        title: Text(
          widget.topicTitle,
          style: const TextStyle(
            color: Color.fromRGBO(246, 246, 246, 1),
          ),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Color.fromRGBO(246, 246, 246, 1),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      backgroundColor: const Color.fromRGBO(43, 43, 43, 1),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: <Widget>[
                Container(
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/profile.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                const Text(
                  'PhotoProfi',
                  style: TextStyle(
                    color: Color.fromRGBO(246, 246, 246, 1),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              widget.topicTitle,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Color.fromRGBO(246, 246, 246, 1),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              widget.topicDetails,
              style: const TextStyle(
                fontSize: 16,
                color: Color.fromRGBO(246, 246, 246, 1),
              ),
            ),
            const SizedBox(height: 30),
            Expanded(
              child: StreamBuilder<List<Message>>(
                stream: _messagesStream,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    final messages = snapshot.data!;
                    return ListView.builder(
                      itemCount: messages.length,
                      itemBuilder: (context, index) {
                        final message = messages[index];
                        _loadProfileCache(message.profileId);
                        return MessageWidget(
                          message: message,
                          profile: _profileCache[message.profileId],
                        );
                      },
                    );
                  } else {
                    return preloader;
                  }
                },
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.transparent,
                    ),
                    child: TextField(
                      controller: _messageController,
                      decoration: const InputDecoration(
                        hintText: 'Напишите сообщение...',
                        contentPadding: EdgeInsets.symmetric(horizontal: 20),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () async {
                    final text = _messageController.text;
                    if (text.isNotEmpty) {
                      _messageController.clear();
                      await _sendMessage(text, scaffoldMessenger);
                    }
                  },
                  icon: const Icon(Icons.send),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
