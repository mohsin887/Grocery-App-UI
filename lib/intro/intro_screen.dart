import 'package:flutter/material.dart';
import 'package:flutter_onboard/flutter_onboard.dart';
import 'package:grocery/routes/routes.dart';

class HomeScreen extends StatelessWidget {
  final PageController _pageController = PageController();

  HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Column(
            children: [
              Expanded(
                child: Container(
                  width: double.maxFinite,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              Expanded(
                child: Container(
                  width: double.maxFinite,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          OnBoard(
            pageController: _pageController,
            // Either Provide onSkip Callback or skipButton Widget to handle skip state
            onSkip: () {
              // print('skipped');
              Navigator.of(context).pushNamed(Routes.loginScreen);
            },
            // Either Provide onDone Callback or nextButton Widget to handle done state
            onDone: () {
              Navigator.of(context).pushNamed(Routes.loginScreen);
              print('finsih screem');
            },
            onBoardData: onBoardData,
            titleStyles: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 18,
              fontWeight: FontWeight.w900,
              letterSpacing: 0.15,
            ),
            descriptionStyles: TextStyle(
              fontSize: 16,
              color: Colors.brown.shade300,
            ),
            pageIndicatorStyle: PageIndicatorStyle(
              width: 100,
              inactiveColor: Colors.grey,
              activeColor: Theme.of(context).primaryColor,
              inactiveSize: const Size(8, 8),
              activeSize: const Size(12, 12),
            ),
            // Either Provide onSkip Callback or skipButton Widget to handle skip state
            skipButton: TextButton(
              onPressed: () {
                // print('skipButton pressed');
                Navigator.of(context).pushNamed(Routes.loginScreen);
              },
              child: const Text(
                "Skip",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                ),
              ),
            ),
            // Either Provide onDone Callback or nextButton Widget to handle done state
            nextButton: OnBoardConsumer(
              builder: (context, ref, child) {
                final state = ref.watch(onBoardStateProvider);
                return Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: MaterialButton(
                    minWidth: double.maxFinite,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: const EdgeInsets.all(16),
                    color: Theme.of(context).primaryColor,
                    onPressed: () => _onNextTap(state),
                    child: Text(
                      state.isLastPage ? "Finish" : "Next",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void _onNextTap(OnBoardState onBoardState) {
    if (!onBoardState.isLastPage) {
      _pageController.animateToPage(
        onBoardState.page + 1,
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeInOutSine,
      );
    } else {
      //print("nextButton pressed");
    }
  }
}

final List<OnBoardModel> onBoardData = [
  const OnBoardModel(
    title: "Empowering Artisans, Farmers & Micro Business",
    description: "",
    imgUrl: "assets/images/1.png",
  ),
  const OnBoardModel(
    title: "Connecting NGOs, Social Enterprises with Communities",
    description: "",
    imgUrl: 'assets/images/2.png',
  ),
  const OnBoardModel(
    title: " Donate, Invest & Support infrastructure projects",
    description: "",
    imgUrl: 'assets/images/3.png',
  ),
];