import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pertemuan_v/models/user.dart';

class ProfileDetailScreen extends StatefulWidget {
  final User user;
  const ProfileDetailScreen({
    super.key,
    required this.user,
  });

  @override
  State<ProfileDetailScreen> createState() => _ProfileDetailScreenState();
}

class _ProfileDetailScreenState extends State<ProfileDetailScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _usernmeController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _profilePhotoController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  bool isVisiblePassword = false;

  @override
  void initState() {
    if (widget.user.name != "") {
      _nameController.text = widget.user.name;
    }
    if (widget.user.username != "") {
      _usernmeController.text = widget.user.username;
    }
    if (widget.user.email != "") {
      _emailController.text = widget.user.email;
    }
    if (widget.user.profilePhoto != "") {
      _profilePhotoController.text = widget.user.profilePhoto!;
    }
    if (widget.user.phoneNumber != "") {
      _phoneNumberController.text = widget.user.phoneNumber!;
    }
    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _passwordController.dispose();
    _usernmeController.dispose();
    _emailController.dispose();
    _profilePhotoController.dispose();
    _phoneNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).padding.top),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    GoRouter.of(context).pop();
                  },
                  child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.blue[200]),
                      child: const Icon(Icons.chevron_left)),
                ),
                const SizedBox(width: 8),
                const Flexible(
                  child: Text(
                    "Profile Detail",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  const SizedBox(height: 16),

                  //todo: username widget
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: TextFormField(
                      controller: _nameController,
                      decoration: InputDecoration(
                          label: const Text("Name"),
                          hintText: "Masukan nama anda",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8))),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Nama wajib diisi";
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(height: 8),

                  //todo: password widget
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: TextFormField(
                      controller: _passwordController,
                      obscureText: !isVisiblePassword,
                      decoration: InputDecoration(
                          isDense: true,
                          label: const Text("Password"),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8)),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                isVisiblePassword = !isVisiblePassword;
                              });
                            },
                            icon: Icon(isVisiblePassword == false
                                ? Icons.visibility_rounded
                                : Icons.visibility_off_rounded),
                          )),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Password wajib di isi";
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(height: 32),

                  //todo: username widget
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: TextFormField(
                      controller: _usernmeController,
                      decoration: InputDecoration(
                          label: const Text("username"),
                          hintText: "masukan username anda",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8))),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "username wajib diisi";
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(height: 8),

                  //todo: email widget
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: TextFormField(
                      controller: _emailController,
                      decoration: InputDecoration(
                          label: const Text("email"),
                          hintText: "masukan email anda",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8))),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "email wajib diisi";
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(height: 8),

                  //todo: profile widget
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: TextFormField(
                      controller: _profilePhotoController,
                      decoration: InputDecoration(
                          label: const Text("profile photo"),
                          hintText: "input image Url",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8))),
                      validator: (value) {
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(height: 8),

                  //todo: phone number widget
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: TextFormField(
                      controller: _phoneNumberController,
                      decoration: InputDecoration(
                          label: const Text("Phone Mumber"),
                          hintText: "masukan no hp",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8))),
                      validator: (value) {
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(height: 8),
                ],
              ),
            ),
          )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: GestureDetector(
              onTap: () {
                if (_formKey.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Column(
                    children: const [
                      Text("Success"),
                      Text("Anda berhasil mengubah data diri")
                    ],
                  )));
                } else {
                  log("gagal simpan");
                }
              },
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: Colors.blue, borderRadius: BorderRadius.circular(8)),
                child: const Center(child: Text("Simpan")),
              ),
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
