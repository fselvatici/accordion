<%--
	Here you could do any styling job you want , all CSS stuff.
--%>
<%@ taglib uri="http://www.zkoss.org/dsp/web/core" prefix="c" %>


.z-accordion { text-align: left; font: 'Helvetica Neue', Verdana, Arial, sans-serif }
.z-accordion > ol { position: relative; overflow: hidden; height: 100%; margin: 0; padding: 0; list-style-type: none }
.z-accordion .slide > h2 { 
	color: black;
    font-size: 16px;	 
	font-weight: normal;
	margin: 0; 
	z-index: 100; 
	position: absolute; 
	top: 0; 
	left: 0; 
	-webkit-transform: translateX(-100%) rotate(-90deg); 
	-webkit-transform-origin: right top; 
	-moz-transform: translateX(-100%) rotate(-90deg);
	-moz-transform-origin: right top; 
	-o-transform: translateX(-100%) rotate(-90deg); 
	-o-transform-origin: right top; 
	transform: translateX(-100%) rotate(-90deg); 
	transform-origin: right top;
	-ms-filter: "progid:DXImageTransform.Microsoft.z-accordion-basicImage(rotation=3)";
    filter: progid:DXImageTransform.Microsoft.z-accordion-basicImage(rotation=3); 
}
.z-accordion .slide > h2 span { 
    display: block; 
    padding-right: 8%; 
    text-align: right; 
    height: 90%;
    margin-top: 5px; 
    -moz-user-select: none;
    -khtml-user-select: none;
    user-select: none;
}
.z-accordion .slide > h2 b { 
    display: inline-block; 
    position: absolute; 
    top: 13%; 
    left: 10%; 
    text-align: center; 
    -webkit-transform: rotate(90deg); 
    -moz-transform: rotate(90deg); 
    -o-transform: rotate(90deg); 
    transform: rotate(90deg);
	-ms-filter: "progid:DXImageTransform.Microsoft.z-accordion-basicImage(rotation=1)";
    filter: progid:DXImageTransform.Microsoft.z-accordion-basicImage(rotation=1);
}
.z-accordion .slide > h2:hover { cursor: pointer }
.z-accordion .slide > div { height: 100%; position: absolute; top: 0; z-index: 10; overflow: hidden; background: white }
.z-accordion noscript p { padding: 10px; margin: 0; background: white }

/****************************************** Basic */
.z-accordion-basic .slide > h2 { background: #333; color: white; line-height: 225% }


/*************************************** Rounded */
.rounded, .rounded > ol { -webkit-border-radius: 6px; -moz-border-radius: 6px; -ms-border-radius: 6px; border-radius: 6px }
.rounded .slide > h2 span { -webkit-border-radius: 4px; -moz-border-radius: 4px; -ms-border-radius: 4px; border-radius: 4px }

/******************************************** IE */
.ie .slide > h2 b { top: 42%; left: 5% }
.ie9 .slide > h2 { filter: none; -ms-transform: translateX(-100%) rotate(-90deg); -ms-transform-origin: right top }
.ie.dark .slide > h2 b, .ie.light .slide > h2 b { top: 44% }
.ie9.dark .slide > h2.selected span, .ie9.dark .slide > h2.selected span:hover, .light .slide > h2 span { filter: none }
.ie9.stitch { box-shadow: 0 5px 15px rgba(0, 0, 0, 0.4); }

.ie.stitch .slide > h2 { line-height: 265% }
.ie.stitch .slide > h2 span { height: 89%; padding-right: 8% }
.ie.stitch .slide > h2 b { top: 33% } 
.ie.stitch .slide > h2.selected:after { display: none }
.ie.stitch .slide-0 > h2 span { background-color: #c25252 }
.ie.stitch .slide-1 > h2 span { background-color: #ca9859 }
.ie.stitch .slide-2 > h2 span { background-color: #96ba5f }
.ie.stitch .slide-3 > h2 span { background-color: #59abb7 }
.ie.stitch .slide-4 > h2 span { background-color: #bb6098 }