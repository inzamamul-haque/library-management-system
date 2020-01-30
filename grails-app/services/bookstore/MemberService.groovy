package bookstore

import grails.gorm.services.Service

@Service(Member)
interface MemberService {

    Member get(Serializable id)

    List<Member> list(Map args)

    Long count()

    void delete(Serializable id)

    Member save(Member member)

}