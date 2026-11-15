package com.google.firebase.perf.config;

public final class q extends u {

    private static q f31422a;

    private q() {
    }

    public static synchronized q f() {
        try {
            if (f31422a == null) {
                f31422a = new q();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f31422a;
    }

    @Override
    protected String a() {
        return "com.google.firebase.perf.SessionSamplingRate";
    }

    @Override
    protected String b() {
        return "sessions_sampling_percentage";
    }

    @Override
    protected String c() {
        return "fpr_vc_session_sampling_rate";
    }

    protected Double d() {
        return Double.valueOf(0.01d);
    }

    protected Double e() {
        return Double.valueOf(d().doubleValue() / 1000.0d);
    }
}
