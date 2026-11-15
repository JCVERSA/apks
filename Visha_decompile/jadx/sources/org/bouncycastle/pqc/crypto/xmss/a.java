package org.bouncycastle.pqc.crypto.xmss;

import defpackage.cv7;

public final class a extends e {
    public final int e;
    public final int f;
    public final int g;

    public static class b extends e.a {
        public int e;
        public int f;

        public b() {
            super(2);
            this.e = 0;
            this.f = 0;
        }

        public e k() {
            return new a(this);
        }

        @Override
        public b e() {
            return this;
        }

        public b m(int i) {
            this.e = i;
            return this;
        }

        public b n(int i) {
            this.f = i;
            return this;
        }
    }

    public a(b bVar) {
        super(bVar);
        this.e = 0;
        this.f = bVar.e;
        this.g = bVar.f;
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
}
