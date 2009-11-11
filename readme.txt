This code base contains examples from the presentation given to the MDCFUG on Nov 10, 2009.

Event Information: http://mdcfug.org/showevent.cfm?eventid=367

Slides and Speaker Notes:  http://bit.ly/3zGlrt
Outline: http://bit.ly/2uRcDx
Online Recording: waiting for url will add here

Steps:

Slide 7:  
1. unzip CFWheels and move files to your webroot
2. load congratulations page (example: http://localhost/ )
3. show datsource name convention and set it to our datasource

Slide 8:
1. Download Scaffolding plugin from http://cfwheels.org/plugins
2. Place zip in the plugins folder
3. Reload CFWheels and click on Scaffolding link
4. Load mySql.sql script to create tables
6. Run scaffolding plugin to create model, views, and controller
7. Add record, look at the interface created (example: http://localhost/index.cfm/evals )

Slide 9:
1. Examine controller created at controllers/eval.cfc
2. Change to match demo file Evals1.cfc

Slide 10:
1. Examine view files at views/evals
2. Change new.cfm to match new1.cfm
3. Change views/layout.cfm to match layout1.cfm
4. Change controllers/Evals.cfc to match Evals2.cfc

Slide 11:
1. Change files to match index1.cfm, models/Eval2.cfc, and controllers/Eval.cfc
2. Change models/Eval.cfc and views/evals/index.cfm to the final in our example code models/Eval.cfc and views/evals/index.cfm

Slide 12:
1. Copy over images, javascripts, and stylesheets from our example code into your webroot.
2. Change views/layout.cfm to match views/layout2.cfm of our example code
3. Change views/evals/index.cfm to match views/evals/index.cfm of our example code
4. Change views/layout.cfm to match views/layout.cfm of our example code
5. Change config/routing.cfm to match config/routing.cfm of our example code


