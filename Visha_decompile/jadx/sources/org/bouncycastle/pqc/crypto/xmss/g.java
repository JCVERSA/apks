package org.bouncycastle.pqc.crypto.xmss;

import defpackage.ci;
import defpackage.cv7;
import defpackage.jrc;
import defpackage.nrc;
import defpackage.y93;
import defpackage.yqc;
import java.io.IOException;

public final class g extends yqc implements y93 {
    public final jrc d;
    public final byte[] e;
    public final byte[] f;
    public final byte[] g;
    public final byte[] h;
    public volatile BDS i;

    public static class b {
        public final jrc a;
        public int b = 0;
        public int c = -1;
        public byte[] d = null;
        public byte[] e = null;
        public byte[] f = null;
        public byte[] g = null;
        public BDS h = null;
        public byte[] i = null;

        public b(jrc jrcVar) {
            this.a = jrcVar;
        }

        public g j() {
            return new g(this);
        }

        public b k(BDS bds) {
            this.h = bds;
            return this;
        }

        public b l(int i) {
            this.b = i;
            return this;
        }

        public b m(int i) {
            this.c = i;
            return this;
        }

        public b n(byte[] bArr) {
            this.f = nrc.c(bArr);
            return this;
        }

        public b o(byte[] bArr) {
            this.g = nrc.c(bArr);
            return this;
        }

        public b p(byte[] bArr) {
            this.e = nrc.c(bArr);
            return this;
        }

        public b q(byte[] bArr) {
            this.d = nrc.c(bArr);
            return this;
        }
    }

    public g(b bVar) {
        super(true, bVar.a.f());
        jrc jrcVar = bVar.a;
        this.d = jrcVar;
        if (jrcVar == null) {
            throw new NullPointerException("params == null");
        }
        int iH = jrcVar.h();
        byte[] bArr = bVar.i;
        if (bArr != null) {
            int iB = jrcVar.b();
            int iA = cv7.a(bArr, 0);
            if (!nrc.l(iB, iA)) {
                throw new IllegalArgumentException("index out of bounds");
            }
            this.e = nrc.g(bArr, 4, iH);
            int i = 4 + iH;
            this.f = nrc.g(bArr, i, iH);
            int i2 = i + iH;
            this.g = nrc.g(bArr, i2, iH);
            int i3 = i2 + iH;
            this.h = nrc.g(bArr, i3, iH);
            int i4 = i3 + iH;
            try {
                BDS bds = (BDS) nrc.f(nrc.g(bArr, i4, bArr.length - i4), BDS.class);
                if (bds.getIndex() != iA) {
                    throw new IllegalStateException("serialized BDS has wrong index");
                }
                this.i = bds.withWOTSDigest(bVar.a.g());
                return;
            } catch (IOException e) {
                throw new IllegalArgumentException(e.getMessage(), e);
            } catch (ClassNotFoundException e2) {
                throw new IllegalArgumentException(e2.getMessage(), e2);
            }
        }
        byte[] bArr2 = bVar.d;
        if (bArr2 == null) {
            this.e = new byte[iH];
        } else {
            if (bArr2.length != iH) {
                throw new IllegalArgumentException("size of secretKeySeed needs to be equal size of digest");
            }
            this.e = bArr2;
        }
        byte[] bArr3 = bVar.e;
        if (bArr3 == null) {
            this.f = new byte[iH];
        } else {
            if (bArr3.length != iH) {
                throw new IllegalArgumentException("size of secretKeyPRF needs to be equal size of digest");
            }
            this.f = bArr3;
        }
        byte[] bArr4 = bVar.f;
        if (bArr4 == null) {
            this.g = new byte[iH];
        } else {
            if (bArr4.length != iH) {
                throw new IllegalArgumentException("size of publicSeed needs to be equal size of digest");
            }
            this.g = bArr4;
        }
        byte[] bArr5 = bVar.g;
        if (bArr5 == null) {
            this.h = new byte[iH];
        } else {
            if (bArr5.length != iH) {
                throw new IllegalArgumentException("size of root needs to be equal size of digest");
            }
            this.h = bArr5;
        }
        BDS bds2 = bVar.h;
        this.i = bds2 == null ? (bVar.b >= (1 << jrcVar.b()) + (-2) || bArr4 == null || bArr2 == null) ? new BDS(jrcVar, (1 << jrcVar.b()) - 1, bVar.b) : new BDS(jrcVar, bArr4, bArr2, (c) new c.b().l(), bVar.b) : bds2;
        if (bVar.c >= 0 && bVar.c != this.i.getMaxIndex()) {
            throw new IllegalArgumentException("maxIndex set but not reflected in state");
        }
    }

    public g c(int i) {
        g gVarJ;
        if (i < 1) {
            throw new IllegalArgumentException("cannot ask for a shard with 0 keys");
        }
        synchronized (this) {
            long j = i;
            try {
                if (j > f()) {
                    throw new IllegalArgumentException("usageCount exceeds usages remaining");
                }
                gVarJ = new b(this.d).q(this.e).p(this.f).n(this.g).o(this.h).l(d()).k(this.i.withMaxIndex((this.i.getIndex() + i) - 1, this.d.g())).j();
                if (j == f()) {
                    this.i = new BDS(this.d, this.i.getMaxIndex(), d() + i);
                } else {
                    c cVar = (c) new c.b().l();
                    for (int i2 = 0; i2 != i; i2++) {
                        this.i = this.i.getNextState(this.g, this.e, cVar);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return gVarJ;
    }

    public int d() {
        return this.i.getIndex();
    }

    public jrc e() {
        return this.d;
    }

    public long f() {
        long maxIndex;
        synchronized (this) {
            maxIndex = (this.i.getMaxIndex() - d()) + 1;
        }
        return maxIndex;
    }

    public byte[] g() {
        byte[] bArrK;
        synchronized (this) {
            try {
                int iH = this.d.h();
                byte[] bArr = new byte[iH + 4 + iH + iH + iH];
                cv7.c(this.i.getIndex(), bArr, 0);
                nrc.e(bArr, this.e, 4);
                int i = 4 + iH;
                nrc.e(bArr, this.f, i);
                int i2 = i + iH;
                nrc.e(bArr, this.g, i2);
                nrc.e(bArr, this.h, i2 + iH);
                try {
                    bArrK = ci.k(bArr, nrc.p(this.i));
                } catch (IOException e) {
                    throw new RuntimeException("error serializing bds state: " + e.getMessage());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return bArrK;
    }

    @Override
    public byte[] getEncoded() {
        byte[] bArrG;
        synchronized (this) {
            bArrG = g();
        }
        return bArrG;
    }
}
