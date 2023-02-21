import "package:flutter/material.dart";

void main() {
  runApp(const MaterialApp(home: Portfolio()));
}

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding:
          const EdgeInsets.only(top: 80.0, right: 15, bottom: 15, left: 15),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              // const Image(
              //   width: 80,
              //   height: 80,
              //   image: Svg('images/profile_icon.svg'),
              // ),
              const SizedBox(
                width: 24,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  Text(
                    "Mr. Smith",
                    style: TextStyle(fontSize: 32, fontFamily: "Poppins"),
                  ),
                  Text(
                    "App Developer",
                    style: TextStyle(fontSize: 18),
                  )
                ],
              )
            ],
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 32, left: 25, bottom: 25, right: 25),
            child: Column(children: <Widget>[
              Row(
                children: const <Widget>[
                  Icon(Icons.school_outlined,
                      size: 36, color: Color.fromARGB(154, 0, 0, 0)),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 16,
                    ),
                    child: Text(
                      "+2 High School Harinagar",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Row(
                  children: const <Widget>[
                    Icon(Icons.computer_outlined,
                        size: 36, color: Color.fromARGB(154, 0, 0, 0)),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 16,
                      ),
                      child: Text(
                        "Software Engineer",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Row(
                  children: const <Widget>[
                    Icon(Icons.location_pin,
                        size: 36, color: Color.fromARGB(154, 0, 0, 0)),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 16,
                      ),
                      child: Text(
                        "Harinagar, Bihar, India",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Row(
                  children: const <Widget>[
                    Icon(Icons.email_outlined,
                        size: 36, color: Color.fromARGB(154, 0, 0, 0)),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 16,
                      ),
                      child: Text(
                        "mr.smith@gmail.com",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Row(
                  children: const <Widget>[
                    Icon(Icons.call,
                        size: 36, color: Color.fromARGB(154, 0, 0, 0)),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 16,
                      ),
                      child: Text(
                        "+91 701XXX0216",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
          const Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              "I am software developer at infosys having over 2+ years of experience. Please DM me for the mobile application and website development.",
              style: TextStyle(
                  fontSize: 18, letterSpacing: .15, fontFamily: "Poppins"),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            "Created by ❤",
            style: TextStyle(
                fontSize: 16,
                letterSpacing: .2,
                color: Color.fromARGB(154, 0, 0, 0)),
          ),
        ],
      ),
    ));
  }
}
