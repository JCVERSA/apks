package com.google.firebase.perf.config;

public final class t extends u {

    private static t f31425a;

    private t() {
    }

    protected static synchronized t f() {
        try {
            if (f31425a == null) {
                f31425a = new t();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f31425a;
    }

    @Override
    protected String a() {
        return "com.google.firebase.perf.TraceSamplingRate";
    }

    @Override
    protected String c() {
        return "fpr_vc_trace_sampling_rate";
    }

    protected Double d() {
        return Double.valueOf(1.0d);
    }

    protected Double e() {
        return Double.valueOf(d().doubleValue() / 1000.0d);
    }
}
