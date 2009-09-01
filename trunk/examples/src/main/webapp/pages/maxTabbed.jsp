<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@ taglib uri="http://code.google.com/p/gmaps4jsf/" prefix="m" %>
<!DOCTYPE html "-//W3C//DTD XHTML 1.0 Strict//EN"
  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>Welcome to GMaps4JSF</title>
        <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
        <script src="http://maps.google.com/maps?file=api&amp;v=2&amp;key=ABQIAAAAxrVS1QxlpJHXxQ2Vxg2bJBQdkFK-tWRbPPQS4ACM1pq_e-PltxQXeyH20wQuqDaQ_6EM5UeGGVpnIw" type="text/javascript"> </script>
        <script src="http://gmaps-utility-library-dev.googlecode.com/svn/tags/tabbedmaxcontent/1.0/src/tabbedmaxcontent_packed.js" type="text/javascript"> </script>
    </head>
    <body onunload="GUnload()">
	<f:view>
            <h:form id="form">
                <h:panelGroup id="panoramaContainer" style="display:none;">
                    <m:streetViewPanorama address="cibeles,madrid" yaw="50" width="560px" height="215px" />
                </h:panelGroup>
                <m:map width="600px" height="400px" latitude="40.41701670242653" longitude="-3.703519105911255" zoom="5">
                    <m:extendedHtmlInformationWindow regular="This is the center of Spain" summary="<div style='text-align:center;width:100%;'><img src='http://mw2.google.com/mw-panoramio/photos/small/183277.jpg' style='height:100px' /></div>" maxTitle="Puerta del Sol-Madrid">
                        <m:tab title="The city" content="Capital of Spain!" />
                        <m:tab title="The views" contentNode="form:panoramaContainer" />
                    </m:extendedHtmlInformationWindow>
                    <m:marker latitude="37.184459" longitude="-7.336721">
                        <m:extendedHtmlInformationWindow regular="This is a corner of Spain" maximized="true">
                            <m:tab title="Sun and beach at Ayamonte" content="<div style='width:100%;text-align:center'><img src='http://mw2.google.com/mw-panoramio/photos/small/2697691.jpg' style='width:80%;padding-top:5px'/></div>" />
                        </m:extendedHtmlInformationWindow>
                    </m:marker>
                </m:map>
            </h:form>
	</f:view>
	<%@include file="../templates/footer.jspf" %>
    </body>
</HTML>