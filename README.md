# Usage

    ./closed-php.bash <filename>

exit return code:

* 0 if open
* 1 if closed

verbose usage:

    ./closed-php.bash <filename> -v

# Testing

PHP files in `tests` folder are named by convention:

    <test number>.<boolean = closed>

usage:

    ./test.bash

verbose usage:

    ./test.bash -v
