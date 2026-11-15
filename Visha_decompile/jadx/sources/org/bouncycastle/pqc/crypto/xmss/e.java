package org.bouncycastle.pqc.crypto.xmss;

import defpackage.cv7;

public abstract class e {
    public final int a;
    public final long b;
    public final int c;
    public final int d;

    public static abstract class a {
        public final int a;
        public int b = 0;
        public long c = 0;
        public int d = 0;

        public a(int i) {
            this.a = i;
        }

        public abstract a e();

        public a f(int i) {
            this.d = i;
            return e();
        }

        public a g(int i) {
            this.b = i;
            return e();
        }

        public a h(long j) {
            this.c = j;
            return e();
        }
    }

    public e(a aVar) {
        this.a = aVar.b;
        this.b = aVar.c;
        this.c = aVar.a;
        this.d = aVar.d;
    }

    public final int a() {
        return this.d;
    }

    public final int b() {
        return this.a;
    }

    public final long c() {
        return this.b;
    }

    public byte[] d() {
        byte[] bArr = new byte[32];
        cv7.c(this.a, bArr, 0);
        cv7.i(this.b, bArr, 4);
        cv7.c(this.c, bArr, 12);
        cv7.c(this.d, bArr, 28);
        return bArr;
    }
}
