import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class IdealSourceForButtons extends StatefulWidget {
  const IdealSourceForButtons({super.key});

  @override
  State<IdealSourceForButtons> createState() => _IdealSourceForButtonsState();
}

class _IdealSourceForButtonsState extends State<IdealSourceForButtons>
    with RestorationMixin {
  final isSelected = [
    RestorableBool(false),
    RestorableBool(true),
    RestorableBool(false),
  ];

  @override
  String get restorationId => 'toggle_button_demo';

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(isSelected[0], 'first_item');
    registerForRestoration(isSelected[1], 'second_item');
    registerForRestoration(isSelected[2], 'third_item');
  }

  @override
  void dispose() {
    for (final restorableBool in isSelected) {
      restorableBool.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Text Button'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text('Text Button'),
              ),
              const SizedBox(
                width: 12,
              ),
              TextButton.icon(
                icon: const Icon(Icons.add, size: 18),
                label: const Text('Text Button With Icon'),
                onPressed: () {},
              ),
            ],
          ),
          const SizedBox(height: 12),
          const Text('Elevated Button'),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Text('Elevated Button'),
              ),
              const SizedBox(width: 12),
              ElevatedButton.icon(
                icon: const Icon(Icons.add, size: 18),
                label: const Text('Elevated Button With Icon'),
                onPressed: () {},
              ),
            ],
          ),
          const SizedBox(height: 12),
          const Text('Outlined Button'),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OutlinedButton(
                onPressed: () {},
                child: const Text('Outlined Button'),
              ),
              const SizedBox(width: 12),
              OutlinedButton.icon(
                icon: const Icon(Icons.add, size: 18),
                label: const Text('Outlined Button With Icon'),
                onPressed: () {},
              ),
            ],
          ),
          const SizedBox(height: 12),
          const Text('Toggle Buttons'),
          const SizedBox(height: 12),
          ToggleButtons(
            onPressed: (index) {
              setState(() {
                isSelected[index].value = !isSelected[index].value;
              });
            },
            isSelected: isSelected.map((element) => element.value).toList(),
            children: const [
              Icon(Icons.format_bold),
              Icon(Icons.format_italic),
              Icon(Icons.format_underline),
            ],
          ),
          const SizedBox(height: 12),
          // Disabled toggle buttons
          ToggleButtons(
            onPressed: null,
            isSelected: isSelected.map((element) => element.value).toList(),
            children: const [
              Icon(Icons.format_bold),
              Icon(Icons.format_italic),
              Icon(Icons.format_underline),
            ],
          ),
        ],
      ),
    );
  }
}
