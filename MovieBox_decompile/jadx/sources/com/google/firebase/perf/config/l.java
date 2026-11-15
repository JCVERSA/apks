package com.google.firebase.perf.config;

public final class l extends u {

    private static l f31417a;

    private l() {
    }

    public static synchronized l e() {
        try {
            if (f31417a == null) {
                f31417a = new l();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f31417a;
    }

    @Override
    protected String a() {
        return "com.google.firebase.perf.SessionsCpuCaptureFrequencyBackgroundMs";
    }

    @Override
    protected String b() {
        return "sessions_cpu_capture_frequency_bg_ms";
    }

    @Override
    protected String c() {
        return "fpr_session_gauge_cpu_capture_frequency_bg_ms";
    }

    protected Long d() {
        return 0L;
    }
}
