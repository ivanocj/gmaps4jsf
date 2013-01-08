<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@ taglib uri="http://code.google.com/p/gmaps4jsf/" prefix="m" %>
<!DOCTYPE html "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <f:view>
        <head>
        	<%@include file="../templates/internalHeader.jspf" %>               
        </head>  
        <body onunload="GUnload()">
            <h:form id="form">
                <m:map width="650px" height="450px" latitude="40.41701670242653" longitude="-3.703519105911255" jsVariable="gmap" zoom="5">
                    <m:mapControl name="GSmallMapControl" />
                    <m:marker latitude="37.184459" longitude="-7.336721">
                        <m:popup icon="petrol" content="$3/gal" />
                    </m:marker>
                    <m:marker latitude="41.184459" longitude="-5.336721">
                        <m:popup icon="snack" content="Great food!" backgroundColor="FF00FF" textColor="FF0000" chartStyle="d_bubble_icon_text_big" />
                    </m:marker>
                    <m:marker latitude="34.184459" longitude="-3.336721" draggable="true">
                        <m:popup icon="bike" content="Ride here|Mountain bike|(drag me)" chartStyle="d_bubble_icon_texts_big" />
                    </m:marker>
                </m:map>
            </h:form>
            <%@ include file="../templates/footer.jspf" %>
        </body>
    </f:view>
</html>