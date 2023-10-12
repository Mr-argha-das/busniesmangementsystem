
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
   bool showMaster = false;
  @override
  void setState(VoidCallback fn){
    if(mounted){
      super.setState(fn);
    }
  }
  int pageindex = 0;
  void changePage(int i){
    setState(() {
      pageindex = i;
    });
  }
  double tabHeight =220;
  double ventureHeight = 0;
  double teamHeight = 0;
  double userHeight = 0;
  double clientAdd = 0;

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
            child: Env.pages[pageindex])
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
                GestureDetector(
                  onTap: () => changePage(0),
                  child: Text("Dashboard", style: GoogleFonts.montserrat(color: Colors.white, fontSize: 25, fontWeight: FontWeight.w500),)),
                const SizedBox(height: 18,),
                GestureDetector(
                  onTap: () => setState(() {
                    showMaster = !showMaster;
                  }),
                  child: Text("Master", style: GoogleFonts.montserrat(color: Colors.white, fontSize: 25, fontWeight: FontWeight.w500),)),
                const SizedBox(
                  height: 10,
                ),
             
                AnimatedContainer(
                  height: showMaster? tabHeight: 0,
                  
                  duration: const Duration(milliseconds: 300),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade900,
                    borderRadius: BorderRadius.circular(10)
                  ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      GestureDetector(
                         onTap: () => setState(() {
                          if(ventureHeight == 0.0){
                            ventureHeight = 70;
                            tabHeight = tabHeight  + ventureHeight;
                          }else{
                            tabHeight = tabHeight  - ventureHeight;
                            ventureHeight = 0;
                          }
                         }),
                        child: Text("Venture", style: GoogleFonts.montserrat(color: Colors.white, fontSize: 22, fontWeight: FontWeight.w500),)),
                        AnimatedContainer(
                          height: ventureHeight,
                          duration: const Duration(milliseconds: 100),
                          decoration: BoxDecoration(
                            color: Colors.blue.shade800,
                            borderRadius: BorderRadius.circular(15)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListView(
                              children: [
                                GestureDetector(
                                  onTap: () => changePage(1),
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Text("Venture Add", style: GoogleFonts.montserrat(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w500),),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () => changePage(2),
                                  child: Padding(padding: const EdgeInsets.all(4.0),
                                  child: Text("Data Table", style: GoogleFonts.montserrat(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w500),),
                                  ),
                                )
                              ],
                            ),
                          )
                        ),
                      const SizedBox(
                        height: 15,
                      ),
                      GestureDetector(
                         onTap: () => setState(() {
                           if(teamHeight == 0.0){
                            teamHeight = 70;
                            tabHeight = tabHeight  + teamHeight;
                          }else{
                            tabHeight = tabHeight  - teamHeight;
                            teamHeight = 0;
;                          }
                         }),
                        child: Text("Team Add", style: GoogleFonts.montserrat(color: Colors.white, fontSize: 22, fontWeight: FontWeight.w500),)),
                        AnimatedContainer(
                          height: teamHeight,
                          duration: const Duration(milliseconds: 100),
                          decoration: BoxDecoration(
                            color: Colors.blue.shade800,
                            borderRadius: BorderRadius.circular(15)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListView(
                              children: [
                                GestureDetector(
                                  onTap: () => changePage(3),
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Text("Team Add", style: GoogleFonts.montserrat(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w500),),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () => changePage(4),
                                  child: Padding(padding: const EdgeInsets.all(4.0),
                                  child: Text("Data Table", style: GoogleFonts.montserrat(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w500),),
                                  ),
                                )
                              ],
                            ),
                          )
                        ),
                      const SizedBox(
                        height: 15,
                      ),
                      GestureDetector(
                         onTap: () => setState(() {
                          if(userHeight == 0.0){
                            userHeight = 70;
                            tabHeight = tabHeight  + userHeight;
                          }else{
                            tabHeight = tabHeight  - userHeight;
                            userHeight = 0;
                          }
                         }),
                        child: Text("User Add", style: GoogleFonts.montserrat(color: Colors.white, fontSize: 22, fontWeight: FontWeight.w500),)),
                      AnimatedContainer(
                          height: userHeight,
                          duration: const Duration(milliseconds: 100),
                          decoration: BoxDecoration(
                            color: Colors.blue.shade800,
                            borderRadius: BorderRadius.circular(15)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListView(
                              children: [
                                GestureDetector(
                                  onTap: () => changePage(5),
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Text("User Add", style: GoogleFonts.montserrat(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w500),),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () => changePage(6),
                                  child: Padding(padding: const EdgeInsets.all(4.0),
                                  child: Text("Data Table", style: GoogleFonts.montserrat(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w500),),
                                  ),
                                )
                              ],
                            ),
                          )
                        ),
                      const SizedBox(
                        height: 15,
                      ),
                      GestureDetector(
                         onTap: () => setState(() {
                          if(clientAdd == 0.0){
                            clientAdd = 70;
                            tabHeight = tabHeight  + clientAdd;
                          }else{
                            tabHeight = tabHeight  - clientAdd;
                            clientAdd = 0;
                          }
                         }),
                        
                        child: Text("Client Add", style: GoogleFonts.montserrat(color: Colors.white, fontSize: 22, fontWeight: FontWeight.w500),)),
                      AnimatedContainer(
                          height: clientAdd,
                          duration: const Duration(milliseconds: 100),
                          decoration: BoxDecoration(
                            color: Colors.blue.shade800,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListView(
                              children: [
                                GestureDetector(
                                  onTap: () => changePage(7),
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Text("Client Add", style: GoogleFonts.montserrat(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w500),),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () => changePage(8),
                                  child: Padding(padding: const EdgeInsets.all(4.0),
                                  child: Text("Data Table", style: GoogleFonts.montserrat(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w500),),
                                  ),
                                )
                              ],
                            ),
                          )
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        GestureDetector(
                         onTap: () => changePage(9),
                        
                        child: Text("Orders Chat", style: GoogleFonts.montserrat(color: Colors.white, fontSize: 22, fontWeight: FontWeight.w500),)),
                    ],
                  ),
                ),
                )
                 
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