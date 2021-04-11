import 'package:facebook_clone/widgets/avatar.dart';
import 'package:flutter/material.dart';

class RoomSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        children: [
          createRoomButton(),
          Avatar(
              imgUrl:
                  "https://pbs.twimg.com/profile_images/1338406029856423943/V0i3Jd4s.jpg",displayStatus: true,),
                  
          Avatar(
              imgUrl:
                  "https://i1.sndcdn.com/artworks-000668399059-fka7s9-t500x500.jpg",displayStatus: true,),
          Avatar(
              imgUrl:
                  "https://1.bp.blogspot.com/--Vbkw5spYiQ/XR79V6vNyJI/AAAAAAAABlA/jjvGJxGJPZg2ySCoe6d0mizuOWDbxmQxQCLcBGAs/s1600/George%2BKarikku.png",displayStatus: true,),
          Avatar(
              imgUrl:
                  "https://pbs.twimg.com/profile_images/1344184175042023425/If0Eo8AP.jpg",displayStatus: true,),
          Avatar(
              imgUrl:
                  "https://1.bp.blogspot.com/-lKkGF9tCdbY/XR79KfKqIqI/AAAAAAAABk4/bXQlJaPxDOUHhuqJ5JV5Lf1qopWygAORACLcBGAs/s1600/Nikhil%2BPrasad%2BKarikku%2Bdirector.png",displayStatus: true,),
          Avatar(
              imgUrl:
                  "https://pbs.twimg.com/profile_images/1214495220328349696/eQgYYrwQ.jpg",displayStatus: true,),
          Avatar(
              imgUrl:
                  "https://pbs.twimg.com/profile_images/1338406029856423943/V0i3Jd4s.jpg",displayStatus: true,),
          Avatar(
              imgUrl:
                  "https://i1.sndcdn.com/artworks-000668399059-fka7s9-t500x500.jpg",displayStatus: true,),
          Avatar(
              imgUrl:
                  "https://1.bp.blogspot.com/--Vbkw5spYiQ/XR79V6vNyJI/AAAAAAAABlA/jjvGJxGJPZg2ySCoe6d0mizuOWDbxmQxQCLcBGAs/s1600/George%2BKarikku.png",displayStatus: true,),
          Avatar(
              imgUrl:
                  "https://pbs.twimg.com/profile_images/1344184175042023425/If0Eo8AP.jpg",displayStatus: true,),
          Avatar(
              imgUrl:
                  "https://1.bp.blogspot.com/-lKkGF9tCdbY/XR79KfKqIqI/AAAAAAAABk4/bXQlJaPxDOUHhuqJ5JV5Lf1qopWygAORACLcBGAs/s1600/Nikhil%2BPrasad%2BKarikku%2Bdirector.png",displayStatus: true,),
          Avatar(
              imgUrl:
                  "https://pbs.twimg.com/profile_images/1214495220328349696/eQgYYrwQ.jpg",displayStatus: true,),
        ],
      ),
    );
  }

  Widget createRoomButton() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: OutlinedButton.icon(
          style: OutlinedButton.styleFrom(
            shape: StadiumBorder(),
            side: BorderSide(color: Colors.blue.shade100, width: 2),
            padding: EdgeInsets.all(18),
          ),
          onPressed: () {},
          icon: Icon(
            Icons.video_call,
            color: Colors.purple,
          ),
          label: Text(
            "Create \nRoom",
            style: TextStyle(color: Colors.blue),
          )),
    );
  }
}
