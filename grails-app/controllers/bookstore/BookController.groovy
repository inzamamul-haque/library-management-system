package bookstore

import javax.transaction.Transactional

import static org.springframework.http.HttpStatus.*

class BookController {

    BookService bookService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
       def bookList = Book.findAll();
        render(view: 'index', model: [list: bookList])
    }

    def show(Long id) {
        respond bookService.get(id)
    }

    def create() {
        render(view: "create");
    }
    @Transactional
    def save() {
       def book = new Book(params);
        def result = book.save();
        if(result){
            redirect(action: "index")
        }
        else {
            render(view:"/book/create" )
        }
    }

    def edit(Long id) {
        respond bookService.get(id)
    }

    def update(Book book) {

    }

    def delete(Long id) {
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'book.label', default: 'Book'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }


}
