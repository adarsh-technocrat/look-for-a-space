import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:look_for_space/Models/SearchSpaceByTitleModel.dart';
import 'package:look_for_space/constants/constants.dart';
import 'package:look_for_space/utils/urlLauncher.dart';

class SpaceCardSection extends StatelessWidget {
  final List<Data>? data;
  final Includes? includess;
  final List<Errors>? errorss;

  static Utiles utiles = Utiles();
  static DateTime now = DateTime.now();

  const SpaceCardSection({Key? key, this.data, this.includess, this.errorss})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: data!.length,
          itemBuilder: (context, index) {
            var items = data![index];
            var dateTime = utiles.dateTimeFormeter(
                "hh:mm , dd  LLL", items.scheduledStart!);

            var user = userDetails(items);

            return Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
              child: GestureDetector(
                onTap: () {
                  utiles.urlLauncher(
                      Constants.kTwitterUrl + "i/spaces/${items.id}");
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Color(0xff4B4BF3).withOpacity(0.2),
                        Color(0xff8A61F2).withOpacity(0.2),
                      ],
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          items.title == null ? "" : items.title.toString(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: items.title == null ? 0 : 15,
                        ),
                        Text(
                          "Starting on: $dateTime",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, bottom: 10),
                          child: Divider(
                            color: Colors.white,
                            height: 5,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                if (user != null) {
                                  utiles.urlLauncher(
                                      Constants.kTwitterUrl + user.username!);
                                }
                              },
                              child: CircleAvatar(
                                minRadius: 22,
                                backgroundColor: Colors.black,
                                foregroundImage: CachedNetworkImageProvider(
                                    user == null
                                        ? Constants.kTwitterSpaceImage
                                        : user.profileImageUrl!),
                              ),
                            ),
                            TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              onPressed: () {},
                              child: Padding(
                                padding: const EdgeInsets.all(1.0),
                                child: Text(
                                  "Upcoming",
                                  style: TextStyle(
                                    color: Constants.kScaffoldBackgroundColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }

  Users? userDetails(Data items) {
    var includeID = includess!.users!.map((e) => e.id);
    for (int i = 0; i < includess!.users!.length; i++) {
      if (includeID.contains(items.creatorId)) {
        if (items.creatorId == includess!.users![i].id) {
          return includess!.users![i];
        }
      } else {
        return null;
      }
    }
  }
}
