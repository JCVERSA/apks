package org.bouncycastle.pqc.crypto.xmss;

import defpackage.cv7;

public final class c extends e {
    public final int e;
    public final int f;
    public final int g;

    public static class b extends e.a {
        public int e;
        public int f;
        public int g;

        public b() {
            super(0);
            this.e = 0;
            this.f = 0;
            this.g = 0;
        }

        public e l() {
            return new c(this);
        }

        @Override
        public b e() {
            return this;
        }

        public b n(int i) {
            this.f = i;
            return this;
        }

        public b o(int i) {
            this.g = i;
            return this;
        }

        public b p(int i) {
            this.e = i;
            return this;
        }
    }

    public c(b bVar) {
        super(bVar);
        this.e = bVar.e;
        this.f = bVar.f;
        this.g = bVar.g;
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
        return this.f;
    }

    public int f() {
        return this.g;
    }

    public int g() {
        return this.e;
    }
}
