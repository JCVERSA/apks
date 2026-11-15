package com.google.firebase.perf.config;

public final class i extends u {

    private static i f31414a;

    private i() {
    }

    public static synchronized i e() {
        try {
            if (f31414a == null) {
                f31414a = new i();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f31414a;
    }

    @Override
    protected String a() {
        return "com.google.firebase.perf.TimeLimitSec";
    }

    @Override
    protected String c() {
        return "fpr_rl_time_limit_sec";
    }

    protected Long d() {
        return 600L;
    }
}
