package com.google.firebase.perf.config;

public final class h extends u {

    private static h f31413a;

    private h() {
    }

    protected static synchronized h f() {
        try {
            if (f31413a == null) {
                f31413a = new h();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f31413a;
    }

    @Override
    protected String a() {
        return "com.google.firebase.perf.NetworkRequestSamplingRate";
    }

    @Override
    protected String c() {
        return "fpr_vc_network_request_sampling_rate";
    }

    protected Double d() {
        return Double.valueOf(1.0d);
    }

    protected Double e() {
        return Double.valueOf(d().doubleValue() / 1000.0d);
    }
}
