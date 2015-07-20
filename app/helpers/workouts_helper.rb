module WorkoutsHelper
  def exercises_with_links(exercises)
    exercises.map {|x| link_to(x.name, x)}.join(', ').html_safe
  end
end
