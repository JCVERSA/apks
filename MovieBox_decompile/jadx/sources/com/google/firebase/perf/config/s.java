package com.google.firebase.perf.config;

public final class s extends u {

    private static s f31424a;

    private s() {
    }

    public static synchronized s e() {
        try {
            if (f31424a == null) {
                f31424a = new s();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f31424a;
    }

    @Override
    protected String a() {
        return "com.google.firebase.perf.TraceEventCountForeground";
    }

    @Override
    protected String c() {
        return "fpr_rl_trace_event_count_fg";
    }

    protected Long d() {
        return 300L;
    }
}
