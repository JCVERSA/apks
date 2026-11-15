package com.google.firebase.perf.config;

public final class p extends u {

    private static p f31421a;

    private p() {
    }

    public static synchronized p f() {
        try {
            if (f31421a == null) {
                f31421a = new p();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f31421a;
    }

    @Override
    protected String a() {
        return "com.google.firebase.perf.SessionsMemoryCaptureFrequencyForegroundMs";
    }

    @Override
    protected String b() {
        return "sessions_memory_capture_frequency_fg_ms";
    }

    @Override
    protected String c() {
        return "fpr_session_gauge_memory_capture_frequency_fg_ms";
    }

    protected Long d() {
        return 100L;
    }

    protected Long e() {
        return Long.valueOf(d().longValue() * 3);
    }
}
