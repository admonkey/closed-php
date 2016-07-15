<?php
$tokens = token_get_all(file_get_contents($argv[1]));
$return = 0;
foreach ($tokens as $token) {
  if (is_array($token)) {
    if (token_name($token[0]) === 'T_CLOSE_TAG')
      $return = 0;
    elseif (token_name($token[0]) === 'T_OPEN_TAG')
      $return = 1;
  }
}
exit ($return);
