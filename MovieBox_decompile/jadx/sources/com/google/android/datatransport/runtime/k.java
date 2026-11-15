package com.google.android.datatransport.runtime;

import java.util.concurrent.Executor;

public final class k implements w8.b {

    private static final class a {

        private static final k f23746a = new k();
    }

    public static k a() {
        return a.f23746a;
    }

    public static Executor b() {
        return (Executor) w8.d.d(j.a());
    }

    @Override
    public Executor get() {
        return b();
    }
}
