# FrontendTechnologies

Difference between Windows.load and document.ready?
----------------------------------------------------
->$(window).load event is fired after whole content (including css, images etc..) is loaded. Let's use in your case to save render processing. In simple words, window.load is called when all content of window is loaded
->whereas document.ready is called when DOM is loaded and document structure is ready

*)jQuery is a JavaScript Library.


windows.load() vs document.ready():
===================================
$(window).load event is fired after whole content (including css, images etc..) is loaded.
Let's use in your case to save render processing. In simple words, window.load is called when all content of window is loaded whereas document.ready is called when DOM is loaded and document structure is ready

CSS:
====
CSS Selectors:
==============
        #id,.class,element,attribute...

order of selectors(HighestPriority);
====================================
      !important > element > id > class > attribute(div)

difference between padding and margin:
======================================
So the difference between margin and padding is that while padding deals with the inner space, margin deals with the outer space to the next outer element. Padding is space inside the border, whereas Margin is space outside the border.

jQuery Selectors:
=================
->jQuery selectors allow you to select and manipulate HTML element(s).
element selector
id selector
class selector;

nth-child selector:
$("p:nth-child(3)").css("background-color", "yellow");



jQuery Event Methods:
=====================
          mouseevents           :click,dblclick,mouseenter,mouseleave;
          Keyboard events       :keypress,keydown,keyup;
          Form events           :submit,change,foucs,blur;
          Document/Window Events:load,resize,scroll,unload



jQuery - The noConflict() Method
================================
        What if other JavaScript frameworks also use the $ sign as a shortcut?

        If two different frameworks are using the same shortcut, one of them might stop working.

        The jQuery team have already thought about this, and implemented the noConflict() method.


        var jq = $.noConflict();
        jq(document).ready(function(){
          jq("button").click(function(){
            jq("p").text("jQuery is still working!");
          });
        });


Angularjs:
-----------
        AngularJS is a JavaScript framework.It can be added to HTML page with a <script> tag;

        The ng-app directive tells AngularJS that the <div> element is the "owner" of an AngularJS application.

        The ng-model directive binds the value of the input field to the application variable name.

        The ng-bind directive binds the content of the <p> element to the application variable name

        You can use data-ng-, instead of ng-, if you want to make your page HTML valid.


Two-way Binding:
================



Differnce between ng-if and ng-show:
====================================



Differnce betwee factory,service and provider in AngularJS:
===========================================================


Differnce between $scope and $rootScope:
=========================================



What is the LifeCycle of AngularJS:
===================================
$digest,$watch,$apply;


Angularjs pre-defined filters and custom filters:
=================================================
