 
##[Implements a `block` that acts like a `func`. That is, a `block` that
returns a value and has no side effects.]##

template funcBlock*(returning, body: untyped): untyped =
  ## A specialization of the `block` keyword.
  ## Returns a value of type `returning`, and has no side effects.
  runnableExamples:
    proc myProc(): string =
      let a = funcBlock(int):
        # Each funcBlock has its own internal result variable.
        result = 0
        for c in '0' .. '9':
          result += 1
        assert result == 10

      # After exiting the funcBlock's scope, the old result variable is
      # forgotten and stored into the declared variable.
      assert result == ""
      assert a == 10
    assert myProc() == ""

  block:
    func insideFuncBlock(): returning =
      body
    insideFuncBlock()

template procBlock*(returning, body: untyped): untyped =
  ## A specialization of the `block` keyword.
  ## Returns a value of type `returning`.
  runnableExamples:
    proc myProc(): string =
      let a = procBlock(int):
        # Each procBlock has its own internal result variable.
        result = 0
        for c in '0' .. '9':
          result += 1
        assert result == 10

      # After exiting the procBlock's scope, the old result variable is
      # forgotten and stored into the declared variable.
      assert result == ""
      assert a == 10
    assert myProc() == ""

  block:
    proc insideFuncBlock(): returning =
      body
    insideFuncBlock()
