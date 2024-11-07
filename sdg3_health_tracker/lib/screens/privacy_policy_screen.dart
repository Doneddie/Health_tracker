import 'package:flutter/material.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  // Privacy policy text
  final String privacyPolicyText = '''
  **Privacy Policy**

  Your privacy is important to us. This application is committed to protecting your personal information and ensuring transparency in how we use and store your data.

  **1. Data Collection**
  We collect personal health information only when voluntarily provided by the user. This information includes, but is not limited to, medical history, prescriptions, and health metrics such as heart rate and blood pressure.

  **2. Data Usage**
  The data you provide is used solely to improve your experience within the app and to provide personalized health recommendations and reminders.

  **3. Data Storage**
  Your personal information is securely stored on your device and is not shared with third-party services unless specifically authorized by you.

  **4. Data Security**
  We implement security measures to safeguard your data, including secure storage and encrypted data transfers where applicable.

  **5. User Rights**
  You have the right to access, update, or delete your data at any time. Simply go to the settings section in the app to manage your information.

  **6. Changes to This Policy**
  We may update this privacy policy from time to time. Notifications of changes will be provided within the app.

  **Contact Us**
  If you have any questions about this Privacy Policy, please contact us at support@healthtracker.com.

  By using this app, you consent to the terms outlined in this Privacy Policy.
  ''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Privacy Policy"),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Text(
            privacyPolicyText,
            style: TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}
