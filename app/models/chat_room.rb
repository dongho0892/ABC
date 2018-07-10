class ChatRoom < ApplicationRecord

    has_many    :admissions
    has_many    :users, through: :admissions
    
    has_many    :chatchats

                   # 파라미터로 넘어온 user 객체
    def user_admit_room(user)   # self가 없으므르 인스턴스 메서드
        Admission.create(user_id: user.id, chat_room_id: self.id)
        # ChatRoom이 하나 만들어지고 나면 다음 메서드를 같이 실행한다.
    end

end
