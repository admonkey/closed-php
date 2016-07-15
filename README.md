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

verbose usage:

    ./test.bash -v

[1]: http://stackoverflow.com/q/38385404/4233593
