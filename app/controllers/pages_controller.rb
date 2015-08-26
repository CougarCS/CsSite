class PagesController < ApplicationController
  def home
    @events = Event.all.order("date DESC")
  end

  def career
  end

  def about
  end

  def members
  end

  def tutoring
    @tutors =  TutoringTeacher.all
  end

  def contact
  end

  def sponsors
    
  end
end
