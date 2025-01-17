<p:declare-step xmlns:p="http://www.w3.org/ns/xproc" version="3.0"
   xmlns:ox="http://csrc.nist.gov/ns/oscal-xproc3"
   type="ox:POWER-UP"
   name="POWER-UP">
            
	<p:output port="result" serialization="map{'indent' : true()}" />
	
   <p:xslt name="smoketest" message="[POWER-UP] XPROC 3 SMOKE TEST - - - Applying transformation ...">
      <p:with-input port="source">
         <p:inline>
            <CONGRATULATIONS>Congratulations on running an XProc 3 pipeline.</CONGRATULATIONS>
         </p:inline>
      </p:with-input>
      <!-- inline XSLTs don't apparently work so well inside Morgana? -->
      <p:with-input port="stylesheet" href="congratulations.xsl"/>
   </p:xslt>

</p:declare-step>
