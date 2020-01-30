package bookstore

class Book {

    String name;
    String author;
    Date date;
    Double price;
    String isbn;

    static constraints = {
        name(nullable: true);
        author(nullable: true);
        date(nullable: true);
        price(nullable: true);
        isbn(nullable: true);
    }
}
