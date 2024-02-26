// lib/main.dart

import 'package:flutter/material.dart';


class UserFeedbackDialogTestScreen extends StatelessWidget {
  const UserFeedbackDialogTestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Feedback form'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Open form'),
          onPressed: () {
            showDialog(
                context: context, builder:
                (context) => const FeedbackDialog());
          },
        ),
      ),
    );
  }
}

class FeedbackDialog extends StatefulWidget {
  const FeedbackDialog({Key? key}) : super(key: key);

  @override
  State<FeedbackDialog> createState() => _FeedbackDialogState();
}

class _FeedbackDialogState extends State<FeedbackDialog> {
  final TextEditingController _controller = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              controller: _controller,
              keyboardType: TextInputType.multiline,
              decoration: const InputDecoration(
                hintText: 'Enter your feedback here',
                filled: true,
              ),
              maxLines: 5,
              maxLength: 4096,
              textInputAction: TextInputAction.done,
              validator: (String? text) {
                if (text == null || text.isEmpty) {
                  return 'Please enter a value';
                }
                return null;
              },
            ),
            const Text("Note: Please include your email ID in the feedback if you would like to get follow up response.")

          ],
        ),
      ),
      actions: [
        TextButton(
          child: const Text('Cancel'),
          onPressed: () => Navigator.pop(context),
        ),
        TextButton(
          child: const Text('Send'),
          onPressed: () async {
            /**
             Send to backend
             */
          },
        )
      ],
    );
  }
}
