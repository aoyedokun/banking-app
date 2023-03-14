class OnboardingContent {
  String image;
  String title;
  String discription;

  OnboardingContent({required this.image,
    required this.title,
    required this.discription});
}

List<OnboardingContent> contents = [
OnboardingContent(
title: 'Welcome to Ace',
image: 'assets/onboard 1.png',
discription: "We offer the best and secure\n"
    " app for you"
),
OnboardingContent(
title: 'Personalized for you',
image: 'assets/onboard 2.png',
discription: "Access content from anywhere and\n"
             "anytime learn at your own pace"
),
OnboardingContent(
title: 'Build and Invest',
image: 'assets/onboard 3.png',
discription: "Invest to achieve capital\n"
           "income and growth"
),
OnboardingContent(
title: 'Easy Access',
image: 'assets/onboard 4.png',
discription: "Easy and secure management\n"
              "of your investment"
),
];


