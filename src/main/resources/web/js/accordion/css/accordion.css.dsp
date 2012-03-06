<%--
	Here you could do any styling job you want , all CSS stuff.
--%>
<%@ taglib uri="http://www.zkoss.org/dsp/web/core" prefix="c" %>

.z-accordion{
     color:black;
}

.accordion { text-align: left; font: 'Helvetica Neue', Verdana, Arial, sans-serif }
.accordion > ol { position: relative; overflow: hidden; height: 100%; margin: 0; padding: 0; list-style-type: none }
.accordion .slide > h2 { 
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
	-ms-filter: "progid:DXImageTransform.Microsoft.BasicImage(rotation=3)";
    filter: progid:DXImageTransform.Microsoft.BasicImage(rotation=3); 
}
.accordion .slide > h2 span { 
    display: block; 
    padding-right: 8%; 
    text-align: right; 
    height: 90%;
    margin-top: 5px; 
    -moz-user-select: none;
    -khtml-user-select: none;
    user-select: none;
}
.accordion .slide > h2 b { 
    display: inline-block; 
    position: absolute; 
    top: 13%; 
    left: 10%; 
    text-align: center; 
    -webkit-transform: rotate(90deg); 
    -moz-transform: rotate(90deg); 
    -o-transform: rotate(90deg); 
    transform: rotate(90deg);
	-ms-filter: "progid:DXImageTransform.Microsoft.BasicImage(rotation=1)";
    filter: progid:DXImageTransform.Microsoft.BasicImage(rotation=1);
}
.accordion .slide > h2:hover { cursor: pointer }
.accordion .slide > div { height: 100%; position: absolute; top: 0; z-index: 10; overflow: hidden; background: white }
.accordion noscript p { padding: 10px; margin: 0; background: white }

/****************************************** Basic */
.basic .slide > h2 { background: #333; color: white; line-height: 225% }

/****************************************** Dark */
.dark { 
    border: 9px solid #353535; 
    border-bottom-width: 8px; 
    padding: 5px 5px 6px 0; 
    background: #030303; 
    -webkit-box-shadow: 0 -1px 0 #5b5b5b inset, 0 5px 15px rgba(0, 0, 0, 0.4); 
    -moz-box-shadow: 0 -1px 0 #5b5b5b inset, 0 5px 15px rgba(0, 0, 0, 0.4); 
    -ms-box-shadow: 0 -1px 0 #5b5b5b inset, 0 5px 15px rgba(0, 0, 0, 0.4);
    -o-box-shadow: 0 -1px 0 #5b5b5b inset, 0 5px 15px rgba(0, 0, 0, 0.4);
	box-shadow: 0 -1px 0 #5b5b5b inset, 0 5px 15px rgba(0, 0, 0, 0.4);
}
.dark .slide > h2 { background: #030303; text-shadow: 0 -1px 0 #030303; line-height: 265% }
.dark .slide > h2 span { background: #353535; color: white }
.dark .slide > h2 b { background: #353535; color: #030303; text-shadow: -1px 1px 0 #5b5b5b }
.dark .slide > h2.selected span, .dark .slide > h2.selected span:hover { 
    background: #353535;
    background: -moz-linear-gradient(left,  #353535 0%, #555555 100%);
    background: -webkit-gradient(linear, left top, right top, color-stop(0%,#353535), color-stop(100%,#555555));
    background: -webkit-linear-gradient(left,  #353535 0%,#555555 100%);
    background: -o-linear-gradient(left,  #353535 0%,#555555 100%);
    background: -ms-linear-gradient(left,  #353535 0%,#555555 100%);
    background: linear-gradient(left,  #353535 0%,#555555 100%);
    filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#353535', endColorstr='#555555',GradientType=1 );
}
.dark .slide > h2.selected b { 
    background: #383838;
    background: -moz-linear-gradient(top,  #3a3a3a 0%, #363636 100%);
    background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#3a3a3a), color-stop(100%,#363636));
    background: -webkit-linear-gradient(top,  #3a3a3a 0%,#363636 100%);
    background: -o-linear-gradient(top,  #3a3a3a 0%,#363636 100%);
    background: -ms-linear-gradient(top,  #3a3a3a 0%,#363636 100%);
    background: linear-gradient(top,  #3a3a3a 0%,#363636 100%);
}
.dark .slide > div { background: #030303; margin-left: 5px }

/***************************************** Light */
.light { 
    border: 9px solid white; 
    border-bottom-width: 8px; 
    padding: 5px 5px 6px 0; 
    background: #a0a0a0; 
    -webkit-box-shadow: -1px -1px 0 #c0c0c0, 1px 1px 0 #c0c0c0, 0 5px 15px rgba(0, 0, 0, 0.4); 
    -moz-box-shadow: -1px -1px 0 #c0c0c0, 1px 1px 0 #c0c0c0, 0 5px 15px rgba(0, 0, 0, 0.4);
    -ms-box-shadow: -1px -1px 0 #c0c0c0, 1px 1px 0 #c0c0c0, 0 5px 15px rgba(0, 0, 0, 0.4);    
    -o-box-shadow: -1px -1px 0 #c0c0c0, 1px 1px 0 #c0c0c0, 0 5px 15px rgba(0, 0, 0, 0.4); 
	box-shadow: -1px -1px 0 #c0c0c0, 1px 1px 0 #c0c0c0, 0 5px 15px rgba(0, 0, 0, 0.4);
}
.light .slide > h2 { background: #a0a0a0; text-shadow: 0 -1px 0 white; line-height: 265% }
.light .slide > h2 span { 
    background: #fcfcfc;
    background: -moz-linear-gradient(left,  #fcfcfc 0%, #ededed 100%);
    background: -webkit-gradient(linear, left top, right top, color-stop(0%,#fcfcfc), color-stop(100%,#ededed));
    background: -webkit-linear-gradient(left,  #fcfcfc 0%,#ededed 100%);
    background: -o-linear-gradient(left,  #fcfcfc 0%,#ededed 100%);
    background: -ms-linear-gradient(left,  #fcfcfc 0%,#ededed 100%);
    background: linear-gradient(left,  #fcfcfc 0%,#ededed 100%);
    filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#fcfcfc', endColorstr='#ededed',GradientType=1 );
    -webkit-box-shadow: -1px -1px 0 #909090 inset, 1px 1px 0 #909090 inset; 
    -moz-box-shadow: -1px -1px 0 #909090 inset, 1px 1px 0 #909090 inset;
    -o-box-shadow: -1px -1px 0 #909090 inset, 1px 1px 0 #909090 inset;
	box-shadow: -1px -1px 0 #909090 inset, 1px 1px 0 #909090 inset;
    color: #909090;
}
.light .slide > h2 b { background: #ffffff; color: #909090; text-shadow: -1px 1px 0 white }
.light .slide > h2.selected span, .light .slide h2.selected span:hover, .light .slide > h2.selected b { background: #ffffff }
.light .slide > div { background: #a0a0a0; margin-left: 5px }

/**************************************** Stitch */
.stitch {
    position: relative;
    padding: 5px 0 5px 5px;
    border: 11px solid #353535;
    background: #353535;
    -webkit-box-shadow: 0 -1px 0 #5b5b5b inset, 0 5px 15px rgba(0, 0, 0, 0.4); 
    -moz-box-shadow: 0 -1px 0 #5b5b5b inset, 0 5px 15px rgba(0, 0, 0, 0.4); 
    -o-box-shadow: 0 -1px 0 #5b5b5b inset, 0 5px 15px rgba(0, 0, 0, 0.4);
    box-shadow: 0 -1px 0 #5b5b5b inset, 0 5px 15px rgba(0, 0, 0, 0.4);
}
.stitch:before { 
    content: ''; 
    width: 100%; 
    height: 100%; 
    position: absolute; 
    top: -9px; 
    left: -9px; 
    background: #353535; 
    border-width: 9px;     
    -webkit-border-image: url('bg_stitch.png') 9 repeat; 
    -moz-border-image: url('bg_stitch.png') 9 repeat;
    -o-border-image: url('bg_stitch.png') 9 repeat;
    border-image: url('bg_stitch.png') 9 repeat;   
}
.stitch .slide > h2 { background: #353535 }
.stitch .slide > h2 span {
    height: auto;
    padding-right: 5%;
    color: white;
    text-shadow: -1px 1px 0 #5b5b5b;
    border-width: 9px; 
    background-image: url('bg_noise.png');
    margin-top: 0;
    -webkit-border-image: url('bg_stitch.png') 9 repeat; 
    -moz-border-image: url('bg_stitch.png') 9 repeat;
    -o-border-image: url('bg_stitch.png') 9 repeat;
    border-image: url('bg_stitch.png') 9 repeat;
}
.stitch .slide > h2.selected:after { 
    content: ''; 
    display: block; 
    height: 11px; 
    width: 11px; 
    position: absolute; 
    bottom: -3px; 
    right: 38px;
    -webkit-transform: rotate(45deg); 
    -moz-transform: rotate(45deg); 
    -o-transform: rotate(45deg); 
    transform: rotate(45deg);
	-ms-filter: "progid:DXImageTransform.Microsoft.BasicImage(rotation=2)";
    filter: progid:DXImageTransform.Microsoft.BasicImage(rotation=2);
    border-width: 9px;
    border-top: 0;
    border-left: 0; 
    -webkit-border-image: url('bg_stitch.png') 9 repeat; 
    -moz-border-image: url('bg_stitch.png') 9 repeat;
    -o-border-image: url('bg_stitch.png') 9 repeat;
    border-image: url('bg_stitch.png') 9 repeat;
    background-image: url('bg_noise.png');  
}

.stitch .slide:nth-child(1) > h2 span, .stitch .slide:nth-child(1) > h2:after { background-color: #c25252 }
.stitch .slide:nth-child(2) > h2 span, .stitch .slide:nth-child(2) > h2:after { background-color: #ca9859 }
.stitch .slide:nth-child(3) > h2 span, .stitch .slide:nth-child(3) > h2:after { background-color: #96ba5f }
.stitch .slide:nth-child(4) > h2 span, .stitch .slide:nth-child(4) > h2:after { background-color: #59abb7 }
.stitch .slide:nth-child(5) > h2 span, .stitch .slide:nth-child(5) > h2:after { background-color: #bb6098 }
.stitch .slide > h2 b { top: 19%; color: white; text-shadow: 1px 1px 0 #5b5b5b }
.stitch .slide > div { margin-right: 6px }
.stitch.rounded > ol { -webkit-border-radius: 0; -moz-border-radius: 0; -ms-border-radius: 0; border-radius: 0 }

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