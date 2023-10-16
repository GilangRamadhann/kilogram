import 'package:flutter/material.dart';
import 'package:kilogram/screens/post_model.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  List<PostModel> postModels = [
    PostModel(
      name: "Putri Megawat",
      profilePhotoUrl:
          "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=100&q=80",
      photoUrl:
          "https://images.pexels.com/photos/13940670/pexels-photo-13940670.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    ),
    PostModel(
      name: "Postbowo",
      profilePhotoUrl:
          "https://images.unsplash.com/photo-1463453091185-61582044d556?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=100&q=80",
      photoUrl:
          "https://images.pexels.com/photos/33961/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    ),
    PostModel(
      name: "Diganjar Wadas",
      profilePhotoUrl:
          "https://images.unsplash.com/photo-1489980557514-251d61e3eeb6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=100&q=80",
      photoUrl:
          "https://images.pexels.com/photos/5185446/pexels-photo-5185446.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    ),
    PostModel(
      name: "Anis Aned",
      profilePhotoUrl:
          "https://images.unsplash.com/photo-1530268729831-4b0b9e170218?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=100&q=80",
      photoUrl:
          "https://images.pexels.com/photos/12166201/pexels-photo-12166201.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    ),
    PostModel(
      name: "Cak Iplus",
      profilePhotoUrl:
          "https://images.unsplash.com/photo-1618077360395-f3068be8e001?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=100&q=80",
      photoUrl:
          "https://images.pexels.com/photos/11544823/pexels-photo-11544823.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 25,
              ),
              Align(
                alignment: Alignment.center,
                child: Image.asset("assets/images/logokg.png"),
              ),
              SizedBox(
                height: 25,
              ),
              ListView.builder(
                itemCount: postModels.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  final post = postModels[index];

                  return Container(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              CircleAvatar(
                                backgroundImage: NetworkImage(
                                  post.profilePhotoUrl,
                                ),
                                radius: 20,
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    post.name,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Image.network(post.photoUrl),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
