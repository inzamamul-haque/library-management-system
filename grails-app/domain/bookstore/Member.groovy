package bookstore

class Member {
  String name;
  String userName;
    String password;
    String email;
    String address;
    String mobile;

    static constraints = {
        name(nullable: true);
        userName(nullable: true);
        password(nullable: true);
        email(nullable: true);
        address(nullable: true);
        mobile(nullable: true);
    }
}
