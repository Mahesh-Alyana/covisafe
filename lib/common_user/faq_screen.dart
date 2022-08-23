import 'package:covisafe/widgets/navigationbar.dart';
import 'package:flutter/material.dart';

class FAQScreen extends StatefulWidget {
  const FAQScreen({Key? key}) : super(key: key);

  @override
  _FAQScreenState createState() => _FAQScreenState();
}

class _FAQScreenState extends State<FAQScreen> {
  bool _1st = false;
  bool _2nd = false;
  bool _3rd = false;
  bool _4th = false;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: ListView(
      children: [
        Container(
          height: height,
          width: width,
          child: Column(
            children: [
              SizedBox(
                width: width,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        height: height * 0.003,
                        width: width * 0.07,
                        color: const Color(0xff18A0FB),
                      ),
                    ),
                    Text(
                      'Covisafe',
                      style: TextStyle(
                        fontFamily: 'poppins',
                        fontSize: width * 0.07,
                        fontWeight: FontWeight.lerp(
                            FontWeight.w900, FontWeight.w900, 0.5),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("FAQ",
                    style: TextStyle(
                        fontFamily: 'poppins', fontSize: width * 0.06)),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _1st = !_1st;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AnimatedContainer(
                    width: width * 0.9,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(color: Colors.black26, blurRadius: 10)
                      ],
                    ),
                    duration: const Duration(
                      milliseconds: 1000,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "What is Covid-19?",
                            style: TextStyle(
                                fontFamily: 'poppins_light',
                                fontSize: width * 0.05),
                          ),
                          _1st
                              ? const Text(
                                  'COVID-19 is a disease caused by a virus called SARS-CoV-2. Most people with COVID-19 have mild symptoms, but some people can become severely ill. Although most people with COVID-19 get better within weeks of illness, some people experience post-COVID conditions. Post-COVID conditions are a wide range of new, returning, or ongoing health problems people can experience more than four weeks after first being infected with the virus that causes COVID-19. Older people and those who have certain underlying medical conditions are more likely to get severely ill from COVID-19. Vaccines against COVID-19 are safe and effective.')
                              : const Text('')
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _2nd = !_2nd;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AnimatedContainer(
                    width: width * 0.9,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(color: Colors.black26, blurRadius: 10)
                      ],
                    ),
                    duration: const Duration(
                      milliseconds: 1000,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "How does the virus spreads?",
                            style: TextStyle(
                                fontFamily: 'poppins_light',
                                fontSize: width * 0.05),
                          ),
                          _2nd
                              ? const Text(
                                  '''COVID-19 spreads when an infected person breathes out droplets and very small particles that contain the virus. These droplets and particles can be breathed in by other people or land on their eyes, noses, or mouth. In some circumstances, they may contaminate surfaces they touch. People who are closer than 6 feet from the infected person are most likely to get infected.
COVID-19 is spread in three main ways:Breathing in air when close to an infected person who is exhaling small droplets and particles that contain the virus.
Having these small droplets and particles that contain virus land on the eyes, nose, or mouth, especially through splashes and sprays like a cough or sneeze.''')
                              : const Text('')
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _3rd = !_3rd;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AnimatedContainer(
                    width: width * 0.9,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(color: Colors.black26, blurRadius: 10)
                      ],
                    ),
                    duration: const Duration(
                      milliseconds: 1000,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "How can I protect myself?",
                            style: TextStyle(
                                fontFamily: 'poppins_light',
                                fontSize: width * 0.05),
                          ),
                          _3rd
                              ? const Text(
                                  '''Visit the link https://www.cdc.gov/coronavirus/2019-ncov/prevent-getting-sick/prevention.html\n and Others page to learn about how to protect yourself from respiratory illnesses, like COVID-19.''')
                              : const Text('')
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _4th = !_4th;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AnimatedContainer(
                    width: width * 0.9,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(color: Colors.black26, blurRadius: 10)
                      ],
                    ),
                    duration: const Duration(
                      milliseconds: 1000,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Should I use soap and water or hand sanitizer to protect against COVID-19 ?",
                            style: TextStyle(
                                fontFamily: 'poppins_light',
                                fontSize: width * 0.05),
                          ),
                          _4th
                              ? const Text(
                                  '''Handwashing is one of the best ways to protect yourself and your family from getting sick. Wash your hands often with soap and water for at least 20 seconds, especially after blowing your nose, coughing, or sneezing; going to the bathroom; and before eating or preparing food. If soap and water are not readily available, use an alcohol-based hand sanitizer with at least 60% alcohol.''')
                              : const Text('')
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              BottomNavigation(
                active: '',
              )
            ],
          ),
        ),
      ],
    ));
  }
}
