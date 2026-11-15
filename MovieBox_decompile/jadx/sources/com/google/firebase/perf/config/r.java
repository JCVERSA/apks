package com.google.firebase.perf.config;

public final class r extends u {

    private static r f31423a;

    private r() {
    }

    public static synchronized r e() {
        try {
            if (f31423a == null) {
                f31423a = new r();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f31423a;
    }

    @Override
    protected String a() {
        return "com.google.firebase.perf.TraceEventCountBackground";
    }

    @Override
    protected String c() {
        return "fpr_rl_trace_event_count_bg";
    }

    protected Long d() {
        return 30L;
    }
}
