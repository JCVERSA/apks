package com.google.firebase.perf.config;

public final class b extends u {

    private static b f31407a;

    private b() {
    }

    protected static synchronized b e() {
        try {
            if (f31407a == null) {
                f31407a = new b();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f31407a;
    }

    @Override
    protected String b() {
        return "firebase_performance_collection_deactivated";
    }

    protected Boolean d() {
        return Boolean.FALSE;
    }
}
