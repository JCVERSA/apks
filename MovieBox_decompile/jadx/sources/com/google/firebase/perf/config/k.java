package com.google.firebase.perf.config;

public final class k extends u {

    private static k f31416a;

    protected k() {
    }

    protected static synchronized k e() {
        try {
            if (f31416a == null) {
                f31416a = new k();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f31416a;
    }

    @Override
    protected String a() {
        return "com.google.firebase.perf.SdkEnabled";
    }

    @Override
    protected String c() {
        return "fpr_enabled";
    }

    protected Boolean d() {
        return Boolean.TRUE;
    }
}
