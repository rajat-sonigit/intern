// class PostTile extends StatelessWidget {
//   // final String profilePicPath;
//   // final String heading;
//   // final String postedAccount;
//   // final String postContent;
//   // final String timePosted;
//   // final String members;
//   //
//   // PostTile({
//   //   required this.profilePicPath,
//   //   required this.heading,
//   //   required this.postedAccount,
//   //   required this.postContent,
//   //   required this.timePosted,
//   //   required this.members,
//   // });
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PostTile extends StatefulWidget {
  @override
  _PostTileState createState() => _PostTileState();
}

class _PostTileState extends State<PostTile> {
  Color _filterColor = Colors.grey; // Initial color filter for like icon
  bool _liked = false; // Initial liked state

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      color: Colors.white,
      // Add padding for spacing
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'lib/assets/profile.png',
                  width: 46,
                  height: 46,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 8), // Add spacing between profile picture and text
              Flexible(
                // Use Flexible to end the first row before the main text
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Profile name and number of members
                    Row(
                      children: [
                        Text(
                          'Startup',
                          style: GoogleFonts.robotoFlex(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 6),
                        Text(
                          '• 572K Members',
                          style: GoogleFonts.robotoFlex(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                        Spacer(),
                        Icon(
                          Icons.more_vert,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                    SizedBox(height: 4), // Add vertical spacing
                    // Posted by account name and time of post
                    Row(
                      children: [
                        Text(
                          'Posted by ',
                          style: GoogleFonts.robotoFlex(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(width: 6), // Add spacing
                        // Reuse the profile picture
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'lib/assets/neerjab.png',
                            width: 20,
                            height: 20,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 4), // Add spacing
                        Text(
                          'Neerja B',
                          style: GoogleFonts.robotoFlex(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 4), // Add spacing
                        Text(
                          ' • Yesterday', // Add time of post here
                          style: GoogleFonts.robotoFlex(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          // Main text of the post
          SizedBox(height: 10), // Add vertical spacing
          Text(
            'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.',
            style: TextStyle(fontSize: 14),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end, // Aligns the children to the end (right in LTR languages)
            children: [
              Text(
                '450 views',
                style: GoogleFonts.robotoFlex(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
            ],
          ),

          SizedBox(height: 10,),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                flex: 1,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _liked = !_liked; // Toggle liked state
                      _filterColor = _liked ? Colors.cyan : Colors.grey; // Change filter color based on liked state
                    });
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 24,
                        height: 24,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _liked ? Colors.cyan : Colors.grey, // Conditional color based on _liked state
                        ),
                        child: Icon(
                          Icons.thumb_up,
                          color: Colors.white,
                          size: 16,
                        ),
                      ),
                      SizedBox(width: 4), // Add spacing between icon and text
                      Text(
                        '120',
                        style: TextStyle(color: _filterColor),
                      ),
                    ],
                  ),
                ),
              ),

              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ColorFiltered(
                      colorFilter: ColorFilter.mode(
                        Colors.grey,
                        BlendMode.srcIn,
                      ),
                      child: Image.asset(
                        'lib/icons/comment.png',
                        width: 24, // Adjust width as needed
                        height: 24, // Adjust height as needed
                        // Add your other image properties here
                      ),
                    ),

                    SizedBox(width: 4), // Add spacing between icon and text
                    Text(
                      '23',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ColorFiltered(
                      colorFilter: ColorFilter.mode(
                        Colors.grey,
                        BlendMode.srcIn,
                      ),
                      child: Image.asset(
                        'lib/icons/share.png',
                        width: 24, // Adjust width as needed
                        height: 24, // Adjust height as needed
                        // Add your other image properties here
                      ),
                    ),
                    SizedBox(width: 4), // Add spacing between icon and text
                    Text(
                      '45',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          ),



          SizedBox(height: 10), // Add space between posts
          Container(
            height: 5,
            width: double.infinity,
            color: Colors.grey[200], // Lighter background color
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}

