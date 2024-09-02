import 'package:ecommerce/pages/login-register/login.dart';
import 'package:ecommerce/pages/onboard/onboarding_info.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
   final pageController=PageController();
   final controller=OnboardingInfo();
   bool isLastPage=false;

   @override

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
        color: const Color(0xfff8f8ff),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child:isLastPage? getStarted() :  Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(onPressed: ()=> pageController.jumpToPage(controller.onboardItem.length-1), child: const Text('Skip')),

           SmoothPageIndicator(controller: pageController, count: controller.onboardItem.length,
           onDotClicked: (index)=> pageController.animateToPage(index,
             duration: const Duration(milliseconds: 600),
             curve: Curves.easeIn,

           ),
           effect: const WormEffect(
             dotHeight: 12,
             dotWidth: 12,
             activeDotColor: Color(0xff037EEE)
           ),
           ),

            TextButton(onPressed: ()=> pageController.nextPage(
              duration: const Duration(milliseconds: 600), curve: Curves.easeIn
            ), child: const Text('Next')),

          ],
        ),
      ),
      backgroundColor: const Color(0xfff8f8ff),
      body: PageView.builder(
        onPageChanged: (index){
          setState(() {
            isLastPage=controller.onboardItem.length-1==index;
          });
        },
          itemCount: controller.onboardItem.length,
          controller: pageController,
          itemBuilder: (context, index){
        return Column(
          children: [
         Stack(

           children:[
             Container(
               height: 220,
               width: double.infinity,
               child: Image.asset(controller.onboardItem[index].bkimg, fit: BoxFit.cover,)

           ),
             Positioned(
                 top: 50,
                 left: 10, height: 50, width: 50,
                 child: Image.asset(controller.onboardItem[index].logo,),),


             Positioned(
                  top: 100,
                 left: 20,
                 child: Text(controller.onboardItem[index].title,style: const TextStyle(color: Colors.white, fontSize: 16),)),

           ]
         ),

            const SizedBox(height: 35,),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: Container(
                height: 260,
                width: 240,
                child: Image.asset(controller.onboardItem[index].image, fit: BoxFit.cover,),
              ),
            ),
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(controller.onboardItem[index].subtitle, style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 40.0, right: 20),
              child: Text(controller.onboardItem[index].description, style: const TextStyle(color: Colors.grey,),),
            ),

          ],
        );
      })

      );

  }

  Widget getStarted(){
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color(0xff037EEE),

      ),
      height: 55,
      width: MediaQuery.of(context).size.width*.9,
      child: TextButton(onPressed: (){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const Login()));
      },
          child: const Text('Get Started', style: TextStyle(color: Colors.white),)

      ),
    );
  }
}
