import 'package:flutter/material.dart';

class ThisweekTab extends StatelessWidget {
  const ThisweekTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SingleChildScrollView(
        child: Column(
          children: [
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: List.generate(
                3,
                (index) => Padding(
                  padding: EdgeInsets.only(
                    top: 20,
                    right: 15,
                    left: 15,
                    bottom: index == 1 ? 30 : 0, 
                  ),
                  child: CircleAvatar(
                    backgroundColor:
                         Colors.yellow ,
                    radius: index == 1 ? 60 : 30, 
                  ),
                ),
              ),
            ),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: List.generate(
                3,
                (index) => Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      Text(
                        "Player ${index + 1}",
                        style: TextStyle(
                          fontSize: index == 1 ? 20 : 15, 
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Score: ${1000 * (3 - index)}",
                        style: TextStyle(
                          fontSize: index == 1 ? 20 : 15, 
                          color: Colors.grey[700],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            
            ListView.builder(
              shrinkWrap: true,
              itemCount: 5, 
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 52, 51, 51),
                    borderRadius: BorderRadius.circular(12), 
                    border: Border.all(color: Colors.black, width: 2),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Player ${index + 4}", 
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Score: ${900 - (index * 50)}",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white70,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
