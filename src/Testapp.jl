module Testapp

using Logging, LoggingExtras

function main()
  Base.eval(Main, :(const UserApp = Testapp))

  include(joinpath("..", "genie.jl"))

  Base.eval(Main, :(const Genie = Testapp.Genie))
  Base.eval(Main, :(using Genie))
end; main()

end
