package com.google.firebase.perf.config;

public final class j extends u {

    private static j f31415a;

    protected j() {
    }

    protected static synchronized j e() {
        try {
            if (f31415a == null) {
                f31415a = new j();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f31415a;
    }

    @Override
    protected String a() {
        return "com.google.firebase.perf.SdkDisabledVersions";
    }

    @Override
    protected String c() {
        return "fpr_disabled_android_versions";
    }

    protected String d() {
        return "";
    }
}
