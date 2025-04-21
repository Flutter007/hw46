class FitArguments {
  final String gender;
  final double weight;
  final double height;
  final int age;
  final String activity;
  final String goal;

  FitArguments({
    required this.gender,
    required this.weight,
    required this.height,
    required this.age,
    required this.activity,
    required this.goal,
  });

  double get basicCalories {
    double base = 10 * weight + 6.25 * height - 5 * age;
    if (gender == 'male') {
      return base + 5;
    } else {
      return base - 161;
    }
  }

  double get finalCalories {
    const goalCalories = {
      'weight_loss': 0.85,
      'weight_maintenance': 1,
      'weight_gain': 1.15,
    };
    return caloriesActivity * goalCalories[goal]!;
  }

  double get caloriesActivity {
    const caloriesActivity = {
      'Sedentary lifestyle': 1.2,
      'Moderate lifestyle': 1.375,
      'Average - activity lifestyle': 1.55,
      'High - activity lifestyle': 1.725,
      'Very High - activity lifestyle': 1.9,
    };

    return basicCalories * caloriesActivity[activity]!;
  }
}
