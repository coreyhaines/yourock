require 'sinatra'

def sayit(text)
  <<-yourock
<html>
<head>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-596929-9', 'auto');
  ga('require', 'displayfeatures');
  ga('send', 'pageview');
</script>
</head>
<body>#{text}</body>
</html>
yourock
end

get '/' do
  sayit "You can use yourock by appending someone's name to the URL and sending the link. For example: <a href='#{request.url}sarah'>#{request.url}sarah</a>"
end

get '/:name' do
  sayit "Hello, #{params[:name]}! YOU ROCK!"
end
