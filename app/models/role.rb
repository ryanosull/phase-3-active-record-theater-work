class Role < ActiveRecord::Base

    has_many  :auditions

    def actors
        auditions.map {|audition| audition.actor}
    end

    def locations
        auditions.map {|audition| audition.location}
    end

    def lead
        lead_actor = auditions.find_by(hired: true)
        lead_actor ? lead_actor : 'no actor has been hired for this role'
    end

    def understudy
        role_auditions = auditions.where(hired: true)
        role_auditions.length > 1 ? role_auditions.last :  'no actor has been hired for understudy for this role'
    end


    
end