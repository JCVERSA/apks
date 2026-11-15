package com.google.firebase.perf.config;

public final class d extends u {

    private static d f31409a;

    private d() {
    }

    protected static synchronized d e() {
        try {
            if (f31409a == null) {
                f31409a = new d();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f31409a;
    }

    @Override
    protected String a() {
        return "com.google.firebase.perf.ExperimentTTID";
    }

    @Override
    protected String b() {
        return "experiment_app_start_ttid";
    }

    @Override
    protected String c() {
        return "fpr_experiment_app_start_ttid";
    }

    protected Boolean d() {
        return Boolean.FALSE;
    }
}
