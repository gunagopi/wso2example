# wso2example

Sample for getting started with WSO2 API Manager and Enterprise Integrator. 
1. Created REST Project in SOAPUI to add mock service for Countries API which includes a GET method on Countries Resource. This operation does not take any parameters and return the list of countries.  Mock Service URL - http://localhost:8088/CountryServices/Countries
2. Created a Proxy service for REST endpoint(CountriesProxy) in ESB Project to forward the request to SOAPUI Mockservice. The proxy validates the xml response and transform the XML to sort the countries list. URL - http://localhost:8280/services/CountriesProxy
3. Created a API(CountriesAPI) in ESB Project similar to the proxy service. URL - http://localhost:8280/CountryServices/Countries
4. Exported and Deployed the CAR.
5. Added sample REST request in SOAPUI Project to call both CountriesAPI and CountriesProxy.
6. Configured API Manager to publish CountriesAPI(http://localhost:8343/gateway/1.0.0/Countries) and CountriesProxy(http://localhost:8343/gatewayProxy/1.0.0/CountriesProxy)
7. Added sample REST request in SOAPUI Project to call both CountriesAPI and CountriesProxy via API Manager

wso2example\APIManager\api_exports - Contains the API Configuration exported using CLI tool.
 - CountriesAPI_1.0.0.zip - API export for API URL http://localhost:8280/CountryServices/Countries
 - CountriesProxy_1.0.0.zip - API export for Proxy URL http://localhost:8280/services/CountriesProxy

wso2example\Deployables - Contains Carbon Application Archive (CAR)

wso2example\EIProjects - ESB Solution Projects
 - CountryServices - ESB Project
 - CountryServicesCompositeApplication  - Composite Application Project
 - CountryServicesRegistry - Registry Resources Project
 
wso2example\Resources - Schemas, WSDLs and WADLs

wso2example\SOAPUIProjects - SOAPUI Projects