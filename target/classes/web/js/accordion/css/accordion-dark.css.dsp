/****************************************** Dark */
.z-accordion-dark { 
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
.z-accordion-dark .slide > h2 { background: #030303; text-shadow: 0 -1px 0 #030303; line-height: 265% }
.z-accordion-dark .slide > h2 span { background: #353535; color: white }
.z-accordion-dark .slide > h2 b { background: #353535; color: #030303; text-shadow: -1px 1px 0 #5b5b5b }
.z-accordion-dark .slide > h2.selected span, .z-accordion-dark .slide > h2.selected span:hover { 
    background: #353535;
    background: -moz-linear-gradient(left,  #353535 0%, #555555 100%);
    background: -webkit-gradient(linear, left top, right top, color-stop(0%,#353535), color-stop(100%,#555555));
    background: -webkit-linear-gradient(left,  #353535 0%,#555555 100%);
    background: -o-linear-gradient(left,  #353535 0%,#555555 100%);
    background: -ms-linear-gradient(left,  #353535 0%,#555555 100%);
    background: linear-gradient(left,  #353535 0%,#555555 100%);
    filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#353535', endColorstr='#555555',GradientType=1 );
}
.z-accordion-dark .slide > h2.selected b { 
    background: #383838;
    background: -moz-linear-gradient(top,  #3a3a3a 0%, #363636 100%);
    background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#3a3a3a), color-stop(100%,#363636));
    background: -webkit-linear-gradient(top,  #3a3a3a 0%,#363636 100%);
    background: -o-linear-gradient(top,  #3a3a3a 0%,#363636 100%);
    background: -ms-linear-gradient(top,  #3a3a3a 0%,#363636 100%);
    background: linear-gradient(top,  #3a3a3a 0%,#363636 100%);
}
.z-accordion-dark .slide > div { background: #030303; margin-left: 5px }
