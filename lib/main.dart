import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app/app.dart';
import 'utils/activities_model.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    ChangeNotifierProvider(
      create: (BuildContext context) {
        return ActivitiesModel();
      },
      child: const App(),
    ),
  );
}

