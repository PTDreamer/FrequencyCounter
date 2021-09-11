$.fn.scrollspy=function(){},function(s,a,i,l){var c=s(a);s.fn.lazyload=function(e){function t(){var t=0;o.each(function(){var e=s(this);if(!r.skip_invisible||e.is(":visible"))if(s.abovethetop(this,r)||s.leftofbegin(this,r));else if(s.belowthefold(this,r)||s.rightoffold(this,r)){if(++t>r.failure_limit)return!1}else e.trigger("appear"),t=0})}var n,o=this,r={threshold:0,failure_limit:0,event:"scroll",effect:"show",container:a,data_attribute:"original",skip_invisible:!0,appear:null,load:null,placeholder:"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAANSURBVBhXYzh8+PB/AAffA0nNPuCLAAAAAElFTkSuQmCC"};return e&&(l!==e.failurelimit&&(e.failure_limit=e.failurelimit,delete e.failurelimit),l!==e.effectspeed&&(e.effect_speed=e.effectspeed,delete e.effectspeed),s.extend(r,e)),n=r.container===l||r.container===a?c:s(r.container),0===r.event.indexOf("scroll")&&n.bind(r.event,function(){return t()}),this.each(function(){var a=this,i=s(a);a.loaded=!1,i.attr("src")!==l&&!1!==i.attr("src")||!i.is("img")||i.attr("src",r.placeholder),i.one("appear",function(){if(!this.loaded){if(r.appear){var e=o.length;r.appear.call(a,e,r)}s("<img />").bind("load",function(){var e=i.attr("data-"+r.data_attribute);i.hide(),i.is("img")?i.attr("src",e):i.css("background-image","url('"+e+"')"),i[r.effect](r.effect_speed),a.loaded=!0;var t=s.grep(o,function(e){return!e.loaded});if(o=s(t),r.load){var n=o.length;r.load.call(a,n,r)}}).attr("src",i.attr("data-"+r.data_attribute))}}),0!==r.event.indexOf("scroll")&&i.bind(r.event,function(){a.loaded||i.trigger("appear")})}),c.bind("resize",function(){t()}),/(?:iphone|ipod|ipad).*os 5/gi.test(navigator.appVersion)&&c.bind("pageshow",function(e){e.originalEvent&&e.originalEvent.persisted&&o.each(function(){s(this).trigger("appear")})}),s(i).ready(function(){t()}),this},s.belowthefold=function(e,t){return(t.container===l||t.container===a?(a.innerHeight?a.innerHeight:c.height())+c.scrollTop():s(t.container).offset().top+s(t.container).height())<=s(e).offset().top-t.threshold},s.rightoffold=function(e,t){return(t.container===l||t.container===a?c.width()+c.scrollLeft():s(t.container).offset().left+s(t.container).width())<=s(e).offset().left-t.threshold},s.abovethetop=function(e,t){return(t.container===l||t.container===a?c.scrollTop():s(t.container).offset().top)>=s(e).offset().top+t.threshold+s(e).height()},s.leftofbegin=function(e,t){return(t.container===l||t.container===a?c.scrollLeft():s(t.container).offset().left)>=s(e).offset().left+t.threshold+s(e).width()},s.inviewport=function(e,t){return!(s.rightoffold(e,t)||s.leftofbegin(e,t)||s.belowthefold(e,t)||s.abovethetop(e,t))},s.extend(s.expr[":"],{"below-the-fold":function(e){return s.belowthefold(e,{threshold:0})},"above-the-top":function(e){return!s.belowthefold(e,{threshold:0})},"right-of-screen":function(e){return s.rightoffold(e,{threshold:0})},"left-of-screen":function(e){return!s.rightoffold(e,{threshold:0})},"in-viewport":function(e){return s.inviewport(e,{threshold:0})},"above-the-fold":function(e){return!s.belowthefold(e,{threshold:0})},"right-of-fold":function(e){return s.rightoffold(e,{threshold:0})},"left-of-fold":function(e){return!s.rightoffold(e,{threshold:0})}})}(jQuery,window,document),$(document).ready(function(){function t(t,n){var e=$(".sort-archives").data("jsonurl");$.getJSON(e,function(e){null==t&&null==n?i(e):function(e,a){var t=e;null!=a&&"ALL"!=a&&(t=$.grep(t,function(e,t){var n=e.publishDate.substr(3);return(n=+n)===a}));i(t=t.sort(function(e,t){var n=new Date(e.publishDate.replace("-","/01/")).getTime(),a=new Date(t.publishDate.replace("-","/01/")).getTime();return"asc"==o?a-n:n-a}))}(e,t)})}function i(e){var t={archives:e},n=$("#archive-li-template").html(),a=Handlebars.compile(n)(t);$("ul.archive-links").html(a)}$(".dropdown-menu .dropdown .dropdown-toggle").on("click",function(e){e.stopPropagation();var t=$(this).next(".dropdown-menu");$(this).parent().parent().parent().find(".sub-menu .dropdown-menu:visible").not(t).hide(),t.toggle()}),$(".dropdown-menu .dropdown .dropdown-toggle").on("click",function(){$(this).closest(".dropdown").find(".sub-menu:visible").hide()}),$("div:not(.dropdown)").on("click",function(){$(".sub-menu .dropdown-menu:visible").hide()}),$("#raq-list-expander").on("click",function(){$(".more-raqs").toggleClass("expanded"),"LOAD MORE RAQs"==$(this).text()?$(this).text("SHOW FEWER RAQs"):"SHOW FEWER RAQs"==$(this).text()&&$(this).text("LOAD MORE RAQs")});var n=null,o="asc",a=$('a.sort-selector[data-sort="asc"]').html()||'Newest <i class="fa fa-angle-down"></i>',r=$('a.sort-selector[data-sort="dsc"]').html()||'Oldest <i class="fa fa-angle-down"></i>';$(".sort-selector").on("click",function(){o=$(this).data("sort");var e=$("#sort").find("i");"asc"==o?$("#sort").html(a):$("#sort").html(r),$("#sort").append(e),t(n,o)}),$(".year-selector").on("click",function(){n=$(this).data("year"),filterYearLabel=$(this).html(),$("#year").html(filterYearLabel+' <i class="fa fa-angle-down"></i>'),t(n,o)})}),$(document).ready(function(){$(".search.container .fa-search").on("click",function(){$(".search-input").toggleClass("hide"),$("#searchinput").focus()}),$(".search-input .close").on("click",function(){$(".search-input").toggleClass("hide"),$("#searchinput").clear()}),$(window).scroll(function(){$(".dialogue").addClass("navbar-fixed-top"),$(this).scrollTop()<50&&$(".dialogue").removeClass("navbar-fixed-top")}),$(".search.container input[type=submit]").addClass("hide"),$(".search.container #search-toggle").removeClass("hide"),$("#search-form input[type=text]").on("focus",function(){$(".search.container").addClass("active")}),$("#search-toggle").on("click",function(){$(this).parent().parent().hasClass("active")?$("#search-form").submit():$(".search.container").addClass("active")}),$("#search-close").on("click",function(){$(".search.container input[type=text]").val(""),$(".search.container").removeClass("active")}),$("#search-form input[type=text]").keypress(function(e){13==e.which&&(e.preventDefault(),$("#search-form").submit())}),$("#navbar ul.nav").append($(".site-family li").clone().addClass("visible-xs")),$("[data-id=dropdown-region-dest]").append($("[data-id=dropdown-region-source]").detach())}),function(){var o,r,n,s=/^[-a-z0-9~!$%^&*_=+}{\'?]+(\.[-a-z0-9~!$%^&*_=+}{\'?]+)*@([a-z0-9_][-a-z0-9_]*(\.[-a-z0-9_]+)*\.(aero|arpa|biz|com|coop|edu|gov|info|int|mil|museum|name|net|org|pro|travel|mobi|[a-z][a-z])|([0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}))(:[0-9]{1,5})?$/i,l={},c={error:"danger",hidden:"hidden",success:"success",warning:"warning"};function d(e,t){n&&(i(),n.classList.add("alert-"+e),n.innerHTML=t)}function a(){i(),n.classList.add("alert-"+c.hidden),n.innerHTML=""}function i(){Object.keys(c).forEach(function(e){n.classList.remove("alert-"+c[e])})}function u(){var e=r.querySelector("#termsofuse:checked"),t=r.querySelector('input[type="text"]'),n=r.querySelector('input[type="submit"]');e&&s.test(t.value)?n.disabled=!1:n.disabled=!0}function e(e,t){if(e)return console.error(e);l=t}function t(e,t){if(e)return console.error(e);o=t.consents,function(){var t,n,a,i=document.createElement("div");i.className="consents",o.forEach(function(e){t=document.createElement("div"),n=document.createElement("input"),a=document.createElement("label"),t.className="checkbox",n.type="checkbox",n.className="consent-required",n.name="consent-"+e.type,n.id=e.type,n.addEventListener("click",u),a.htmlFor=e.type,a.innerHTML=e.label,i.appendChild(t),t.appendChild(n),t.appendChild(a)}),r.querySelector("form").appendChild(i),i.appendChild(r.querySelector("#adi_subscribe--submit-button"))}()}function f(e){e.preventDefault();var n=r.querySelector('input[type="text"]'),a=r.querySelector('input[type="submit"]'),i=r.querySelectorAll(".consent-required");if(0<n.value.length&&!s.test(n.value))return a.disabled=!0,d(c.error,l[0]);n.disabled=!0,a.disabled=!0,o.forEach(function(e,t){e.value=i[t].checked}),MyAnalog.API.Subscriptions.manage(MyAnalog.Config.Newsletters.analogDialogue,n.value,!0,o,function(e,t){if(e)return n.disabled=!1,a.disabled=!1,d(c.error,MyAnalog.Utility.replaceTokens(e.message,l));d(c.success,l[2])})}document.addEventListener("DOMContentLoaded",function(){if(!(r=document.querySelector(".subscribe-mega")))return;n=r.querySelector(".alert"),r.querySelector("form").addEventListener("submit",f),MyAnalog.API.translations(MyAnalog.Config.Pages.subscription,e),MyAnalog.API.Consents.get(t),function(){var e=r.querySelector('input[type="text"]'),t=r.querySelector('input[type="submit"]');if(t.disabled=!0,!e)return;e.addEventListener("blur",function(){this.disabled||(a(),s.test(this.value)||d(c.error,l[0]))}),e.addEventListener("keyup",function(){u(),!this.disabled&&s.test(this.value)&&a()})}()})}(),$(document).ready(function(){$(".collapse-toggle").on("click",function(){if($(this).parent("div").hasClass("active"))$(".collapse-toggle").parent("div").removeClass("active");else{var e=$(this).attr("href");$(".collapse-toggle").parent("div").removeClass("active"),$(this).parent("div").addClass("active"),$("#article-accordion .panel-collapse").removeClass("in").addClass("collapse"),$("'"+e+"'").removeClass("collapse").addClass("in")}}),$("#raq-expander").on("click",function(){$(".raq-wrapper").toggleClass("expanded")}),$("#raq-close").on("click",function(){$(".raq-wrapper").toggleClass("expanded")}),$("#journal-slider")[0]&&($("#journal-slider").slider(),$("#journal-slider").on("change",function(e){var t=parseFloat($(".scroll-panel").width()),n=parseFloat($(".scroll-panel")[0].scrollWidth),a=.01*e.value.newValue*(n-t);$(".scroll-panel").css({"margin-left":"-"+a+"px"})})),$("#sc-more").on("click",function(){$(".student-corner ul").addClass("more"),$(this).hide(),$("#sc-less").show(),$("#sc-less").css({display:"block"})}),$("#sc-less").on("click",function(){$(".student-corner ul").removeClass("more"),$(this).hide(),$("#sc-more").show()}),$(".search.container input[type=submit]").addClass("hide"),$(".search.container #search-toggle").removeClass("hide"),$("#search-form input[type=text]").on("focus",function(){$(".search.container").addClass("active")}),$("#search-toggle").on("click",function(){$(this).parent().parent().hasClass("active")?$("#search-form").submit():$(".search.container").addClass("active")}),$("#search-close").on("click",function(){$(".search.container input[type=text]").val(""),$(".search.container").removeClass("active")}),$("#search-form input[type=text]").keypress(function(e){13==e.which&&(e.preventDefault(),$("#search-form").submit())}),$(".modal-dialog").parent().on("show.bs.modal",function(e){e.relatedTarget&&$(e.relatedTarget.attributes["data-target"].value).appendTo("body")})});var jsonData={archives:[{"favorite-class":"","img-src":"",title:"Asynchronous Sample-rate Converters","presentation-date":"FEB 23 2010",date:20100223,excerpt:"The CD player, an ideal storage medium for high-quality audio, has caused a once-revolutionary ida to be realized: that digital techniques are increasingly useful in the world of audio signals.",author:"Bob Adams",volume:"Volume 28, Number 1, 2010",shares:"152",likes:"162","favorite-icon":"fa-star"},{"favorite-class":"","img-src":"",title:"Driving PIN Diodes: The Op-Amp Alternative","presentation-date":"JUL 1 2015",date:20150701,excerpt:"PIN diodes, which sandwich a lightly doped intrinsic (I) region between heavily doped P and N regions, are used extensively in RF and microwave applications.",author:"Dave Babicz",volume:"Volume 44, Number 10, 2010",shares:"245",likes:"103","favorite-icon":"fa-star-o"},{"favorite-class":"","img-src":"",title:"Fingerprint Sensor and Blackfin Processor Enhance Biometric-Identification Equipment Design","presentation-date":"MAR 22 2011",date:20110322,excerpt:"The need for effective security, implemented efficiently, is manifest in today’s world.",author:"Angel Caballero",volume:"Volume 42, Number 3, 2008 ",shares:"245",likes:"103","favorite-icon":"fa-star-o"}]};function sortData(e,n,a){data=e.archives.sort(function(e,t){return"asc"==a?e[n]>t[n]:t[n]>e[n]});var t={archives:data};console.log(t),handlerData(t)}function handlerData(e){if($("#archive-li-template")[0]){var t=$("#archive-li-template").html(),n=Handlebars.compile(t)(e);$("ul.search-results").html(n)}}function loadArchiveData(e,t,n){null==t&&null==n?handlerData(e):sortData(e,t,n)}function expandSearchFilters(e){var t=e.closest(".container"),n=t.find(".column-search-filters"),a=t.find(".column-search-results");n.addClass("active"),n.addClass("col-md-5"),a.addClass("col-md-7"),n.removeClass("col-md-2"),a.removeClass("col-md-10")}function closeSearchFilters(e){var t=e.closest(".container"),n=t.find(".column-search-filters"),a=t.find(".column-search-results");n.addClass("col-md-2"),a.addClass("col-md-10"),n.removeClass("col-md-5"),a.removeClass("col-md-7"),n.removeClass("active"),n.find(".filter-category.active").removeClass("active")}$(document).ready(function(){loadArchiveData(jsonData),$(".collapse-search").on("click",function(){closeSearchFilters($(this))}),$(".search-filters .filter-category div:first-child").on("click",function(){var e=$(this).parent();e.hasClass("active")?e.removeClass("active"):(e.addClass("active"),expandSearchFilters(e))}),$(".column-search-results")[0]&&$("html, body").animate({scrollTop:$(".column-search-results").offset().top},1e3)}),$(document).ready(function(){$(".editorial-social-widget")[0]&&$(".editorial-social-widget").stickyWidget(),-1<location.search.indexOf("subscribe")&&$(".email-subscribe-toggle").trigger("click")}),$.fn.stickyWidget=function(){function e(){$(window).width()<=768?(t.removeClass("docked"),t.removeClass("floating"),t.addClass("docked-mobile")):n.scrollTop()>=a?(t.removeClass("docked"),t.addClass("floating")):(t.removeClass("floating"),t.addClass("docked"))}var t=this,n=$(window),a=t.parent().offset().top-180-$("header.dialogue").height();n.resize(function(){e()}),n.scroll(e),e()},function(){var n=this;1===document.body.getElementsByClassName("more-raqs").length&&0<document.body.getElementsByClassName("more-raqs")[0].getElementsByTagName("li").length&&(this.targetElements=document.body.getElementsByClassName("more-raqs")[0].getElementsByTagName("li"),this.eventTriggerElement=document.body.querySelector("ul+button"),this.visibleCounter=0,this.visibleStepAmount=8,this.activeClassName="active",this.eventController=function(e){if(e<n.targetElements.length)for(var t=e;t<e+n.visibleStepAmount;t++)if(n.targetElements[t].className+=" "+n.activeClassName,$(n.targetElements[t].getElementsByClassName("lazy")).lazyload({effect:"fadeIn"}),n.visibleCounter++,n.visibleCounter===n.targetElements.length)return void n.eventTriggerElement.parentNode.removeChild(n.eventTriggerElement)},this.init=void $(document).ready(function(){n.createEventListener=n.eventTriggerElement.addEventListener("click",function(e){n.eventController(n.visibleCounter)}),n.eventController(n.visibleCounter),$(n.targetElements).each(function(){$(this).on("click",function(e){location=$(this).data("url")})})}))}();