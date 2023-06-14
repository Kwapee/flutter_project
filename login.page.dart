import 'package:assignment_1/signup.page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

    @override
      // ignore: library_private_types_in_public_api
        _LoginPageState createState() => _LoginPageState();
	}

	class _LoginPageState extends State<LoginPage> {
	  // ignore: unused_field
	    late String _email, _password;

	      
	        final emailController = TextEditingController();
		  final passwordController = TextEditingController();
		    
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
							          title: const Text('Login'),
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
																												                          controller: emailController,
																															                      decoration: const InputDecoration(
																																	                              labelText: 'Email', hintText: 'Enter your email',suffixIcon: Icon(FontAwesomeIcons.envelope,size: 17,),),
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
																																																																								                      controller: passwordController,
																																																																										                          decoration: const InputDecoration(
																																																																													                          labelText: 'Password',
																																																																																                          hintText: 'Enter Password',suffixIcon: Icon(FontAwesomeIcons.eyeSlash,size: 17,),),
																																																																																			                      validator: (value) {
																																																																																					                            if (value!.isEmpty && value.length <= 9) {
																																																																																								                            return 'Provide a valid password';
																																																																																											                          }
																																																																																														                        return null;
																																																																																																	                    },
																																																																																																			                        onSaved: (value) {
																																																																																																						                      _password = value!;
																																																																																																								                          },
																																																																																																											                    ),
																																																																																																													                      const SizedBox(
																																																																																																															                          height: 15,
																																																																																																																		                    ),
																																																																																																																				                      ElevatedButton(
																																																																																																																						                          onPressed: onSubmit,
																																																																																																																									                      child: const Text('Login'),
																																																																																																																											                        ),
																																																																																																																														                  ElevatedButton(child: const Align(
																																																																																																																																                        alignment: Alignment.center,
																																																																																																																																			                        child: SizedBox(
																																																																																																																																						                        height: 15,
																																																																																																																																									                        child: Text('click here to go back to sign up '),
																																																																																																																																												                      ),
																																																																																																																																														                          ),
																																																																																																																																																	                      onPressed: () {
																																																																																																																																																			                            Navigator.push(context,
																																																																																																																																																						                          MaterialPageRoute(builder: (context) => const SignUpPage()),
																																																																																																																																																									                        );
																																																																																																																																																												                    },
																																																																																																																																																														                ),
																																																																																																																																																																                ],
																																																																																																																																																																		            ),
																																																																																																																																																																			              ),
																																																																																																																																																																				              ),
																																																																																																																																																																					              )
																																																																																																																																																																						          );
																																																																																																																																																																							  }
																																																																																																																																																																							  }
