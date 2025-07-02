$developmentRoute = `oc get route -n myapp-development myapp-route -o jsonpath='{.spec.host}'`;

print $developmentRoute."\n";

$QARoute = `oc get route -n myapp-qa myapp-route -o jsonpath='{.spec.host}'`;

print $QARoute."\n";

$productionRoute = `oc get route -n myapp-production myapp-route -o jsonpath='{.spec.host}'`;

print $productionRoute."\n";

$curlCommandDev = "curl -k -s https://".$developmentRoute."/System/propertiesJavaHome";

$curlResponseDev = `$curlCommandDev`;

print "Development : ".$curlResponseDev."\n";

$curlCommandQA = "curl -k -s https://".$QARoute."/System/propertiesJavaHome";

$curlResponseQA = `$curlCommandQA`;

print "QA          : ".$curlResponseQA."\n";

$curlCommandProduction = "curl -k -s https://".$productionRoute."/System/propertiesJavaHome";

$curlResponseProduction = `$curlCommandProduction`;

print "Production  : ".$curlResponseProduction."\n";
