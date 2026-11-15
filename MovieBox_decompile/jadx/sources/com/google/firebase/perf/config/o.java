package com.google.firebase.perf.config;

public final class o extends u {

    private static o f31420a;

    private o() {
    }

    public static synchronized o e() {
        try {
            if (f31420a == null) {
                f31420a = new o();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f31420a;
    }

    @Override
    protected String a() {
        return "com.google.firebase.perf.SessionsMemoryCaptureFrequencyBackgroundMs";
    }

    @Override
    protected String b() {
        return "sessions_memory_capture_frequency_bg_ms";
    }

    @Override
    protected String c() {
        return "fpr_session_gauge_memory_capture_frequency_bg_ms";
    }

    protected Long d() {
        return 0L;
    }
}
