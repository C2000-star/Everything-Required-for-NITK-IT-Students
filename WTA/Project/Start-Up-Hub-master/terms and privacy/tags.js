!function i(a,s,m){function c(t,e){if(!s[t]){if(!a[t]){var n="function"==typeof require&&require;if(!e&&n)return n(t,!0);if(u)return u(t,!0);var o=new Error("Cannot find module '"+t+"'");throw o.code="MODULE_NOT_FOUND",o}var r=s[t]={exports:{}};a[t][0].call(r.exports,function(e){return c(a[t][1][e]||e)},r,r.exports,i,a,s,m)}return s[t].exports}for(var u="function"==typeof require&&require,e=0;e<m.length;e++)c(m[e]);return c}({1:[function(e,t,n){!function(){var r=window.analytics=window.analytics||[];if(!r.initialize)if(r.invoked)window.console&&console.error&&console.error("Segment snippet included twice.");else{r.invoked=!0,r.methods=["trackSubmit","trackClick","trackLink","trackForm","pageview","identify","reset","group","track","ready","alias","debug","page","once","off","on"],r.factory=function(t){return function(){var e=Array.prototype.slice.call(arguments);return e.unshift(t),r.push(e),r}};for(var e=0;e<r.methods.length;e++){var t=r.methods[e];r[t]=r.factory(t)}r.load=function(e,t){var n=document.createElement("script");n.type="text/javascript",n.async=!0,n.src="https://cs.moz.com/analytics.js/v1/"+e+"/analytics.min.js",n.onerror=function(){_mtm.debugger.log("mtm:pre:analytics.js","analytics.js failed to load")},n.onload=_mtm.triggers.triggerSegmentLoaded;var o=document.getElementsByTagName("script")[0];o.parentNode.insertBefore(n,o),r._loadOptions=t},r.SNIPPET_VERSION="4.1.0"}}(),function(){if("function"==typeof window.CustomEvent)return;window.CustomEvent=function(e,t){t=t||{bubbles:!1,cancelable:!1,detail:null};var n=document.createEvent("CustomEvent");return n.initCustomEvent(e,t.bubbles,t.cancelable,t.detail),n}}();["production","staging","development"].indexOf(_mtm.config.env);var r="enabled"===localStorage.getItem("mtm_debug"),i={};try{var o=localStorage.getItem("mtm_debug_config");o&&(i=JSON.parse(o))}catch(e){i={}}function a(e){if(!r)return!1;var t=i.filter;if(!t)return!0;if(t instanceof RegExp)return t.test(e);for(var n=t.split(","),o=0;o<n.length;o++)if(0<=e.indexOf(n[o]))return!0;return!1}var s,m,c,u,l;window._mtm={config:window._mtm.config,debugger:{enable:function(e,t,n){!1!==e?(localStorage.setItem("mtm_debug","enabled"),localStorage.setItem("mtm_debug_config",JSON.stringify({config:n,filter:t})),a("segment")?analytics.debug():analytics.debug(!1),console.log("Debug mode enabled - please refresh the page")):(analytics.debug(!1),localStorage.setItem("mtm_debug",null))},log:function(e,t){a(e)&&console.log("%c"+e+"%c - "+t,"color: #89D6F3;","")},tagsExecuted:[]},events:[],helpers:{},tags:[],triggers:{}},s=window.history,m=s.pushState,s.pushState=function(e){"function"==typeof s.onpushstate&&s.onpushstate({state:e});var t=new CustomEvent("pushstate",{detail:e});return document.dispatchEvent(t),m.apply(s,arguments)},window.trackMozEvent=function(e,t,n){var o=window.analytics,r="https://"+(_mtm.helpers.isProduction()?"moz.com":"staging.moz.com")+"/tracking/event";if(t=t||{},n&&"[object Function]"==={}.toString.call(n)&&setTimeout(n,300),_mtm.helpers.isDevelopment())return _mtm.debugger.log("mtm:track:event",e,t);var i=_mtm.helpers.getUser();i&&(t.account_id=_mtm.helpers.get(i,["account","id"])),o.track(e,t,{integrations:{All:!1}});var a={event:e,properties:t};_mtm.helpers.request(r,{body:a,method:"POST"},function(e,t){try{t.events&&t.events.forEach(function(e){_mtm.helpers.isSubscriber()||(e.options=e.options||{},e.options.integrations=e.options.integrations||{},e.options.integrations.Intercom=!1),o.track(e.event,e.properties,e.options),_mtm.triggers.triggerSupportedEvent(e.event,e.properties,e.options)})}catch(e){}})},window.trackMozPage=function(){console.warn("trackMozPage is deprecated.")},window._mtm.trackMozPage=function(e,t,n){t.pageData||(t.pageData={env:_mtm.config.env,service:_mtm.config.service,team:_mtm.config.team}),n&&"[object Function]"==={}.toString.call(n)&&setTimeout(n,300);var o=_mtm.helpers.get(window,["activeCampaign","campaign_id"]);o&&(t.pageData.pro_campaign_id=o)!==analytics.user().traits().pro_campaign_id&&analytics.identify({pro_campaign_id:o}),t.category?analytics.page(t.category,e,t.pageData):analytics.page(e,t.pageData)},window.trackMozError=function(t,e){if(e&&"[object Function]"==={}.toString.call(e)&&e(),!t.message)return console.error("trackMozError: Must include a message");["service","team","page"].forEach(function(e){t[e]=t[e]||_mtm.config[e]}),t.url||(t.url=window.location.href),_mtm.triggers.segmentLoaded(function(){t.session_id=analytics.user().anonymousId(),t.user_id=analytics.user().id();var e="https://"+(_mtm.helpers.isProduction()?"moz.com":"staging.moz.com")+"/tracking/moz_error";try{navigator.sendBeacon(e,JSON.stringify(t))}catch(e){}})},c="_gaexp",u=localStorage.getItem(c),(l=document.cookie.match(new RegExp(c+"=(.+?)(;|$)")))?u&&u===l[1]||localStorage.setItem(c,l[1]):u&&(document.cookie=c+"="+u),window._satellite={getVar:function(){console.warn("_satellite.getVar is deprecated.")},pageBottom:function(){console.warn("_satellite.pageBottom is deprecated")},track:function(){console.warn("_satellite.track is deprecated.")}};_mtm.helpers.cookie={get:function(e){var t=("; "+document.cookie).split("; "+e+"=");if(2===t.length)return t.pop().split(";").shift()},remove:function(e){document.cookie=e+"=; domain=moz.com; expires=Thu, 01 Jan 1970 00:00:01 GMT;"}};_mtm.helpers.isProduction=function(){return 0===window._mtm.config.env.indexOf("prod")};_mtm.helpers.isDevelopment=function(){return 0===window._mtm.config.env.indexOf("dev")},_mtm.helpers.fetchCurrentUser=function(n){var e=_mtm.helpers.isProduction()?"https://moz.com":"https://staging.moz.com";_mtm.helpers.request(e+"/svc/session",{withCredentials:!0},function(e,t){if(e)return n(e,null);n(null,_mtm.helpers.get(t,["user"]))})};_mtm.helpers.flashMessage=function(e,t,n,o){var r=document.querySelector(e);if(!r)return _mtm.debugger.log("mtm:helpers:flashMessage","No element for flash message found"),!1;if(!t)return _mtm.debugger.log("mtm:helpers:flashMessage","No message for flash message found"),!1;if({primary:!0,success:!0,danger:!0,warning:!0}[n]){var i="alert alert-"+n;o&&(i+=" "+o),r.className=i}return r.innerHTML=function(e){var t=document.createElement("div");t.innerHTML=e;for(var n=t.getElementsByTagName("script"),o=0;o<n.length;o++)n[o].parentNode.removeChild(n[o]);return t.innerHTML}(t),!0};_mtm.helpers.get=function(e,t){return e?t.reduce(function(e,t){return e&&e[t]?e[t]:null},e):null};_mtm.helpers.isPage=function(e){return e instanceof RegExp?e.test(window.location.pathname):0===window.location.pathname.indexOf(e)};_mtm.helpers.loadHTML=function(t,e){var n=new XMLHttpRequest;e.includes("moz.com")?(n.open("GET",e,!0),n.onload=function(){if(200<=n.status&&n.status<400){var e=n.responseText;document.querySelector(t).innerHTML=e}},n.send()):_mtm.debugger.log("mtm:helpers:loadHTML","Invalid URL being loaded - "+e)};_mtm.helpers.loadScript=function(e){var t=document.createElement("script");return t.src=e,document.body.appendChild(t),t};window._mtm.helpers.onDomChange=function(t,e,n){var o=new MutationObserver(function(e){e.forEach(function(e){"attributes"===e.type?n(e.target):e.addedNodes.forEach(function(e){e.matches&&e.matches(t)&&n(e)})})});return o.observe(document.documentElement,{attributeFilter:e,childList:!0,subtree:!0}),o};_mtm.helpers.request=function(e,t,n){t=t||{};var o=new XMLHttpRequest,r=!1,i=1e3;t.timeout&&(i=t.timeout);var a=setTimeout(function(){r||n(new Error("Request Timeout"))},i);o.open(t.method||"GET",e,!0),o.setRequestHeader("Content-type","application/json"),o.withCredentials=t.withCredentials||!1,o.onreadystatechange=function(){if(o.readyState===XMLHttpRequest.DONE&&n&&"[object Function]"==={}.toString.call(n)){var e={},t=null;try{e=JSON.parse(o.responseText)}catch(e){t=new Error("Invalid JSON response")}200!==o.status&&(t=e,e=null),r=!0,clearTimeout(a),n(t,e)}},o.send(JSON.stringify(t.body))};_mtm.helpers.getUser=function(){return _mtm.helpers.get(window,["_mgn","user"])};_mtm.helpers.isLoggedIn=function(){return!!_mtm.helpers.getUser()};_mtm.helpers.isPro=function(){var e=_mtm.helpers.getUser();return"active"===_mtm.helpers.get(e,["account","products","search","status"])};_mtm.helpers.isLocal=function(){var e=_mtm.helpers.getUser();return!!_mtm.helpers.get(e,["local_push"])};_mtm.helpers.isLocalManaged=function(){var e=_mtm.helpers.getUser();return 1===_mtm.helpers.get(e,["account_services","local","limits","managed"])};_mtm.helpers.isLocalMigrated=function(){var e=_mtm.helpers.getUser();return!!_mtm.helpers.get(e,["account_services","local","limits","migration_complete_at"])};_mtm.helpers.isLMA=function(){var e=_mtm.helpers.getUser();return!!_mtm.helpers.get(e,["account_services","search","limits","local_search"])};_mtm.helpers.isAdmin=function(){var e=_mtm.helpers.getUser();return e&&(e.admin||e.admin_id)};_mtm.helpers.isAccountAdmin=function(){var e=_mtm.helpers.getUser();if(!e)return!1;for(var t=0;t<e.accounts.length;t++){var n=e.accounts[t];if(n.owner_id===window._mgn.user.id&&-1!==n.products.indexOf("search"))return!0;if(-1!==n.products.indexOf("account"))return!0}return!1};_mtm.helpers.isAccountOwner=function(){var e=_mtm.helpers.getUser();if(!e)return!1;for(var t in e.accounts)if(e.accounts[t].owner_id===window._mgn.user.id)return!0},_mtm.helpers.isSubscriber=function(){var e=_mtm.helpers.getUser();if(!e)return!1;for(var t in e.accounts)if(-1!==e.accounts[t].products.indexOf("search")||-1!==e.accounts[t].products.indexOf("api")||-1!==e.accounts[t].products.indexOf("local"))return!0};_mtm.helpers.isFreetrialer=function(){var e=_mtm.helpers.getUser();if(!_mtm.helpers.isPro())return!1;var t=_mtm.helpers.get(e,["account","products","search","trial_expires_at"]);return new Date(1e3*t)>new Date};_mtm.helpers.uuid=function e(t){return t?(t^16*Math.random()>>t/4).toString(16):([1e7]+-1e3+-4e3+-8e3+-1e11).replace(/[018]/g,e)},_mtm.tags.push({name:"Bizzabo Events",description:"    Listens for events being sent from the Bizzabo iframe     and forwards them to Segment   ",condition:function(e){_mtm.helpers.isPage("/mozcon/register")&&e()},execute:function(){var t=["https://accounts.bizzabo.com"];window.addEventListener("message",function(e){-1!==t.indexOf(e.origin)&&"trackMozEvent"===_mtm.helpers.get(e,["data","type"])&&trackMozEvent(e.data.name)},!1)}}),_mtm.tags.push({name:"Customize youcanbookme iframe",description:"    - If no user info, should redirect to login     - Runs on moz.com/walkthrough/personalized     - Customized the src on the iframe on the page to include user info   ",condition:function(e){if(_mtm.helpers.isPage("/walkthrough/personalized"))return e()},execute:function(){_mtm.triggers.user(function(){var e=_mtm.helpers.getUser();if(!e)return window.location="/login";document.querySelector("iframe").src+="?USER_ID="+encodeURIComponent(e.id)+"&EMAIL="+encodeURIComponent(e.email)+"&FNAME="+encodeURIComponent(e.full_name)})}}),_mtm.tags.push({name:"Flash Message",description:"Checks for flash message cookie and displays message",condition:function(e){_mtm.triggers.initial(function(){0<=document.cookie.indexOf("moz_flash_message=")&&e()})},execute:function(){var e=_mtm.helpers.cookie.get("moz_flash_message");if(e){var t=e.split("__FM_SPLIT__"),n=t[0].replace(/\+/g,"%20"),o=decodeURIComponent(n),r="info";1<t.length&&(r=t[1]),_mtm.helpers.flashMessage("#flashMessage",o,r)&&_mtm.helpers.cookie.remove("moz_flash_message")}}});function d(e){var t=localStorage.getItem("lo_sample");return null===t&&(t=Math.random(),localStorage.setItem("lo_sample",t)),t<=e}function g(e){e.classList.add("lo_sensitive")}var p=134826,_=142476;document.querySelectorAll("[data-sensitive]").forEach(g),_mtm.tags.push({name:"Lucky Orange",description:"Loads Lucky Orange (https://www.luckyorange.com/) onto the page",condition:function(e){_mtm.triggers.user(function(){return _mtm.helpers.isAdmin()?(-1==document.cookie.indexOf("_global_lucky_opt_out")&&(document.cookie="_global_lucky_opt_out=1"),e()):/(bot|google|baidu|bing|msn|teoma|slurp|yandex)/i.test(navigator.userAgent)||navigator&&/.*IN$/.test(navigator.language)||_mtm.helpers.isDevelopment()?void 0:/\/(checkout|subscriptions|account|notifications|email)/.test(window.location.pathname)&&d(.1)?e():/\/(products|lander|moz-pro-free-trial)/.test(window.location.pathname)&&d(.1)?e():_mtm.helpers.isSubscriber()&&d(.1)?e():d(.01)?e():void 0})},execute:function(){_mtm.helpers.onDomChange("[data-sensitive]",["data-sensitive"],g);var e=function(){var e=_mtm.helpers.getUser();return!e||_mtm.helpers.isAdmin()?{}:{name:e.full_name,email:e.email,user_id:e.id,mozpoints:e.mozpoints,pro_plan:_mtm.helpers.isPro()?e.account.products.search.name:null,local_locations:_mtm.helpers.isLocal()?e.local_push:null,is_owner:_mtm.helpers.isAccountAdmin(),is_lma:_mtm.helpers.isLMA()}}();window._loq=window._loq||[],window._loq.push(["custom",e]),_mtm.helpers.isFreetrialer()?window._loq.push(["tag","Pro Freetrialer"]):_mtm.helpers.isAccountAdmin()&&window._loq.push(["tag","Pro Vested"]),_mtm.helpers.isLocal()&&window._loq.push(["tag","Local Customer"]),_mtm.helpers.isLMA()&&window._loq.push(["tag","LMA Customer"]),_mtm.triggers.supportedEvent(function(e,t){"Experiment Viewed"===e&&(e=["Experiment",t.experiment_name,t.variation_name].join(": ")),window._loq=window._loq||[],window._loq.push(["tag",e])}),window.__lo_site_id=_mtm.helpers.isProduction()?p:_,_mtm.helpers.loadScript("https://d10lpsik1i8c69.cloudfront.net/w.js")}});var f="Qp2TmR5oQRJsZ9KZyDDTWjuJfcEpg23l",h="P4i8yu85MjixE059Nt2606lg9H9Qooau",v=/(checkout(?!\-api)|training|subscriptions(?!\/))/;_mtm.tags.push({name:"Segment (analytics.js)",description:"Loads Segment then fires pageload and identify calls",condition:function(e){_mtm.helpers.isDevelopment()||e()},execute:function(){var i=_mtm.helpers.isProduction()?f:h,a={integrations:{Chameleon:!1,Intercom:!1}};_mtm.debugger.Segment={},_mtm.triggers.user(function(){var e=_mtm.helpers.getUser();for(var t in _mtm.helpers.isSubscriber()&&"pro_student"!==e.account_services.search.level&&("inbound"!==_mtm.config.team?(a.integrations.Intercom=!0,a.integrations.Chameleon=!0,_mtm.helpers.isPage("/pro/welcome")||(a.integrations.AdWords=!1,a.integrations["Bing Ads"]=!1,a.integrations["Facebook Pixel"]=!1,a.integrations["LinkedIn Insight Tag"]=!1,a.integrations["Quora Conversion Pixel"]=!1,a.integrations["Twitter Ads"]=!1)):_mtm.helpers.isPage(v)&&(a.integrations.Intercom=!0)),"hubspot"===_mtm.config.service&&(a.integrations.HubSpot=!1),_mtm.debugger.Segment.integrationsDisabled={},a.integrations){!a.integrations[t]&&(_mtm.debugger.Segment.integrationsDisabled[t]=!1)}if(analytics.load(i,a),e){var n={email:e.email,pro_plan:_mtm.helpers.isPro()?e.account.products.search.name:null,local_locations:_mtm.helpers.isLocal(),is_owner:_mtm.helpers.isAccountAdmin(),is_lma:_mtm.helpers.isLMA(),is_freetrial:_mtm.helpers.isFreetrialer()},o=window.location.search.match(/source=([^&]+)/);o&&(n.app_source=o[1]),analytics.identify(e.id,n)}var r={team:_mtm.config.team,service:_mtm.config.service,env:_mtm.config.env};e&&(r.accountId=e.account.id),_mtm.config.disableAutotrack?_mtm.debugger.log("mtm:track:page","Auto Page tracking disabled"):_mtm.triggers.page(function(){var n=window.location.href;setTimeout(function(){n!==window.location.href&&(r.referrer=n);var e=_mtm.helpers.get(window,["activeCampaign","campaign_id"]);e&&(r.pro_campaign_id=e)!==analytics.user().traits().pro_campaign_id&&analytics.identify({pro_campaign_id:e});var t=null;_mtm.config.page&&_mtm.config.service&&(t=_mtm.config.service+"-"+_mtm.config.page),_mtm.config.category?(r.category=_mtm.config.category,analytics.page(_mtm.config.category,t,r)):analytics.page(t,r)},0)})})}}),_mtm.tags.push({name:"Stripe Radar",description:"Loads stripe for Radar - https://stripe.com/docs/radar",condition:function(e){_mtm.helpers.isProduction()&&e()},execute:function(){_mtm.triggers.initial(function(){_mtm.helpers.loadScript("https://js.stripe.com/v3/")})}}),_mtm.tags.push({name:"Wistia",description:"Tracks video plays: https://segment.com/docs/spec/video",condition:function(e){window._wq=window._wq||[],_wq.push({id:"_all",onReady:e})},execute:function(a){a.bind("play",function(){trackMozEvent("Video Playback Started",{session_id:a._containerId,content_asset_id:a.hashedId(),position:a.secondsWatched(),total_length:a.duration(),video_player:"wistia",sound:a.volume(),title:a.name()}),a.unbind}),a.bind("percentwatchedchanged",function(e,t){var n=[.25,.5,.75],o=[];if("playing"===a.state())for(var r=0;r<n.length;r++){var i=n[r];if(i<=e&&t<i){if(-1!==o.indexOf(a.hashedId()+i))continue;o[a.hashedId()+r]=!0,trackMozEvent("Video Content Playing",{session_id:a._containerId,asset_id:a.hashedId(),title:a.name(),position:a.secondsWatched(),position_percent:i,total_length:a.duration()})}}}),a.bind("end",function(){trackMozEvent("Video Playback Completed",{session_id:a._containerId,content_asset_id:a.hashedId(),position:a.secondsWatched(),total_length:a.duration(),video_player:"wistia",sound:a.volume(),title:a.name()}),a.unbind})}});window._mtm.triggers.click=function(t,n){_mtm.triggers.initial(function(){var e=document.querySelector(t);e?e.addEventListener("click",function(){_mtm.debugger.log("mtm:trigger:executed","Element was clicked "+t),n(arguments)}):_mtm.debugger.log(t,"element not found")})};var w=[];document.addEventListener("DOMContentLoaded",function(){for(var e in w)w[e]();_mtm.debugger.log("mtm:trigger:executed","Initial page loaded"),w=[]}),window._mtm.triggers.initial=function(e){"loading"!==document.readyState?e():w.push(e)};var b=[];window._mtm.triggers.page=function(e){b.push(e),"loading"!==document.readyState&&e()};window._mtm.triggers.triggerPage=function(e){var t=_mtm.helpers.get(e,["detail","urlPath"]),n="Page view detected";for(var o in t&&(n+=" - "+window.location.protocol+window.location.host+t),_mtm.debugger.log("mtm:trigger:executed",n),b)b[o]()};window._mtm.triggers.clearPageQueue=function(){b=[]},document.addEventListener("DOMContentLoaded",window._mtm.triggers.triggerPage),document.addEventListener("pushstate",window._mtm.triggers.triggerPage);var y=[],E=!1;window._mtm.triggers.segmentLoaded=function(e){E?e():y.push(e)};window._mtm.triggers.triggerSegmentLoaded=function(){for(var e in _mtm.debugger.log("mtm:trigger:executed","analytics.js was loaded"),E=!0,y)y[e]();y=[]};var k=[];window._mtm.triggers.supportedEvent=function(e){k.push(e)};window._mtm.triggers.triggerSupportedEvent=function(e,t,n){for(var o in _mtm.debugger.log("mtm:trigger:executed","Supported Event fired: "+e),k)k[o](e,t,n)};var S=[],x=!1;window._mtm.triggers.user=function(e){if(x)return e(window._mgn?window._mgn.user:null);S.push(e)};document.addEventListener("mozuser",function(){for(var e in x=!0,S)S[e](window._mgn?window._mgn.user:null);var t=_mtm.helpers.get(window,["_mgn","user","id"]),n=t?"User found: "+t:"No user found";_mtm.debugger.log("mtm:trigger:executed",n),S=[]});function L(){var e=new CustomEvent("mozuser");document.dispatchEvent(e),M.disconnect()}var M=null;M=new MutationObserver(function(){window._mgn&&L()}),document.addEventListener("DOMContentLoaded",L),M.observe(document.documentElement,{childList:!0});var z=[],I=new MutationObserver(function(){for(var e in z){var t=z[e],n=document.querySelector(t.selector);if(!n)return;t.callback(n),_mtm.debugger.log("mtm:trigger:executed","Element is visible "+t.selector),z.splice(e,1),0===z.length&&I.disconnect()}});window._mtm.triggers.visible=function(e,t){var n=document.querySelector(e);n&&(_mtm.debugger.log("mtm:trigger:executed","Element is visible "+e),t(n)),0===z.length&&I.observe(document.documentElement,{childList:!0,subtree:!0}),z.push({callback:t,selector:e})},_mtm.tags.forEach(function(e){e.condition(function(){_mtm.debugger.log("mtm:debugger:tag:execute",e.name),_mtm.debugger.tagsExecuted.push(e),e.execute.apply(this,arguments)})})},{}]},{},[1]);