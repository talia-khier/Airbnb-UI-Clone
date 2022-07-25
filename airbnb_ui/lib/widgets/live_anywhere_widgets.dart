import 'package:flutter/material.dart';
import 'package:airbnb_ui/models/places.dart';
import 'package:flutter/rendering.dart';

class LiveAnyWhereCard extends StatelessWidget {
  final Place place;

  const LiveAnyWhereCard({Key? key, required this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      width: 300,
      height: 300,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.0)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Image.network(
              place.image,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            place.title,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.black.withOpacity(.9)),
          )
        ],
      ),
    );
  }
}

class LiveAnyWhereList extends StatelessWidget {
  const LiveAnyWhereList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 500,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: places.length,
          itemBuilder: (BuildContext context, int index) {
            return LiveAnyWhereCard(place: places[index]);
          },
        ),
      ),
    );
  }
}
