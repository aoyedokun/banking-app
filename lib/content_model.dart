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
discription: "A world of seamless financial\n"
    " transactions"
),
OnboardingContent(
title: 'Life Essentials',
image: 'assets/onboard 2.png',
discription: "Lets take care of those\n""those things that\n"
           "makes your life easier"
),
OnboardingContent(
title: 'Account Protection',
image: 'assets/onboard 3.png',
discription: "Member of NDIC, so your deposits\n"
           "are insured"
),
OnboardingContent(
title: 'Easy Access',
image: 'assets/onboard 4.png',
discription: "Easy and secure management\n"
              "of your app"
),
];


