package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.StartupParamsCallback;
import java.util.HashMap;

public final class C2747nl extends HashMap {
    public C2747nl() {
        put(EnumC2697ll.UNKNOWN, StartupParamsCallback.Reason.UNKNOWN);
        put(EnumC2697ll.NETWORK, StartupParamsCallback.Reason.NETWORK);
        put(EnumC2697ll.PARSE, StartupParamsCallback.Reason.INVALID_RESPONSE);
    }
}
