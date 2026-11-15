package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.identifiers.AdTrackingInfo;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public abstract class I5 {
    public static final Map a;

    static {
        HashMap map = new HashMap();
        map.put("google", AdTrackingInfo.Provider.GOOGLE);
        map.put("huawei", AdTrackingInfo.Provider.HMS);
        map.put("yandex", AdTrackingInfo.Provider.YANDEX);
        a = Collections.unmodifiableMap(map);
    }
}
