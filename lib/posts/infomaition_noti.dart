class Noti {
  final int id;
  final String imageprofile;
  final String username;
  final String detail;

  Noti(this.id, this.imageprofile, this.username, this.detail);
}

List<Noti> notis = [
  Noti(
    1,
    "https://steamuserimages-a.akamaihd.net/ugc/1692772971374892784/C764A005644E2325F4563927CF997158A4FADB96/?imw=512&&ima=fit&impolicy=Letterbox&imcolor=%23000000&letterbox=false",
    "John Doe",
    "My Cat don't moved for 3 days. What's wrong with My Cat ?",
  ),
  Noti(
    2,
    "https://steamuserimages-a.akamaihd.net/ugc/1692772971374892784/C764A005644E2325F4563927CF997158A4FADB96/?imw=512&&ima=fit&impolicy=Letterbox&imcolor=%23000000&letterbox=false",
    "John Doe",
    "What's wrong with My Cat......my Cat face has been swollen for a week and hasn't healed",
  ),
];

List<Noti> notifollow = [
  Noti(
    1,
    "data:image/jpeg;base64,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",
    "Fatima",
    "์Nice to meet you",
  ),
  Noti(
    2,
    "https://preview.redd.it/r3lcc7gf64791.png?width=540&format=png&auto=webp&s=9d32ec46f884486fd59dfd01453bf5d07bf30d75",
    "Melvin",
    "Nice to meet you",
  ),
];

List<Noti> notiold = [
  Noti(
    1,
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGYGdPw_U3tYCNYdoncCjhKxlDhaNFjBGJvA&usqp=CAU",
    "Jason Bartell",
    "Am so sad everyday",
  ),
  Noti(
    2,
    "https://i.kym-cdn.com/photos/images/facebook/000/217/594/FIHci.jpg",
    "Nelson Anderson",
    "Am so sorry",
  ),
];

List<Noti> notiinvolved = [
  Noti(
    1,
    "https://cdn.fstoppers.com/styles/large-16-9/s3/lead/2018/12/cat-parody-instagram-removal.jpg",
    "Wilson Balistreri",
    "Cooking For you",
  ),
  Noti(
    2,
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgVweoaoCdjSr0lULBdav5GSgNeaux7P-hmw&usqp=CAU",
    "Rodney Trantow",
    "Cartoon For you",
  ),
];