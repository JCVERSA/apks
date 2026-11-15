package com.amazonaws;

import com.amazonaws.internal.config.HttpClientConfig;
import com.amazonaws.internal.config.InternalConfig;

enum ServiceNameFactory {
    ;

    static String getServiceName(String str) {
        HttpClientConfig httpClientConfigH = InternalConfig.Factory.a().h(str);
        if (httpClientConfigH == null) {
            return null;
        }
        return httpClientConfigH.a();
    }
}
