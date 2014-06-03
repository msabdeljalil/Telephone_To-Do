class Task
  attr_reader :title, :description

  def initialize(args)
    @title = args[:title]
    @description = args[:description]
  end

  # def title
  #   "Bull shit"
  # end

  # def description
  #   "Drive all the bulls out of Ireland"
  # end

  def status
    "incomplete"
  end

  def created_at
    Time.now
  end
end
