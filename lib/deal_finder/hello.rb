# It's adviced to use Module over Class (so no need for instantiation in module-require by gem users),
# but this is using a Class to show u can do so too
class Hello
  def self.greet(name = 'World')
  	"Hello #{name}!"
  end
end