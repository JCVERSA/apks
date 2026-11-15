package com.google.firebase.perf.config;

public final class n extends u {

    private static n f31419a;

    private n() {
    }

    public static synchronized n e() {
        try {
            if (f31419a == null) {
                f31419a = new n();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f31419a;
    }

    @Override
    protected String a() {
        return "com.google.firebase.perf.SessionsMaxDurationMinutes";
    }

    @Override
    protected String b() {
        return "sessions_max_length_minutes";
    }

    @Override
    protected String c() {
        return "fpr_session_max_duration_min";
    }

    protected Long d() {
        return 240L;
    }
}
