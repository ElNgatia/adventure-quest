import 'package:adventure_quest/activity/repository/activity_repository.dart';
import 'package:adventure_quest/database/app_database.dart';
import 'package:adventure_quest/utils/activities_model.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  ActivityData? fetchedActivity;

  Future<void> _getActivity() async {
    final newActivity = await activityRepository.fetchActivity();
    setState(() {
      fetchedActivity = newActivity;
    });
  }

  @override
  void initState() {
    super.initState();
    _getActivity();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<ActivitiesNotifier>(
        builder: (context, activities, child) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                Container(
                  width: double.infinity,
                  height: 300,
                  child: Card(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (fetchedActivity != null)
                        Column(
                          children: [
                            const Text(
                              'Activity',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Center(child: Text(fetchedActivity!.activity)),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              'Type',
                              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            Text(fetchedActivity!.type),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              'Participants',
                              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            Text(fetchedActivity!.participants.toString()),
                          ],
                        ),
                      if (fetchedActivity == null)
                        const SizedBox(
                          width: 24,
                          height: 24,
                          child: CircularProgressIndicator(),
                        )
                    ],
                  )),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () async {
                        _getActivity();
                      },
                      child: const Text(
                        'Get Activity',
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                        onPressed: () async {
                          if (fetchedActivity != null) {
                            try {
                              await activityRepository.saveActivity(fetchedActivity);

                              Fluttertoast.showToast(
                                msg: 'Added to favorites',
                                toastLength: Toast
                                    .LENGTH_SHORT, // Duration for how long the toast should be displayed
                                gravity: ToastGravity.BOTTOM, // Position of the toast on the screen
                                backgroundColor: Colors.grey[600], // Background color of the toast
                                textColor: Colors.white,
                              );
                            } on Exception {
                              Fluttertoast.showToast(
                                msg: 'Activity already exists in favorites',
                                toastLength: Toast
                                    .LENGTH_LONG, // Duration for how long the toast should be displayed
                                gravity: ToastGravity.BOTTOM, // Position of the toast on the screen
                                backgroundColor: Colors.red[600], // Background color of the toast
                                textColor: Colors.white,
                              );
                            }
                          }
                        },
                        child: const Text('Add to Favorites')),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
