package com.google.firebase.perf.config;

public final class f extends u {

    private static f f31411a;

    private f() {
    }

    public static synchronized f e() {
        try {
            if (f31411a == null) {
                f31411a = new f();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f31411a;
    }

    @Override
    protected String a() {
        return "com.google.firebase.perf.NetworkEventCountBackground";
    }

    @Override
    protected String c() {
        return "fpr_rl_network_event_count_bg";
    }

    protected Long d() {
        return 70L;
    }
}
