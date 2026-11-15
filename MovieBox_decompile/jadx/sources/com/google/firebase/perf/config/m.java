package com.google.firebase.perf.config;

public final class m extends u {

    private static m f31418a;

    private m() {
    }

    public static synchronized m f() {
        try {
            if (f31418a == null) {
                f31418a = new m();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f31418a;
    }

    @Override
    protected String a() {
        return "com.google.firebase.perf.SessionsCpuCaptureFrequencyForegroundMs";
    }

    @Override
    protected String b() {
        return "sessions_cpu_capture_frequency_fg_ms";
    }

    @Override
    protected String c() {
        return "fpr_session_gauge_cpu_capture_frequency_fg_ms";
    }

    protected Long d() {
        return 100L;
    }

    protected Long e() {
        return Long.valueOf(d().longValue() * 3);
    }
}
