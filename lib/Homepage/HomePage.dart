
import 'package:bms_new/config/env.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Dashbord extends StatefulWidget {
  const Dashbord({super.key});
  @override
  State<Dashbord> createState() => _DashbordState();
  
}

class _DashbordState extends State<Dashbord> {
   Map? data;
  @override
  void setState(VoidCallback fn){
    if(mounted){
      super.setState(fn);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:  Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          sideBar(),
          Expanded(
            flex: 5,
            child: Env.pages[0])
        ],
      )
      );
  }

  Expanded sideBar() {
    return Expanded(child: Container(
          color: Colors.blue.shade800,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: Text("A2G BMS", style: GoogleFonts.montserrat(color: Colors.white, fontSize: 32, fontWeight: FontWeight.w500),)),
                const SizedBox(
                  height: 35,
                ),
                Container(
                 height: 1,
                 decoration: const BoxDecoration(
                  color: Colors.white
                 ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text("Dashboard", style: GoogleFonts.montserrat(color: Colors.white, fontSize: 25, fontWeight: FontWeight.w500),),
                SizedBox(height: 18,),
                Text("Master", style: GoogleFonts.montserrat(color: Colors.white, fontSize: 25, fontWeight: FontWeight.w500),),
                
                 
              ],
              
            ),
          ),
        ));
  }
  
}


// SingleChildScrollView(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Container(
//               height: 80,
//               width: MediaQuery.of(context).size.width,
//               decoration: const BoxDecoration(color: Colors.white),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Expanded(
//                       child: Row(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       const SizedBox(
//                         width: 40,
//                       ),
//                       Text(
//                         "Profile",
//                         style: GoogleFonts.montserrat(
//                             color: Colors.black, fontSize: 20),
//                       )
//                     ],
//                   )),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       Container(
//                         height: 38,
//                         width: 38,
//                         decoration: BoxDecoration(
//                           boxShadow: const [
//                             BoxShadow(
//                               color: Color.fromARGB(255, 49, 49, 49),
//                               blurRadius: 0.0, // soften the shadow
//                               spreadRadius: 0.01, //extend the shadow
//                               offset: Offset(
//                                 0.0, // Move to right 10  horizontally
//                                 2.0, // Move to bottom 10 Vertically
//                               ),
//                             )
//                           ],
//                           color: Colors.white,
//                           borderRadius: BorderRadius.circular(500),
//                           border: Border.all(width: 2, color: Colors.black),
//                         ),
//                         child: const Center(
//                           child: Icon(
//                             Icons.calendar_month_outlined,
//                             color: Colors.black,
//                           ),
//                         ),
//                       ),
//                       const SizedBox(
//                         width: 10,
//                       ),
//                       Container(
//                         height: 38,
//                         width: 38,
//                         decoration: BoxDecoration(
//                           boxShadow: const [
//                             BoxShadow(
//                               color: Color.fromARGB(255, 49, 49, 49),
//                               blurRadius: 0.0, // soften the shadow
//                               spreadRadius: 0.01, //extend the shadow
//                               offset: Offset(
//                                 0.0, // Move to right 10  horizontally
//                                 2.0, // Move to bottom 10 Vertically
//                               ),
//                             )
//                           ],
//                           color: Colors.white,
//                           borderRadius: BorderRadius.circular(500),
//                           border: Border.all(width: 2, color: Colors.black),
//                         ),
//                         child: const Center(
//                           child: Icon(
//                             Icons.notifications_none_outlined,
//                             color: Colors.black,
//                           ),
//                         ),
//                       ),
//                       const SizedBox(
//                         width: 10,
//                       ),
//                       Container(
//                         height: 38,
//                         width: 38,
//                         decoration: BoxDecoration(
//                           boxShadow: const [
//                             BoxShadow(
//                               color: Color.fromARGB(255, 49, 49, 49),
//                               blurRadius: 0.0, // soften the shadow
//                               spreadRadius: 0.01, //extend the shadow
//                               offset: Offset(
//                                 0.0, // Move to right 10  horizontally
//                                 2.0, // Move to bottom 10 Vertically
//                               ),
//                             )
//                           ],
//                           color: Colors.white,
//                           borderRadius: BorderRadius.circular(500),
//                           border: Border.all(width: 2, color: Colors.black),
//                         ),
//                         child: const Center(
//                           child: Icon(
//                             Icons.sms_outlined,
//                             color: Colors.black,
//                           ),
//                         ),
//                       ),
//                       const SizedBox(
//                         width: 30,
//                       ),
//                       Container(
//                         height: 45,
//                         width: 45,
//                         decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.circular(500),
//                           border: Border.all(width: 2, color: Colors.black),
//                         ),
//                         child: const Center(
//                           child: Icon(
//                             Icons.person,
//                             color: Colors.black,
//                           ),
//                         ),
//                       ),
//                       const Icon(
//                         Icons.keyboard_arrow_down_outlined,
//                         color: Colors.black,
//                         size: 25,
//                       ),
//                       const SizedBox(
//                         width: 60,
//                       ),
//                     ],
//                   )
//                 ],
//               ),
//             ),

            
//           ],
//           // Expanded(
//           //   child: Row(
//           //     mainAxisAlignment: MainAxisAlignment.center,
//           //     crossAxisAlignment: CrossAxisAlignment.center,
//           //     children: [
//           //       Expanded(child: Column(
//           //         mainAxisAlignment: MainAxisAlignment.center,
//           //         crossAxisAlignment: CrossAxisAlignment.center,
//           //         children: [],
//           //       )),
//           //         Expanded(child: Container(
                    
//           //           child: HomePageRightSection()))
//           //     ],
//           //   ),
//           // ),
        
//       ),
//     ));