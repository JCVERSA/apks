package com.google.firebase.remoteconfig.internal;

public class s implements ad.i {

    private final long f31740a;

    private final int f31741b;

    private final ad.j f31742c;

    public static class b {

        private long f31743a;

        private int f31744b;

        private ad.j f31745c;

        public s a() {
            return new s(this.f31743a, this.f31744b, this.f31745c);
        }

        b b(ad.j jVar) {
            this.f31745c = jVar;
            return this;
        }

        b c(int i10) {
            this.f31744b = i10;
            return this;
        }

        public b d(long j10) {
            this.f31743a = j10;
            return this;
        }

        private b() {
        }
    }

    static b b() {
        return new b();
    }

    @Override
    public int a() {
        return this.f31741b;
    }

    private s(long j10, int i10, ad.j jVar) {
        this.f31740a = j10;
        this.f31741b = i10;
        this.f31742c = jVar;
    }
}
