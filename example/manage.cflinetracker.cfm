<!--

 Copyright 2016 Intergral Information Solutions GmbH

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.

-->
<cfparam name="URL.track" default="true">

<cfset fragentClass = createObject("java", "com.intergral.fusionreactor.agent.Agent")>

<cfif URL.track is "true">
    <cfoutput>#fragentClass.getAgentInstrumentation().get("cflpi").addTransformer()#</cfoutput>
<cfelse>
    <cfoutput>#fragentClass.getAgentInstrumentation().get("cflpi").removeTransformer()#</cfoutput>
</cfif>

<cfoutput>Tracking : #URL.track is true#</cfoutput>