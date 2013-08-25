heroku-redirect
===============

You can deploy this application on Heroku if you want to redirect from *.herokuapp.com to somewhere else, for example when you are moving away from a free Heroku application.


	$ heroku create
	Creating ancient-bayou-9787... done, stack is cedar
	http://ancient-bayou-9787.herokuapp.com/ | git@heroku.com:ancient-bayou-9787.git
	Git remote heroku added
	
	$ git push heroku master
	[… Heroku deployment output …]
	
	$ heroku config:set REDIRECT_TARGET_URI=http://mxey.net
	Setting config vars and restarting ancient-bayou-9787... done, v4
	REDIRECT_TARGET_URI: http://mxey.net
	
	$ heroku open 
	Opening ancient-bayou-9787... done
	[now redirects to http://mxey.net]

