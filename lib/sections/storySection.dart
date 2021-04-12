import 'package:facebook_clone/widgets/storyCard.dart';
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 8),
        children: [
          StoryCard(
            createStoryStatus: true,
            story:
                "https://i.pinimg.com/originals/96/0f/b6/960fb60980be3da51043e4ef68e6e5ba.jpg",
            labelText: "Add to Story",
            displayBorder: false,
          ),
          StoryCard(
            labelText: "Fahad Fasil",
            story:
                "https://www.plumeriamovies.com/wp-content/uploads/2019/09/Athiran-Poster-575x840.jpg",
            avatar: "https://i.ytimg.com/vi/dhNVV6f1oYc/hqdefault.jpg",
            displayBorder: true,
          ),
          StoryCard(
            labelText: "Tovino Thomas",
            story:
                "https://www.mixindia.com/wp-content/uploads/2020/09/Kala-movie-poster.jpg",
            avatar:
                "https://images.cinemaexpress.com/uploads/user/imagelibrary/2019/7/16/original/TovinoThomas.jpg",
            displayBorder: true,
          ),
          StoryCard(
            labelText: "Soubin",
            story:
                "https://mir-s3-cdn-cf.behance.net/project_modules/2800_opt_1/e3be6954839641.596c447508974.jpg",
            avatar:
                "https://i2.cinestaan.com/image-bank/1500-1500/102001-103000/102176.jpg",
            displayBorder: false,
          ),
          StoryCard(
            labelText: "Nazriya Fahad",
            story: "https://wallpapercave.com/wp/wp5980262.jpg",
            avatar:
                "https://static.toiimg.com/thumb/msid-80341586,imgsize-668781,width-800,height-600,resizemode-75/80341586.jpg",
            displayBorder: true,
          ),
          StoryCard(
            labelText: "Nivin Pauly",
            story:
                "https://img.studioflicks.com/wp-content/uploads/2018/02/Hey-Jude-Movie-Posters-4-614x1024.jpg",
            avatar:
                "https://i0.wp.com/www.newsgram.com/wp-content/uploads/2018/01/C3eOndKVYAAKAyp.jpg",
            displayBorder: true,
          ),
          StoryCard(
            labelText: "Jayasurya ",
            story:
                "https://m.media-amazon.com/images/M/MV5BNjYwNTc5OGItNDlkNi00MTFhLWI2NDYtY2U3MTFlNTI5YjA4XkEyXkFqcGdeQXVyMjkxNzQ1NDI@._V1_.jpg",
            avatar:
                "https://upload.wikimedia.org/wikipedia/commons/9/9f/Jayasurya2018.jpg",
            displayBorder: false,
          ),
          StoryCard(
            labelText: "Sreenath Bhasi",
            story:
                "https://static.toiimg.com/photo/msid-69248793/69248793.jpg?250630",
            avatar:
                "https://static.toiimg.com/thumb/msid-53031997,width-800,height-600,resizemode-75,imgsize-72770/53031997.jpg",
            displayBorder: true,
          ),
          StoryCard(
            labelText: "Basil Joseph",
            story:
                "https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/176e1975177509.5c45d4571f5b8.jpg",
            avatar:
                "https://upload.wikimedia.org/wikipedia/commons/d/d2/Basil22.jpg",
            displayBorder: true,
          ),
          StoryCard(
            labelText: "Prithviraj",
            story:
                "https://m.media-amazon.com/images/M/MV5BMDNlZGU4ZGMtZjExYS00M2JjLThkMWEtZjkwOTZmYzgxMTIyXkEyXkFqcGdeQXVyMjkxNzQ1NDI@._V1_UY1200_CR105,0,630,1200_AL_.jpg",
            avatar:
                "https://upload.wikimedia.org/wikipedia/commons/3/3b/Prithviraj_oil_paint_2019.jpg",
            displayBorder: true,
          ),
        ],
      ),
    );
  }
}
