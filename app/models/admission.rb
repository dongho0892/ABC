class Admission < ApplicationRecord
    # 양쪽에 걸침
    belongs_to  :user       # 캐시 지정 true : 자동으로 업데이트가 됨.    
    belongs_to  :chat_room, counter_cache: true  
        
end
