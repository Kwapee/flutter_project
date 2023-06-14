import 'package:assignment_1/login.page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

    @override
      // ignore: library_private_types_in_public_api
        _SignUpPageState createState() => _SignUpPageState();
	}

	class _SignUpPageState extends State<SignUpPage> {
	  // ignore: unused_field
	    late String _fullName, _email, _phoneNumber, _address;

	      final nameController = TextEditingController();
	        final emailController = TextEditingController();
		  final phonenumberController = TextEditingController();
		    final addressController = TextEditingController();
		      final _formKey = GlobalKey<FormState>();

		        void onSubmit() {
			    if (_formKey.currentState!.validate()) {
			          _formKey.currentState!.save();
				      }
				        }

					  @override
					    Widget build(BuildContext context) {
					        return Scaffold(
						        appBar: AppBar(
							          title: const Text('Sign Up'),
								          ),
									          body: Form(
										            key: _formKey,
											              child: Padding(
												                  padding: const EdgeInsets.symmetric(
														                vertical: 16,
																              horizontal: 20,
																	                  ),
																			              child: SingleChildScrollView(
																				                    child: Column(
																						                    crossAxisAlignment: CrossAxisAlignment.start,
																								                    children: <Widget>[
																										                      TextFormField(
																												                          controller: nameController,
																															                      decoration: const InputDecoration(
																																	                              labelText: 'Full Name', hintText: 'Enter your name'),
																																				                          validator: (value) {
																																							                        if (value!.isEmpty || value.length < 6) {
																																										                        return 'Provide a valid name';
																																													                      }
																																															                            return null;
																																																		                        },
																																																					                    onSaved: (value) {
																																																							                          _fullName = value!;
																																																										                      },
																																																												                        ),
																																																															                  const SizedBox(
																																																																	                      height: 15,
																																																																			                        ),
																																																																						                  TextFormField(
																																																																								                      controller: emailController,
																																																																										                          decoration: const InputDecoration(
																																																																													                        labelText: 'Email',
																																																																																                      hintText: 'Enter your email',
																																																																																		                            suffixIcon: Icon(
																																																																																					                            FontAwesomeIcons.envelope,
																																																																																								                            size: 17,
																																																																																											                          ),
																																																																																														                      ),
																																																																																																                          validator: (value) {
																																																																																																			                        if (!value!.contains('@')) {
																																																																																																						                        return 'Provide a valid email';
																																																																																																									                      }
																																																																																																											                            return null;
																																																																																																														                        },
																																																																																																																	                    onSaved: (value) {
																																																																																																																			                          _email = value!;
																																																																																																																						                      },
																																																																																																																								                        ),
																																																																																																																											                  const SizedBox(
																																																																																																																													                      height: 15,
																																																																																																																															                        ),
																																																																																																																																		                  TextFormField(
																																																																																																																																				                      controller: phonenumberController,
																																																																																																																																						                          decoration: const InputDecoration(
																																																																																																																																									                        labelText: 'Phone Number',
																																																																																																																																												                      hintText: 'Enter Phone Number',
																																																																																																																																														                            suffixIcon: Icon(
																																																																																																																																																	                            FontAwesomeIcons.phone,
																																																																																																																																																				                            size: 17,
																																																																																																																																																							                          ),
																																																																																																																																																										                      ),
																																																																																																																																																												                          validator: (value) {
																																																																																																																																																															                        if (value!.isEmpty && value.length <= 10) {
																																																																																																																																																																		                        return 'Provide a valid phone number';
																																																																																																																																																																					                      }
																																																																																																																																																																							                            return null;
																																																																																																																																																																										                        },
																																																																																																																																																																													                    onSaved: (value) {
																																																																																																																																																																															                          _phoneNumber = value!;
																																																																																																																																																																																		                      },
																																																																																																																																																																																				                        ),
																																																																																																																																																																																							                  const SizedBox(
																																																																																																																																																																																									                      height: 15,
																																																																																																																																																																																											                        ),
																																																																																																																																																																																														                  TextFormField(
																																																																																																																																																																																																                      controller: addressController,
																																																																																																																																																																																																		                          decoration: const InputDecoration(
																																																																																																																																																																																																					                        labelText: 'Address',
																																																																																																																																																																																																								                      hintText: 'Enter your address',
																																																																																																																																																																																																										                            suffixIcon: Icon(
																																																																																																																																																																																																													                            FontAwesomeIcons.addressBook,
																																																																																																																																																																																																																                            size: 17,
																																																																																																																																																																																																																			                          ),
																																																																																																																																																																																																																						                      ),
																																																																																																																																																																																																																								                          validator: (value) {
																																																																																																																																																																																																																											                        if (value!.isEmpty && value.length < 5) {
																																																																																																																																																																																																																														                        return 'Provide a valid address';
																																																																																																																																																																																																																																	                      }
																																																																																																																																																																																																																																			                            return null;
																																																																																																																																																																																																																																						                        },
																																																																																																																																																																																																																																									                    onSaved: (value) {
																																																																																																																																																																																																																																											                          _address = value!;
																																																																																																																																																																																																																																														                      },
																																																																																																																																																																																																																																																                        ),
																																																																																																																																																																																																																																																			                  const SizedBox(
																																																																																																																																																																																																																																																					                      height: 15,
																																																																																																																																																																																																																																																							                        ),
																																																																																																																																																																																																																																																										                  ElevatedButton(
																																																																																																																																																																																																																																																												                      onPressed: onSubmit,
																																																																																																																																																																																																																																																														                          child: const Text('Submit'),
																																																																																																																																																																																																																																																																	                    ),
																																																																																																																																																																																																																																																																			                      ElevatedButton(
																																																																																																																																																																																																																																																																					                          child: const Align(
																																																																																																																																																																																																																																																																								                        alignment: Alignment.center,
																																																																																																																																																																																																																																																																											                      child: SizedBox(
																																																																																																																																																																																																																																																																													                              height: 15,
																																																																																																																																																																																																																																																																																                              child: Text('click here to visit the login page'),
																																																																																																																																																																																																																																																																																			                            ),
																																																																																																																																																																																																																																																																																						                        ),
																																																																																																																																																																																																																																																																																									                    onPressed: () {
																																																																																																																																																																																																																																																																																											                          Navigator.push(context,
																																																																																																																																																																																																																																																																																														                        MaterialPageRoute(builder: (context) => const LoginPage()),
																																																																																																																																																																																																																																																																																																	                      );
																																																																																																																																																																																																																																																																																																			                          },
																																																																																																																																																																																																																																																																																																						                    ),
																																																																																																																																																																																																																																																																																																								                    ],
																																																																																																																																																																																																																																																																																																										                  ),
																																																																																																																																																																																																																																																																																																												              ),
																																																																																																																																																																																																																																																																																																													                ),
																																																																																																																																																																																																																																																																																																															        ));
																																																																																																																																																																																																																																																																																																																  }
																																																																																																																																																																																																																																																																																																																  }

