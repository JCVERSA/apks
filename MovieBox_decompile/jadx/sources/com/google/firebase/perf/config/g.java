package com.google.firebase.perf.config;

public final class g extends u {

    private static g f31412a;

    private g() {
    }

    public static synchronized g e() {
        try {
            if (f31412a == null) {
                f31412a = new g();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f31412a;
    }

    @Override
    protected String a() {
        return "com.google.firebase.perf.NetworkEventCountForeground";
    }

    @Override
    protected String c() {
        return "fpr_rl_network_event_count_fg";
    }

    protected Long d() {
        return 700L;
    }
}
