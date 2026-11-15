package defpackage;

import java.io.IOException;
import org.bouncycastle.pqc.crypto.xmss.BDSStateMap;

public final class frc extends brc implements y93 {
    public final drc d;
    public final byte[] e;
    public final byte[] f;
    public final byte[] g;
    public final byte[] h;
    public volatile long i;
    public volatile BDSStateMap j;
    public volatile boolean k;

    public static class b {
        public final drc a;
        public long b = 0;
        public long c = -1;
        public byte[] d = null;
        public byte[] e = null;
        public byte[] f = null;
        public byte[] g = null;
        public BDSStateMap h = null;
        public byte[] i = null;
        public jrc j = null;

        public b(drc drcVar) {
            this.a = drcVar;
        }

        public frc k() {
            return new frc(this);
        }

        public b l(BDSStateMap bDSStateMap) {
            if (bDSStateMap.getMaxIndex() == 0) {
                this.h = new BDSStateMap(bDSStateMap, (1 << this.a.a()) - 1);
            } else {
                this.h = bDSStateMap;
            }
            return this;
        }

        public b m(long j) {
            this.b = j;
            return this;
        }

        public b n(long j) {
            this.c = j;
            return this;
        }

        public b o(byte[] bArr) {
            this.f = nrc.c(bArr);
            return this;
        }

        public b p(byte[] bArr) {
            this.g = nrc.c(bArr);
            return this;
        }

        public b q(byte[] bArr) {
            this.e = nrc.c(bArr);
            return this;
        }

        public b r(byte[] bArr) {
            this.d = nrc.c(bArr);
            return this;
        }
    }

    public frc(b bVar) {
        super(true, bVar.a.e());
        drc drcVar = bVar.a;
        this.d = drcVar;
        if (drcVar == null) {
            throw new NullPointerException("params == null");
        }
        int iF = drcVar.f();
        byte[] bArr = bVar.i;
        if (bArr != null) {
            if (bVar.j == null) {
                throw new NullPointerException("xmss == null");
            }
            int iA = drcVar.a();
            int i = (iA + 7) / 8;
            this.i = nrc.a(bArr, 0, i);
            if (!nrc.l(iA, this.i)) {
                throw new IllegalArgumentException("index out of bounds");
            }
            this.e = nrc.g(bArr, i, iF);
            int i2 = i + iF;
            this.f = nrc.g(bArr, i2, iF);
            int i3 = i2 + iF;
            this.g = nrc.g(bArr, i3, iF);
            int i4 = i3 + iF;
            this.h = nrc.g(bArr, i4, iF);
            int i5 = i4 + iF;
            try {
                this.j = ((BDSStateMap) nrc.f(nrc.g(bArr, i5, bArr.length - i5), BDSStateMap.class)).withWOTSDigest(bVar.j.g());
                return;
            } catch (IOException e) {
                throw new IllegalArgumentException(e.getMessage(), e);
            } catch (ClassNotFoundException e2) {
                throw new IllegalArgumentException(e2.getMessage(), e2);
            }
        }
        this.i = bVar.b;
        byte[] bArr2 = bVar.d;
        if (bArr2 == null) {
            this.e = new byte[iF];
        } else {
            if (bArr2.length != iF) {
                throw new IllegalArgumentException("size of secretKeySeed needs to be equal size of digest");
            }
            this.e = bArr2;
        }
        byte[] bArr3 = bVar.e;
        if (bArr3 == null) {
            this.f = new byte[iF];
        } else {
            if (bArr3.length != iF) {
                throw new IllegalArgumentException("size of secretKeyPRF needs to be equal size of digest");
            }
            this.f = bArr3;
        }
        byte[] bArr4 = bVar.f;
        if (bArr4 == null) {
            this.g = new byte[iF];
        } else {
            if (bArr4.length != iF) {
                throw new IllegalArgumentException("size of publicSeed needs to be equal size of digest");
            }
            this.g = bArr4;
        }
        byte[] bArr5 = bVar.g;
        if (bArr5 == null) {
            this.h = new byte[iF];
        } else {
            if (bArr5.length != iF) {
                throw new IllegalArgumentException("size of root needs to be equal size of digest");
            }
            this.h = bArr5;
        }
        BDSStateMap bDSStateMap = bVar.h;
        if (bDSStateMap == null) {
            bDSStateMap = (!nrc.l(drcVar.a(), bVar.b) || bArr4 == null || bArr2 == null) ? new BDSStateMap(bVar.c + 1) : new BDSStateMap(drcVar, bVar.b, bArr4, bArr2);
        }
        this.j = bDSStateMap;
        if (bVar.c >= 0 && bVar.c != this.j.getMaxIndex()) {
            throw new IllegalArgumentException("maxIndex set but not reflected in state");
        }
    }

    public frc c(int i) {
        frc frcVarK;
        if (i < 1) {
            throw new IllegalArgumentException("cannot ask for a shard with 0 keys");
        }
        synchronized (this) {
            long j = i;
            try {
                if (j > f()) {
                    throw new IllegalArgumentException("usageCount exceeds usages remaining");
                }
                frcVarK = new b(this.d).r(this.e).q(this.f).o(this.g).p(this.h).m(d()).l(new BDSStateMap(this.j, (d() + j) - 1)).k();
                for (int i2 = 0; i2 != i; i2++) {
                    g();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return frcVarK;
    }

    public long d() {
        return this.i;
    }

    public drc e() {
        return this.d;
    }

    public long f() {
        long maxIndex;
        synchronized (this) {
            maxIndex = (this.j.getMaxIndex() - d()) + 1;
        }
        return maxIndex;
    }

    public frc g() {
        synchronized (this) {
            try {
                if (d() < this.j.getMaxIndex()) {
                    this.j.updateState(this.d, this.i, this.g, this.e);
                    this.i++;
                } else {
                    this.i = this.j.getMaxIndex() + 1;
                    this.j = new BDSStateMap(this.j.getMaxIndex());
                }
                this.k = false;
            } catch (Throwable th) {
                throw th;
            }
        }
        return this;
    }

    @Override
    public byte[] getEncoded() {
        byte[] bArrH;
        synchronized (this) {
            bArrH = h();
        }
        return bArrH;
    }

    public byte[] h() {
        byte[] bArrK;
        synchronized (this) {
            try {
                int iF = this.d.f();
                int iA = (this.d.a() + 7) / 8;
                byte[] bArr = new byte[iA + iF + iF + iF + iF];
                nrc.e(bArr, nrc.q(this.i, iA), 0);
                nrc.e(bArr, this.e, iA);
                int i = iA + iF;
                nrc.e(bArr, this.f, i);
                int i2 = i + iF;
                nrc.e(bArr, this.g, i2);
                nrc.e(bArr, this.h, i2 + iF);
                try {
                    bArrK = ci.k(bArr, nrc.p(this.j));
                } catch (IOException e) {
                    throw new IllegalStateException("error serializing bds state: " + e.getMessage(), e);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return bArrK;
    }
}
