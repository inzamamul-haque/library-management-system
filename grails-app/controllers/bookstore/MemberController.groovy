package bookstore

import grails.validation.ValidationException

import javax.transaction.Transactional

import static org.springframework.http.HttpStatus.*

class MemberController {

    MemberService memberService
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
       render(view: "index")
    }

    def show(Long id) {
        respond memberService.get(id)
    }

    def create() {
        respond new Member(params)
    }

@Transactional
    def save(Member member) {
        member = new Member();
        member.name = params.name;
        member.userName = params.userName;
        member.address = params.address;
        member.password = params.password;
        member.mobile = params.mobile;
        member.email = params.email;
        def result = member.save();
        if(result){
            render(view: "/index")
        }
        else{
            render(view: "/member/index")
        }

    }

    def edit(Long id) {
        respond memberService.get(id)
    }

    def update(Member member) {
        if (member == null) {
            notFound()
            return
        }

        try {
            memberService.save(member)
        } catch (ValidationException e) {
            respond member.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'member.label', default: 'Member'), member.id])
                redirect member
            }
            '*'{ respond member, [status: OK] }
        }
    }

    def delete(Long id) {
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'member.label', default: 'Member'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
