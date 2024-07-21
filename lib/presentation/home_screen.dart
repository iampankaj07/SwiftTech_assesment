import 'package:flutter/material.dart';
import 'package:imepay_assesment/model/options_model.dart';
import 'package:imepay_assesment/presentation/conncetivity/connectivity_service.dart';
import 'package:imepay_assesment/presentation/provider.dart';
import 'package:imepay_assesment/theme/custom_colors.dart';
import 'package:imepay_assesment/theme/custom_text_style.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    connectivityController.init();
    Provider.of<DataProvider>(context, listen: false).fetchData();
  }

  bool obscureAmount = false;
  ConnectivityController connectivityController = ConnectivityController();

  @override
  Widget build(BuildContext context) {
    // final connectivityService = Provider.of<ConnectivityService>(context);

    return SafeArea(
      child: Scaffold(
        body: ValueListenableBuilder(
            valueListenable: connectivityController.isConnected,
            builder: (context, value, child) {
              if (value) {
                return SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                      child: Icon(
                                    Icons.person,
                                    color: Theme.of(context).primaryColor,
                                  )),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        "Namaste ",
                                        style:
                                            CustomTextStyles.titleMediumInter,
                                      ),
                                      Text(
                                        "Pankaj",
                                        style: CustomTextStyles.titleLargeInter,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const Row(children: [
                                Icon(Icons.search),
                                SizedBox(
                                  width: 15,
                                ),
                                Icon(Icons.favorite),
                                SizedBox(
                                  width: 15,
                                ),
                                Icon(Icons.notifications),
                              ]),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15.0),
                          child: Container(
                            // height: 120,
                            decoration: BoxDecoration(
                                color: const Color(0xFFf9fbfa),
                                border: Border.all(
                                  color: const Color(0xFFe9eaec),
                                ),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(20))),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                // mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Super Wallet Balance Rs.",
                                    style: CustomTextStyles.walletinfo,
                                  ),
                                  Row(
                                    children: [
                                      obscureAmount
                                          ? Text(
                                              "XXXXX",
                                              style: CustomTextStyles
                                                  .titleLargeInter,
                                            )
                                          : Text(
                                              "15025",
                                              style: CustomTextStyles
                                                  .titleLargeInter,
                                            ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            obscureAmount = !obscureAmount;
                                          });
                                        },
                                        child: Icon(
                                          obscureAmount
                                              ? Icons.visibility
                                              : Icons.visibility_off,
                                          size: 20,
                                          color: const Color(0xFF787c7d),
                                        ),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Interest Earned",
                                        style: CustomTextStyles.walletinfo,
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      const Icon(
                                        Icons.info,
                                        size: 15,
                                        color: Color(0xFF787c7d),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 3,
                                  ),
                                  Row(
                                    children: [
                                      const Text("+0.00 "),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Container(
                                          decoration: BoxDecoration(
                                            color: Colors.green,
                                            borderRadius:
                                                BorderRadius.circular(4),
                                          ),
                                          child: const Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 5.0),
                                            child: Text("@3.05%"),
                                          )),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: belowWalletInfoData.map((v) {
                                return Flexible(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CircleAvatar(
                                        backgroundColor:
                                            Theme.of(context).primaryColor,
                                        child: Icon(
                                          v.icon,
                                          color: Colors.white,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        v.name!,
                                        textAlign: TextAlign.center,
                                        style: CustomTextStyles.bodySmallBlack,
                                      )
                                    ],
                                  ),
                                  // decoration: BoxDecoration(
                                  //   borderRadius: BorderRadius.circular(57.0),
                                  //   border: Border.all(
                                  //       width: 1.0, color: const Color(0xff707070)),
                                  // ),
                                );
                              }).toList()),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Divider(
                            color: CustomColors.dividerColor,
                          ),
                        ),
                        Consumer<DataProvider>(
                          builder: (context, dataProvider, child) {
                            if (dataProvider.isLoading) {
                              return Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 18.0),
                                child: Center(
                                  child: CircularProgressIndicator(
                                    color: Theme.of(context).primaryColor,
                                  ),
                                ),
                              );
                            }
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  dataProvider.headerMenu!.categoryTitle!,
                                  style: CustomTextStyles.menutitle,
                                ),
                                GridView.builder(
                                    gridDelegate:
                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount:
                                          3, // Number of columns in the grid
                                      mainAxisSpacing:
                                          10.0, // Spacing between rows
                                      crossAxisSpacing:
                                          10.0, // Spacing between columns
                                      childAspectRatio:
                                          1.2, // Aspect ratio of each grid item
                                    ),
                                    itemCount: dataProvider
                                        .headerMenu!.categoryContent!.length,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    itemBuilder: (context, contentindex) {
                                      return Column(
                                        children: [
                                          SizedBox(
                                            height: 70,
                                            // decoration: BoxDecoration(
                                            //   borderRadius:
                                            //       BorderRadius.circular(13),
                                            //   gradient: LinearGradient(
                                            //     colors: [
                                            //       Color.fromARGB(
                                            //           255, 218, 175, 175),
                                            //       Color.fromARGB(
                                            //           255, 224, 222, 222),
                                            //     ],
                                            //     begin: Alignment.bottomCenter,
                                            //     end: Alignment.topCenter,
                                            //   ),
                                            // ),
                                            child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Image.network(
                                                  dataProvider
                                                      .headerMenu!
                                                      .categoryContent![
                                                          contentindex]
                                                      .icon!,
                                                )
                                                // Icon(
                                                //     Icons.credit_card_rounded),
                                                ),
                                          ),
                                          Flexible(
                                            child: Text(
                                              dataProvider
                                                  .headerMenu!
                                                  .categoryContent![
                                                      contentindex]
                                                  .title!,
                                              textAlign: TextAlign.center,
                                              style: CustomTextStyles
                                                  .bodySmallBlack,
                                            ),
                                          )
                                        ],
                                      );
                                    }),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8.0),
                                  child: Divider(
                                    color: CustomColors.dividerColor,
                                  ),
                                ),
                                ListView.builder(
                                  itemCount: dataProvider.homeMenu!.length,
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemBuilder: (context, index) {
                                    if (dataProvider
                                            .homeMenu![index].categoryTitle ==
                                        "Bank link") {
                                      return Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(children: [
                                          Image.network(dataProvider
                                              .homeMenu![index]
                                              .categoryContent!
                                              .first
                                              .icon!),
                                        ]),
                                      );
                                    }
                                    if (dataProvider
                                            .homeMenu![index].categoryTitle ==
                                        "Banner 2") {
                                      return Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 8.0),
                                            child: Divider(
                                              color: CustomColors.dividerColor,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Image.network(dataProvider
                                                .homeMenu![index]
                                                .categoryContent!
                                                .first
                                                .icon!),
                                          ),
                                        ],
                                      );
                                    }
                                    if (dataProvider.homeMenu![index]
                                        .categoryContent!.isEmpty) {
                                      return Container();
                                    }
                                    return Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 8.0),
                                          child: Divider(
                                            color: CustomColors.dividerColor,
                                          ),
                                        ),
                                        Text(
                                          dataProvider
                                              .homeMenu![index].categoryTitle!,
                                          style: CustomTextStyles.menutitle,
                                        ),
                                        GridView.builder(
                                            gridDelegate:
                                                const SliverGridDelegateWithFixedCrossAxisCount(
                                              crossAxisCount:
                                                  3, // Number of columns in the grid
                                              mainAxisSpacing:
                                                  10.0, // Spacing between rows
                                              crossAxisSpacing:
                                                  10.0, // Spacing between columns
                                              childAspectRatio:
                                                  1.2, // Aspect ratio of each grid item
                                            ),
                                            itemCount: dataProvider
                                                .homeMenu![index]
                                                .categoryContent!
                                                .length,
                                            physics:
                                                const NeverScrollableScrollPhysics(),
                                            shrinkWrap: true,
                                            itemBuilder:
                                                (context, contentindex) {
                                              return Column(
                                                children: [
                                                  SizedBox(
                                                    height: 70,
                                                    // decoration: BoxDecoration(
                                                    //   borderRadius:
                                                    //       BorderRadius.circular(13),
                                                    //   gradient: LinearGradient(
                                                    //     colors: [
                                                    //       Color.fromARGB(
                                                    //           255, 218, 175, 175),
                                                    //       Color.fromARGB(
                                                    //           255, 224, 222, 222),
                                                    //     ],
                                                    //     begin: Alignment.bottomCenter,
                                                    //     end: Alignment.topCenter,
                                                    //   ),
                                                    // ),
                                                    child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(8.0),
                                                        child: Image.network(
                                                          dataProvider
                                                              .homeMenu![index]
                                                              .categoryContent![
                                                                  contentindex]
                                                              .icon!,
                                                        )
                                                        // Icon(
                                                        //     Icons.credit_card_rounded),
                                                        ),
                                                  ),
                                                  Flexible(
                                                    child: Text(
                                                      dataProvider
                                                          .homeMenu![index]
                                                          .categoryContent![
                                                              contentindex]
                                                          .title!,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: CustomTextStyles
                                                          .bodySmallBlack,
                                                    ),
                                                  )
                                                ],
                                              );
                                            }),
                                      ],
                                    );
                                  },
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8.0),
                                  child: Divider(
                                    color: CustomColors.dividerColor,
                                  ),
                                ),
                                Text(
                                  dataProvider.footerMenu!.categoryTitle!,
                                  style: CustomTextStyles.menutitle,
                                ),
                                GridView.builder(
                                    gridDelegate:
                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount:
                                          3, // Number of columns in the grid
                                      mainAxisSpacing:
                                          10.0, // Spacing between rows
                                      crossAxisSpacing:
                                          10.0, // Spacing between columns
                                      childAspectRatio:
                                          1.2, // Aspect ratio of each grid item
                                    ),
                                    itemCount: dataProvider
                                        .footerMenu!.categoryContent!.length,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    itemBuilder: (context, contentindex) {
                                      return Column(
                                        children: [
                                          SizedBox(
                                            height: 70,
                                            // decoration: BoxDecoration(
                                            //   borderRadius:
                                            //       BorderRadius.circular(13),
                                            //   gradient: LinearGradient(
                                            //     colors: [
                                            //       Color.fromARGB(
                                            //           255, 218, 175, 175),
                                            //       Color.fromARGB(
                                            //           255, 224, 222, 222),
                                            //     ],
                                            //     begin: Alignment.bottomCenter,
                                            //     end: Alignment.topCenter,
                                            //   ),
                                            // ),
                                            child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Image.network(
                                                  dataProvider
                                                      .footerMenu!
                                                      .categoryContent![
                                                          contentindex]
                                                      .icon!,
                                                )
                                                // Icon(
                                                //     Icons.credit_card_rounded),
                                                ),
                                          ),
                                          Flexible(
                                            child: Text(
                                              dataProvider
                                                  .footerMenu!
                                                  .categoryContent![
                                                      contentindex]
                                                  .title!,
                                              textAlign: TextAlign.center,
                                              style: CustomTextStyles
                                                  .bodySmallBlack,
                                            ),
                                          )
                                        ],
                                      );
                                    }),
                              ],
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                );
              } else {
                return const Center(child: Text("No Internet Connection"));
              }
            }),
      ),
    );
  }
}
