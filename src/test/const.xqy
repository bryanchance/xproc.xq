xquery version "3.0";

module namespace test = "http://github.com/robwhitby/xray/test";

import module namespace assert = "http://github.com/robwhitby/xray/assertions" at "/xray/src/assertions.xqy";

import module namespace const = "http://xproc.net/xproc/const" at "/xquery/core/const.xqy";

declare function test:loadModule() { 
  assert:equal($const:init_unique_id, '!1')
};

declare function test:checkVersion() { 
  assert:equal($const:version, '1.0')
};

declare function test:checkProductVersion() { 
  assert:equal($const:product-version, '1.0')
};

declare function test:checkProductVersioName() { 
  assert:equal($const:product-name, 'xproc.xq')
};

declare function test:checkVendor() { 
  assert:equal($const:vendor, 'James Fuller')
};

declare function test:checkLanguage() { 
  assert:equal($const:language, 'en')
};

declare function test:checkVendorURI() { 
  assert:equal($const:vendor-uri, 'http://www.xproc.net')
};

declare function test:checkXpathVersion() { 
  assert:equal($const:xpath-version, '2.0')
};

declare function test:checkPsviSupported() { 
  assert:equal($const:psvi-supported, 'false')
};

declare function test:checkXSLTVersion() { 
  assert:equal($const:xslt-version, 2.0)
};

(: missing tests for error codes :)

