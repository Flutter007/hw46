class FitBaseArguments {
  String gender;
  double weight;
  double height;
  int age;

  FitBaseArguments({
    required this.gender,
    required this.weight,
    required this.height,
    required this.age,
  });

  double get calories {
    {
      if (gender == 'male') {
        return 10 * weight + 6.25 * height - 5 * age + 5;
      } else {
        return 10 * weight + 6.25 * height + 5 * age - 161;
      }
    }
  }
}

class FitActivityArguments {
  final String activity;
  final double calories;

  FitActivityArguments({required this.activity, required this.calories});

  double get caloriesActivity {
    const caloriesActivity = {
      'Sedentary lifestyle': 1.2,
      'Moderate lifestyle': 1.375,
      'Average lifestyle': 1.55,
      'High lifestyle': 1.725,
      'Very High lifestyle': 1.9,
    };
    return calories * caloriesActivity[activity]!;
  }
}

class FitGoalArguments {
  final String goal;
  final double calories;

  FitGoalArguments({required this.goal, required this.calories});

  double get caloriesGoal {
    const goalCalories = {
      'weight_loss': 0.85,
      'weight_maintenance': 1,
      'weight_gain': 1.15,
    };
    return calories * goalCalories[goal]!;
  }
}
