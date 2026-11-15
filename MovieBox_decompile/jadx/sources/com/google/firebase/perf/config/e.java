package com.google.firebase.perf.config;

public final class e extends u {

    private static e f31410a;

    private e() {
    }

    protected static synchronized e e() {
        try {
            if (f31410a == null) {
                f31410a = new e();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f31410a;
    }

    @Override
    protected String a() {
        return "com.google.firebase.perf.FragmentSamplingRate";
    }

    @Override
    protected String b() {
        return "fragment_sampling_percentage";
    }

    @Override
    protected String c() {
        return "fpr_vc_fragment_sampling_rate";
    }

    protected Double d() {
        return Double.valueOf(0.0d);
    }
}
