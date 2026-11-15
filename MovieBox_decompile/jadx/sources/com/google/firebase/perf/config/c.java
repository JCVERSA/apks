package com.google.firebase.perf.config;

public final class c extends u {

    private static c f31408a;

    private c() {
    }

    protected static synchronized c d() {
        try {
            if (f31408a == null) {
                f31408a = new c();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f31408a;
    }

    @Override
    protected String a() {
        return "isEnabled";
    }

    @Override
    protected String b() {
        return "firebase_performance_collection_enabled";
    }
}
