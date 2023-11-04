# To run these tests, simply execute `nimble test`.

discard """
  action: "run"
  exitcode: 0
  batchable: true
  joinable: true
  valgrind: true
  timeout: 3.0
  targets: "c cpp objc js"
"""

import ../src/funcblock

proc main: string =
  let a = funcblock(int):
    #[A `result` var is initialized.
      It can be differentiated from another `result` variable in a higher scope
      easily by its type.
      However, you lose the ability to access a higher scope `result` of the
      same type.]#
    result = 0
    for i in 0..10:
      result.inc i
    assert result == 55

  assert a == 55
  result = $a

assert main() == "55"
