package bookstore

class AuthenticationController {

    def index() {
        render (view:"/member/login")

    }
    def authenticate(){

        def user = Member.findByUserNameAndPassword(params.userName, params.password);
        if(user)
        {
            session.user = user;
            flash.message = "Hello ${user.name} "
            redirect(controller: "book", action:"index");
            //render(view:"testPage")
            //redirect(action:"login")

        }
        else
        {
            flash.message = "Sorry! Incorrect Username or Password"
            redirect(controller: "authentication")
        }

    }

    def logout()
    {
        //flash.message = "Goodbye ${user.fullName}"
        session.invalidate();
        render(view: "/index")
    }

}
