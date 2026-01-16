// import 'package:api_app/cubit/my_cubit.dart';
// import 'package:api_app/user.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class UserDetailsScreen extends StatefulWidget {
//   const UserDetailsScreen({super.key, required this.userDetails});
//   final User userDetails;

//   @override
//   State<UserDetailsScreen> createState() => _UserDetailsScreenState();
// }

// class _UserDetailsScreenState extends State<UserDetailsScreen> {
//   @override
//   void initState() {
//     super.initState();
//     BlocProvider.of<MyCubit>(
//       context,
//     ).emitGetUserDetails(widget.userDetails.id ?? 0);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("User Details"),
//         backgroundColor: Colors.teal,
//         elevation: 20,
//       ),
//       body: BlocBuilder<MyCubit, MyState>(
//         builder: (context, state) {
//           if (state is GetUserDetails) {
//             return Container(
//               color: Colors.teal,
//               height: 50,
//               alignment: Alignment.center,
//               child: Text(
//                 state.userDetails.name ?? '',
//                 style: const TextStyle(color: Colors.white),
//               ),
//             );
//           }

//           return const Center(
//             child: CircularProgressIndicator(color: Colors.teal),
//           );
//         },
//       ),
//     );
//   }
// }
