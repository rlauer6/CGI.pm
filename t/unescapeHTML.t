use Test::More tests => 5;
use CGI 'unescapeHTML';

is( unescapeHTML( '&amp;'), '&', 'unescapeHTML: &');
is( unescapeHTML( '&quot;'), '"', 'unescapeHTML: "');
is( unescapeHTML( '&#60;'), '<', 'unescapeHTML: < (using a numbered sequence)'); 
is( unescapeHTML( 'Bob & Tom went to the store; Where did you go?'), 
    'Bob & Tom went to the store; Where did you go?', 'unescapeHTML: a case where &...; should not be escaped.');
is( unescapeHTML( 'This_string_contains_both_escaped_&_unescaped_&lt;entities&gt;'), 
    'This_string_contains_both_escaped_&_unescaped_<entities>', 'unescapeHTML: partially-escaped string.');