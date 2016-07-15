`bash` script to detect whether a file ends with an open php block

for more info, see [this stackoverflow question][1]

# Usage

    ./closed-php.bash <filename>

exit return code:

* 0 if closed
* 1 if open

verbose usage:

    ./closed-php.bash <filename> -v

# Testing

PHP files in `tests` folder are named by convention:

    <test number>.<open/closed>.php

usage:

    ./test.bash

or shortcut:

    ./t

verbose usage:

    ./test.bash -v

since there's a lot of output, you probably want to pipe this to `less`

    ./test.bash -v | less

or shortcut:

    ./v

[1]: http://stackoverflow.com/q/38385404/4233593
