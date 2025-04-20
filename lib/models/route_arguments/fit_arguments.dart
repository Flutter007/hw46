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

  double get calories {
    {
      if (gender == 'male') {
        return 10 * weight + 6.25 * height - 5 * age + 5;
      } else {
        return 10 * weight + 6.25 * height - 5 * age - 161;
      }
    }
  }

  double get caloriesGoal {
    const goalCalories = {
      'weight_loss': 0.85,
      'weight_maintenance': 1,
      'weight_gain': 1.15,
    };
    return calories * goalCalories[goal]!;
  }

  double get finalCalories {
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
