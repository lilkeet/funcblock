# Package

version       = "0.1.0"
author        = "lilkeet"
description   = "Implements a block that returns a value with no side effects."
license       = "WTFPL"


# Dependencies

#requires "nim >= 2.0.0"


task test, "Runs the tests via Testament.":
  exec "testament pattern tests/*.nim"
