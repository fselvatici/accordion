<%@ taglib uri="http://www.zkoss.org/dsp/web/core" prefix="c" %>

/**************************************** Stitch */
.z-accordion-stitch {
    position: relative;
    padding: 5px 0 5px 5px;
    border: 11px solid #353535;
    background: #353535;
    -webkit-box-shadow: 0 -1px 0 #5b5b5b inset, 0 5px 15px rgba(0, 0, 0, 0.4); 
    -moz-box-shadow: 0 -1px 0 #5b5b5b inset, 0 5px 15px rgba(0, 0, 0, 0.4); 
    -o-box-shadow: 0 -1px 0 #5b5b5b inset, 0 5px 15px rgba(0, 0, 0, 0.4);
    box-shadow: 0 -1px 0 #5b5b5b inset, 0 5px 15px rgba(0, 0, 0, 0.4);
}
.z-accordion-stitch:before { 
    content: ''; 
    width: 100%; 
    height: 100%; 
    position: absolute; 
    top: -9px; 
    left: -9px; 
    background: #353535; 
    border-width: 9px;     
    -webkit-border-image: url(${c:encodeURL('~./img/bg_stitch.png')}) 9 repeat; 
    -moz-border-image: url(${c:encodeURL('~./img/bg_stitch.png')}) 9 repeat;
    -o-border-image: url(${c:encodeURL('~./img/bg_stitch.png')}) 9 repeat;
    border-image: url(${c:encodeURL('~./img/bg_stitch.png')}) 9 repeat;   
}
.z-accordion-stitch .slide > h2 { background: #353535 }
.z-accordion-stitch .slide > h2 span {
    height: auto;
    padding-right: 5%;
    color: white;
    text-shadow: -1px 1px 0 #5b5b5b;
    border-width: 9px; 
    background-image: url(${c:encodeURL('~./img/bg_noise.png')});
    margin-top: 0;
    -webkit-border-image: url(${c:encodeURL('~./img/bg_stitch.png')}) 9 repeat; 
    -moz-border-image: url(${c:encodeURL('~./img/bg_stitch.png')}) 9 repeat;
    -o-border-image: url(${c:encodeURL('~./img/bg_stitch.png')}) 9 repeat;
    border-image: url(${c:encodeURL('~./img/bg_stitch.png')}) 9 repeat;
}
.z-accordion-stitch .slide > h2.selected:after { 
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
    -webkit-border-image: url(${c:encodeURL('~./img/bg_stitch.png')}) 9 repeat; 
    -moz-border-image: url(${c:encodeURL('~./img/bg_stitch.png')}) 9 repeat;
    -o-border-image: url(${c:encodeURL('~./img/bg_stitch.png')}) 9 repeat;
    border-image: url(${c:encodeURL('~./img/bg_stitch.png')}) 9 repeat;
    background-image: url(${c:encodeURL('~./img/bg_noise.png')});  
}

.z-accordion-stitch .slide:nth-child(1) > h2 span, .z-accordion-stitch .slide:nth-child(1) > h2:after { background-color: #c25252 }
.z-accordion-stitch .slide:nth-child(2) > h2 span, .z-accordion-stitch .slide:nth-child(2) > h2:after { background-color: #ca9859 }
.z-accordion-stitch .slide:nth-child(3) > h2 span, .z-accordion-stitch .slide:nth-child(3) > h2:after { background-color: #96ba5f }
.z-accordion-stitch .slide:nth-child(4) > h2 span, .z-accordion-stitch .slide:nth-child(4) > h2:after { background-color: #59abb7 }
.z-accordion-stitch .slide:nth-child(5) > h2 span, .z-accordion-stitch .slide:nth-child(5) > h2:after { background-color: #bb6098 }
.z-accordion-stitch .slide > h2 b { top: 19%; color: white; text-shadow: 1px 1px 0 #5b5b5b }
.z-accordion-stitch .slide > div { margin-right: 6px }
.z-accordion-stitch.rounded > ol { -webkit-border-radius: 0; -moz-border-radius: 0; -ms-border-radius: 0; border-radius: 0 }
