import 'package:api_app/create_new_user_screen.dart';
import 'package:api_app/cubit/my_cubit.dart';
import 'package:api_app/cubit/result_state.dart';
import 'package:api_app/network_exceptions.dart';
import 'package:api_app/user.dart';
import 'package:api_app/user_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<User> usersList = [];

  @override
  void initState() {
    super.initState();
    context.read<MyCubit>().emitGetAllUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: BlocBuilder<MyCubit, MyState>(
      //   builder: (context, state) {
      //     final myCubit = context.read<MyCubit>();
      //     return GestureDetector(
      //       onTap: () {
      //         Navigator.push(
      //           context,
      //           MaterialPageRoute(builder: (_) => const CreateNewUserScreen()),
      //         ).then((_) {
      //           myCubit.emitGetAllUsers();
      //         });
      //       },
      //       child: _floatingButtonUI(),
      //     );
      //   },
      // ),
      appBar: AppBar(
        title: const Text("Users"),
        backgroundColor: Colors.teal,
        elevation: 4,
      ),
      body: BlocBuilder<MyCubit, ResultState<List<User>>>(
        builder: (context, ResultState<List<User>> state) {
          return state.when(
            idl: () => Center(child: CircularProgressIndicator()),
            loading: () => Center(child: CircularProgressIndicator()),
            success: (List<User> usersList) {
              return ListView.separated(
                padding: const EdgeInsets.all(12),
                itemCount: usersList.length,
                separatorBuilder:
                    (context, index) => const SizedBox(height: 10),
                itemBuilder: (context, index) {
                  final user = usersList[index];
                  final myCubit = context.read<MyCubit>();

                  return UserItemList(user: user, myCubit: myCubit);
                },
              );
            },
            error: (NetworkExceptions error) => Text(NetworkExceptions.getErrorMessage(error)),
          );

          // without freezed
          // if (state is Success) {
          //   usersList = stat;
          //   return ListView.separated(
          //     padding: const EdgeInsets.all(12),
          //     itemCount: usersList.length,
          //     separatorBuilder: (context, index) => const SizedBox(height: 10),
          //     itemBuilder: (context, index) {
          //       final user = usersList[index];
          //       final myCubit = context.read<MyCubit>();

          //       return UserItemList(user: user, myCubit: myCubit);
          // },
          // );

          // }

          // return const Center(
          // child: CircularProgressIndicator(color: Colors.teal),
          // );
        },
      ),
    );
  }

  Container _floatingButtonUI() {
    return Container(
      height: 56,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Colors.teal, Color(0xFF00897B)],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.teal.withOpacity(0.4),
            blurRadius: 12,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: const [
          Icon(Icons.person_add_alt_1, color: Colors.white),
          SizedBox(width: 8),
          Text(
            "Add User",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
class UserItemList extends StatelessWidget {
  const UserItemList({super.key, required this.user, required this.myCubit});

  final User user;
  final MyCubit myCubit;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (_) => UserDetailsScreen(userDetails: user),
        //   ),
        // ).then((_) {
        //   myCubit.emitGetAllUsers();
        // });
      },
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: Colors.teal.shade50,
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.teal,
            child: Text(
              user.name?.substring(0, 1).toUpperCase() ?? "",
              style: const TextStyle(color: Colors.white),
            ),
          ),
          title: Text(
            user.name ?? "Unknown",
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          subtitle: Text(user.email ?? ""),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              GestureDetector(
                onTap: () async {
                  // myCubit.emitDeleteUser(user.id.toString());
                  // ScaffoldMessenger.of(context).showSnackBar(
                  //   SnackBar(
                  //     content: Text("${user.name} has been deleted."),
                  //     backgroundColor: Colors.redAccent,
                  //   ),
                  // );
                },
                child: const Icon(Icons.delete, color: Colors.red),
              ),
              const SizedBox(width: 8),
              const Icon(Icons.arrow_forward_ios, size: 16),
            ],
          ),
        ),
      ),
    );
  }
}
