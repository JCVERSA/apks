package org.bouncycastle.pqc.crypto.xmss;

import defpackage.cv7;

public final class b extends e {
    public final int e;
    public final int f;
    public final int g;

    public static class C0434b extends e.a {
        public int e;
        public int f;
        public int g;

        public C0434b() {
            super(1);
            this.e = 0;
            this.f = 0;
            this.g = 0;
        }

        public e l() {
            return new b(this);
        }

        @Override
        public C0434b e() {
            return this;
        }

        public C0434b n(int i) {
            this.e = i;
            return this;
        }

        public C0434b o(int i) {
            this.f = i;
            return this;
        }

        public C0434b p(int i) {
            this.g = i;
            return this;
        }
    }

    public b(C0434b c0434b) {
        super(c0434b);
        this.e = c0434b.e;
        this.f = c0434b.f;
        this.g = c0434b.g;
    }

    @Override
    public byte[] d() {
        byte[] bArrD = super.d();
        cv7.c(this.e, bArrD, 16);
        cv7.c(this.f, bArrD, 20);
        cv7.c(this.g, bArrD, 24);
        return bArrD;
    }

    public int e() {
        return this.e;
    }

    public int f() {
        return this.f;
    }

    public int g() {
        return this.g;
    }
}
