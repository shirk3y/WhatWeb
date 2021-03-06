##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "PRITLOG" do
author "Brendan Coles <bcoles@gmail.com>" # 2012-05-01
description "PRITLOG is an extremely simple, small and powerful blog system. Requires SQLite - Homepage: http://pritlog.com/fossil.cgi/home"

# Google results as at 2012-05-01 #
# 25 for "Please enable Javascript for full functionality." "Powered by Pritlog"
#  3 for inurl:"pritlog/index.php/archives"

# Dorks #
dorks [
'"Please enable Javascript for full functionality." "Powered by Pritlog"',
'inurl:"pritlog/index.php/archives"'
]

# Examples #
examples %w|
demo.opensourcecms.com/pritlog/
www.drive2.info/blog/pritlog/index.php/archives
wp10991820.wp276.webpack.hosteurope.de/blog/pritlog/index.php/archives
|

# Matches #
matches [

# No JavaScript Message
{ :text=>'<em id="jserror">Please enable Javascript for full functionality.</em>' },

# Powered by link
{ :text=>'Powered by <a href="http://pritlog.com/">Pritlog</a>' },

]

end

