echo ""
echo ""
echo "Test the development environment"
curl -k http://myapp-route-myapp-development.apps.skylake.demolab.local/System/propertiesJavaHome

echo ""
echo ""
echo "Test the QA environment"
echo ""
curl -k http://myapp-route-myapp-qa.apps.skylake.demolab.local/System/propertiesJavaHome

echo ""
echo ""
echo "Test the Production environment"
echo ""
curl -k http://myapp-route-myapp-production.apps.celeron.demolab.local/System/propertiesJavaHome
