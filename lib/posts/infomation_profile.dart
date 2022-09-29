class Postinfomation {
  final int id;
  final String imageprofile;
  final String username;
  final String detail;
  final String time;
  final String imagepost;

  Postinfomation(this.id, this.imageprofile, this.username, this.detail,
      this.time, this.imagepost);
}

List<Postinfomation> posts = [
  Postinfomation(
      1,
      "https://steamuserimages-a.akamaihd.net/ugc/1692772971374892784/C764A005644E2325F4563927CF997158A4FADB96/?imw=512&&ima=fit&impolicy=Letterbox&imcolor=%23000000&letterbox=false",
      "John Doe",
      "My Cat don't moved for 3 days. What's wrong with My Cat ?",
      "  ∙  2d",
      "null"),
    Postinfomation(
      1,
      "https://steamuserimages-a.akamaihd.net/ugc/1692772971374892784/C764A005644E2325F4563927CF997158A4FADB96/?imw=512&&ima=fit&impolicy=Letterbox&imcolor=%23000000&letterbox=false",
      "John Doe",
      "What's wrong with My Cat......my Cat face has been swollen for a week and hasn't healed",
      "  ∙  7d",
      "assets/image/profile.jpg")
    
];
