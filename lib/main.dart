import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const HomePage(),
    );
  }
}

// ================= Home Page =================
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('My Portfolio'),
        centerTitle: true,
        elevation: 4,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.teal,
                Colors.blue,
              ],
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('images/myimg.jpeg'),
                  ),
                  const SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Ibrahim',
                        style:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'IoT & Robotics Engineer',
                        style: TextStyle(fontSize: 22, color: Colors.black54),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 25),

              // Info Cards
              Expanded(
                child: ListView(
                  children: [
                    buildInfoCard(Icons.school, "Education", () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const EducationPage()),
                      );
                    }),
                    buildInfoCard(Icons.computer, "Projects", () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const ProjectsPage()),
                      );
                    }),
                    buildInfoCard(Icons.location_city, "Location", () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const LocationPage()),
                      );
                    }),
                    buildInfoCard(Icons.email, "Email", () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const EmailPage()),
                      );
                    }),
                    buildInfoCard(Icons.phone, "Phone", () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const PhonePage()),
                      );
                    }),
                    buildInfoCard(Icons.code, "Skills", () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SkillsPage()),
                      );
                    }),
                    buildInfoCard(Icons.military_tech, "Certifications", () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const CertificationsPage()),
                      );
                    }),
                    const SizedBox(height: 20),

                    // About Me
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      elevation: 3,
                      child: const Padding(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "About Me",
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.teal),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Innovative and passionate engineering student specializing in IoT, Robotics, and Machine Learning. "
                                  "With hands-on experience in AI-powered projects and automation systems, I strive to merge intelligent algorithms "
                                  "with hardware to solve real-world problems.",
                              style: TextStyle(fontSize: 16),
                            ),
                            SizedBox(height: 20),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                "Created By\nMd. Ibrahim",
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black54),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Reusable Card
  static Widget buildInfoCard(IconData icon, String title, VoidCallback onTap) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 2,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: Icon(icon, color: Colors.teal, size: 28),
        title: Text(
          title,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: onTap,
      ),
    );
  }
}

// ================= Pages =================

class EducationPage extends StatelessWidget {
  const EducationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Education")),
      body: const Padding(
        padding: EdgeInsets.all(20),
        child: Text(
          "📘 Gazipur Digital University\n"
              "B.Sc. in IoT & Robotics Engineering (2023 – Present)\n\n"
              "Passionate about AI, Machine Learning, and smart automation. Skilled in real-time systems and innovative tech solutions.",
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Projects")),
      body: const Padding(
        padding: EdgeInsets.all(20),
        child: Text(
          "🤖 Gesture-Based Quiz System (2024–25)\n"
              "Hand gesture recognition for quiz responses.\n\n"
              "🏠 Smart Home Automation (2024–25)\n"
              "ESP32-based automation with sensors and cloud.\n\n"
              "🎫 RFID Attendance System (2024–25)\n"
              "Real-time email alerts for student attendance.\n\n"
              "🗂️ Student Management System (2023–24)\n"
              "Efficient student data management.\n\n"
              "💧 Dry Handwashing Machine (2023–24)\n"
              "Fog-based water-saving handwashing system.\n\n"
              "🎮 Python Game Projects: Snake, Pong, Hangman, Rock-Paper-Scissors, Space Shooter",
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}

class LocationPage extends StatelessWidget {
  const LocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Location")),
      body: const Center(
        child: Text(
          "📍 Bangladesh",
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}

class EmailPage extends StatelessWidget {
  const EmailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Email")),
      body: const Center(
        child: Text(
          "📧 ibrah***@gmail.com",
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}

class PhonePage extends StatelessWidget {
  const PhonePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Phone")),
      body: const Center(
        child: Text(
          "📞 +880*********",
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}

class SkillsPage extends StatelessWidget {
  const SkillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Skills")),
      body: const Padding(
        padding: EdgeInsets.all(20),
        child: Text(
          "💻 Programming & Tools:\nPython, C, C++, Java, OpenCV, TensorFlow, Keras\n\n"
              "🤖 ML & AI:\nSupervised & Unsupervised Learning, Image Processing, Gesture & Face Recognition\n\n"
              "🧑‍🤝‍🧑 Soft Skills:\nLeadership, Public Speaking, Project Management, Critical Thinking",
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}

class CertificationsPage extends StatelessWidget {
  const CertificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Certifications")),
      body: const Padding(
        padding: EdgeInsets.all(20),
        child: Text(
          "📜 Complete Python 2023 for Beginners (Udemy)\n"
              "📜 Cyber Security Training (Creative IT)\n"
              "📜 Digital Literacy for Youth (DLC)\n"
              "📜 Git for Beginners (Udemy)",
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
