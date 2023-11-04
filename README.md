# funcblock

A `funcBlock` is a a block that returns a value and has no side effects.
Also implemented is a `procBlock`: a block that returns a value and may have side effects.

### Prerequisites

Nim compiler. Minimum version untested.
Nimble package manager. Minimum version also untested.

### Installing

Type `nimble install funcblock` into your cli and follow the on-screen instructions.

### Usage

```nim
import funcblock

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
```

## License

This project is licensed under the WTFPL License - see the [LICENSE.txt](LICENSE.txt) file for details.

## Authors

* **LilKeet** - *Initial work* - [LilKeet](https://github.com/lilkeet)

## Contributing

Idk just submit an issue or PR or sum. Or make ur own.
