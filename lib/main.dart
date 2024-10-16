import 'package:another/common/utils/app_styles.dart';
import 'package:another/firebase_options.dart';
import 'package:another/pages/sign_in/sign_in.dart';
import 'package:another/pages/sign_up/sign_up.dart';
import 'package:another/pages/welcome/welcome.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.appThemeData,
      initialRoute: "/",
      routes: {
        "/": (context) => Welcome(),
        "/signIn": (context) => const SignIn(),
        "/signUp": (context) => const SignUp(),
      },
    );
  }
}

final appCount = StateProvider<int>((ref) {
  return 1;
});

class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int count = ref.watch(appCount);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Riverpod app"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              count.toString(),
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
            heroTag: 'page2',
            onPressed: () {
              // ref.read(appCount.notifier).state++;
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => const SecondPage()));
            },
            tooltip: 'Increment',
            child: const Icon(Icons.arrow_right_alt_rounded),
          ),
          FloatingActionButton(
            heroTag: 'add',
            onPressed: () {
              ref.read(appCount.notifier).state++;
            },
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class SecondPage extends ConsumerWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int count = ref.watch(appCount);
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text("$count"),
      ),
    );
  }
}
