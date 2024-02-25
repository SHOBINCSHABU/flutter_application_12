import 'package:flutter/material.dart';
import 'package:flutter_application_12/view/chatscreen.dart';

class Message extends StatelessWidget {
  const Message({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => ChatScreen(),
      child: Scaffold(
          appBar: AppBar(
            leading: Icon(Icons.chevron_left_sharp),
            centerTitle: true,
            title: Text(
              "Message",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ),
          body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "search a doctor",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.mic),
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  child: Text(
                    "Active Now",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                )),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage("https://media.istockphoto.com/id/653832634/photo/portrait-of-male-doctor-standing-with-arms-crossed.jpg?s=612x612&w=0&k=20&c=YKusn_UfkRfMdBWJR1thZOaJtMlZsNNf-cA2jlRbtGQ="),
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage("https://media.istockphoto.com/id/1314644905/photo/cropped-portrait-of-an-attractive-young-female-doctor-standing-with-her-arms-folded-in-the.jpg?s=612x612&w=0&k=20&c=3gcm1fhzMPf2FdZNf7sJW5h9xuajvMCI7r7ZwS93Hqo="),
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage("https://media.istockphoto.com/id/1227536493/photo/hes-one-of-the-most-capable-and-competent-doctors-around.jpg?s=612x612&w=0&k=20&c=J85fYgUAq2Q0qbJRW5rPvJECQMfqJQLK4GaxCR48m3w="),
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage("https://media.istockphoto.com/id/1283673728/photo/male-doctor-using-digital-tablet-while-standing-on-the-hospitals-foyer.jpg?s=612x612&w=0&k=20&c=ZtAt1HtG-QEke4gNSF1hgh7DheJO7IZ2M2OPvAYK46g="),
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage("https://media.istockphoto.com/id/1389842685/photo/shot-of-a-mature-doctor-having-a-consultation-with-a-patient.jpg?s=2048x2048&w=is&k=20&c=Us01ptRcIySpZeWcWLguHyIP2NkOFo_E1VV6ME8Ondc="),
                  )
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  child: Text(
                    "Messages",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                )),
            Container(
                child: Expanded(
                    child: ListView(children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 20,
                        backgroundImage: NetworkImage(
                            "https://media.istockphoto.com/id/653832634/photo/portrait-of-male-doctor-standing-with-arms-crossed.jpg?s=612x612&w=0&k=20&c=YKusn_UfkRfMdBWJR1thZOaJtMlZsNNf-cA2jlRbtGQ="),
                      ),
                      title: Text(
                        'Dr.Upul',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      subtitle: Text(
                        'Women Consectetur adipiscing elit',
                        style: TextStyle(color: Colors.blue),
                      ),
                      trailing: Text(
                        "12:50",
                        style: TextStyle(color: Colors.blue),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ChatScreen()));
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: BorderSide(color: Colors.grey)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 20,
                        backgroundImage: NetworkImage(
                            "https://media.istockphoto.com/id/1283673728/photo/male-doctor-using-digital-tablet-while-standing-on-the-hospitals-foyer.jpg?s=612x612&w=0&k=20&c=ZtAt1HtG-QEke4gNSF1hgh7DheJO7IZ2M2OPvAYK46g="),
                      ),
                      title: Text(
                        'Dr.Silva',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      subtitle: Text('Women Consectetur adipiscing elit'),
                      trailing: Text("12:50"),
                      onTap: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: BorderSide(color: Colors.grey)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 20,
                        backgroundImage: NetworkImage(
                            "https://media.istockphoto.com/id/1389842685/photo/shot-of-a-mature-doctor-having-a-consultation-with-a-patient.jpg?s=2048x2048&w=is&k=20&c=Us01ptRcIySpZeWcWLguHyIP2NkOFo_E1VV6ME8Ondc="),
                      ),
                      title: Text(
                        'Dr.Pawani',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      subtitle: Text('Women Consectetur adipiscing elit'),
                      trailing: Text("12:50"),
                      onTap: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: BorderSide(color: Colors.grey)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 20,
                        backgroundImage: NetworkImage(
                            "https://media.istockphoto.com/id/1628864889/photo/portrait-man-and-doctor-with-arms-crossed-focused-and-confident-in-hospital-clinic-and.jpg?s=612x612&w=0&k=20&c=E0Ih8Ui4awp0AomyLqrKajbTxNY00Vxmn84jiDYCwSU="),
                      ),
                      title: Text(
                        'Dr.Rayan',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      subtitle: Text('Women Consectetur adipiscing elit'),
                      trailing: Text("12:50"),
                      onTap: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: BorderSide(color: Colors.grey)),
                    ),
                  ),
                ],
              ),
            ])))
          ])),
    );
  }
}
