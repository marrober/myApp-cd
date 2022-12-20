$developmentRoute = `oc get route -n myapp-development myapp-route -o jsonpath='{.spec.host}'`;

print $developmentRoute."\n";

$QARoute = `oc get route -n myapp-qa myapp-route -o jsonpath='{.spec.host}'`;

print $QARoute."\n";

$productionRoute = `oc get route -n myapp-production myapp-route -o jsonpath='{.spec.host}'`;

print $productionRoute."\n";

$curlCommandDev = "curl -k -s http://".$developmentRoute."/System/propertiesJavaHome";

$curlResponseDev = `$curlCommandDev`;

print "Development : ".$curlResponseDev."\n";

$curlCommandQA = "curl -k -s http://".$QARoute."/System/propertiesJavaHome";

$curlResponseQA = `$curlCommandQA`;

print "QA          : ".$curlResponseQA."\n";

$curlCommandProduction = "curl -k -s http://".$productionRoute."/System/propertiesJavaHome";

$curlResponseProduction = `$curlCommandProduction`;

print "Production  : ".$curlResponseProduction."\n";
