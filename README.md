# Health_tracker
Project Blueprint: SDG3 Health Tracker

Project Goal: Design and build a mobile health tracking app in Flutter that enables users to manage their medical history, medication reminders, health tips, simple checkups (like blood pressure and heart rate tracking), and a privacy policy for secure usage.

Project Overview & Structure
The application will be designed using a modular structure to ensure easy maintainability and scalability. Below is a high-level project structure.

Directory Structure
sdg3_health_tracker/
├── lib/
│   ├── main.dart                  # Main entry point for the app
│   ├── screens/                   # Contains all screens
│   │   ├── home_screen.dart       # Home screen
│   │   ├── medical_history_screen.dart  # View/Add medical history
│   │   ├── medication_screen.dart # Manage medication
│   │   ├── reminders_screen.dart  # Medication reminders
│   │   ├── health_tips_screen.dart # Health tips and advice
│   │   ├── checkup_screen.dart    # Health checkup interface
│   │   └── privacy_policy_screen.dart  # Privacy policy screen
│   ├── widgets/                   # Reusable components
│   ├── models/                    # Data models for user data, prescriptions, etc.
│   ├── services/                  # Logic to handle reminders, data storage, etc.
│   ├── utils/                     # Utility functions and constants
│   └── theme/                     # Design theme and styling
└── test/                          # Contains all tests for the app

