package com.google.firebase.installations.remote;

public abstract class TokenResult {

    public enum ResponseCode {
        OK,
        BAD_CONFIG,
        AUTH_ERROR
    }

    public static abstract class a {
        public abstract TokenResult a();

        public abstract a b(ResponseCode responseCode);

        public abstract a c(String str);

        public abstract a d(long j10);
    }

    public static a a() {
        return new b.C0419b().d(0L);
    }

    public abstract ResponseCode b();

    public abstract String c();

    public abstract long d();
}
