package com.google.firebase.perf.config;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public final class ConfigurationConstants$LogSourceName extends u {

    private static ConfigurationConstants$LogSourceName f31400a;

    private static final Map f31401b = Collections.unmodifiableMap(new HashMap<Long, String>() {
        {
            put(461L, "FIREPERF_AUTOPUSH");
            put(462L, "FIREPERF");
            put(675L, "FIREPERF_INTERNAL_LOW");
            put(676L, "FIREPERF_INTERNAL_HIGH");
        }
    });

    private ConfigurationConstants$LogSourceName() {
    }

    public static synchronized ConfigurationConstants$LogSourceName e() {
        try {
            if (f31400a == null) {
                f31400a = new ConfigurationConstants$LogSourceName();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f31400a;
    }

    protected static String f(long j10) {
        return (String) f31401b.get(Long.valueOf(j10));
    }

    protected static boolean g(long j10) {
        return f31401b.containsKey(Long.valueOf(j10));
    }

    @Override
    protected String a() {
        return "com.google.firebase.perf.LogSourceName";
    }

    @Override
    protected String c() {
        return "fpr_log_source";
    }

    protected String d() {
        return rc.a.f70945c;
    }
}
