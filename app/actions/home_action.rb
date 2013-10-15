require 'erb'

class HomeAction < Cramp::Action
  @@template = ERB.new(File.read(CrampSpike::Application.root('app/views/home.html.erb')))

  def start
    render @@template.result(binding)
    finish
  end
end
