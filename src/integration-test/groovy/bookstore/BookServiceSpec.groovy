package bookstore

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class BookServiceSpec extends Specification {

    BookService bookService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new Book(...).save(flush: true, failOnError: true)
        //new Book(...).save(flush: true, failOnError: true)
        //Book book = new Book(...).save(flush: true, failOnError: true)
        //new Book(...).save(flush: true, failOnError: true)
        //new Book(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //book.id
    }

    void "test get"() {
        setupData()

        expect:
        bookService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<Book> bookList = bookService.list(max: 2, offset: 2)

        then:
        bookList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        bookService.count() == 5
    }

    void "test delete"() {
        Long bookId = setupData()

        expect:
        bookService.count() == 5

        when:
        bookService.delete(bookId)
        sessionFactory.currentSession.flush()

        then:
        bookService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        Book book = new Book()
        bookService.save(book)

        then:
        book.id != null
    }
}
