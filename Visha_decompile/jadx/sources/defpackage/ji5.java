package defpackage;

import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Map;
import java.util.WeakHashMap;
import org.bouncycastle.pqc.crypto.ExhaustedPrivateKeyException;
import org.bouncycastle.pqc.crypto.lms.LMOtsParameters;
import org.bouncycastle.pqc.crypto.lms.LMSigParameters;

public class ji5 extends ii5 {
    public static a m;
    public static a[] n;
    public final byte[] c;
    public final LMSigParameters d;
    public final LMOtsParameters e;
    public final int f;
    public final byte[] g;
    public final Map h;
    public final int i;
    public final sb2 j;
    public int k;
    public ki5 l;

    public static class a {
        public final int a;

        public a(int i) {
            this.a = i;
        }

        public boolean equals(Object obj) {
            return (obj instanceof a) && ((a) obj).a == this.a;
        }

        public int hashCode() {
            return this.a;
        }
    }

    static {
        a aVar = new a(1);
        m = aVar;
        a[] aVarArr = new a[129];
        n = aVarArr;
        aVarArr[1] = aVar;
        int i = 2;
        while (true) {
            a[] aVarArr2 = n;
            if (i >= aVarArr2.length) {
                return;
            }
            aVarArr2[i] = new a(i);
            i++;
        }
    }

    public ji5(ji5 ji5Var, int i, int i2) {
        super(true);
        LMSigParameters lMSigParameters = ji5Var.d;
        this.d = lMSigParameters;
        this.e = ji5Var.e;
        this.k = i;
        this.c = ji5Var.c;
        this.f = i2;
        this.g = ji5Var.g;
        this.i = 1 << lMSigParameters.c();
        this.h = ji5Var.h;
        this.j = tb2.d(lMSigParameters);
        this.l = ji5Var.l;
    }

    public static ji5 i(Object obj) throws Throwable {
        if (obj instanceof ji5) {
            return (ji5) obj;
        }
        if (obj instanceof DataInputStream) {
            DataInputStream dataInputStream = (DataInputStream) obj;
            if (dataInputStream.readInt() != 0) {
                throw new IllegalStateException("expected version 0 lms private key");
            }
            LMSigParameters lMSigParametersE = LMSigParameters.e(dataInputStream.readInt());
            LMOtsParameters lMOtsParametersF = LMOtsParameters.f(dataInputStream.readInt());
            byte[] bArr = new byte[16];
            dataInputStream.readFully(bArr);
            int i = dataInputStream.readInt();
            int i2 = dataInputStream.readInt();
            int i3 = dataInputStream.readInt();
            if (i3 < 0) {
                throw new IllegalStateException("secret length less than zero");
            }
            if (i3 <= dataInputStream.available()) {
                byte[] bArr2 = new byte[i3];
                dataInputStream.readFully(bArr2);
                return new ji5(lMSigParametersE, lMOtsParametersF, i, bArr, i2, bArr2);
            }
            throw new IOException("secret length exceeded " + dataInputStream.available());
        }
        if (!(obj instanceof byte[])) {
            if (obj instanceof InputStream) {
                return i(fz9.c((InputStream) obj));
            }
            throw new IllegalArgumentException("cannot parse " + obj);
        }
        DataInputStream dataInputStream2 = null;
        try {
            DataInputStream dataInputStream3 = new DataInputStream(new ByteArrayInputStream((byte[]) obj));
            try {
                ji5 ji5VarI = i(dataInputStream3);
                dataInputStream3.close();
                return ji5VarI;
            } catch (Throwable th) {
                th = th;
                dataInputStream2 = dataInputStream3;
                if (dataInputStream2 != null) {
                    dataInputStream2.close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static ji5 j(byte[] bArr, byte[] bArr2) throws Throwable {
        ji5 ji5VarI = i(bArr);
        ji5VarI.l = ki5.b(bArr2);
        return ji5VarI;
    }

    public final byte[] b(int i) {
        int iC = 1 << o().c();
        if (i >= iC) {
            fn5.a(g(), this.j);
            fn5.c(i, this.j);
            fn5.b((short) -32126, this.j);
            fn5.a(mi5.d(m(), g(), i - iC, k()), this.j);
            byte[] bArr = new byte[this.j.g()];
            this.j.a(bArr, 0);
            return bArr;
        }
        int i2 = i * 2;
        byte[] bArrD = d(i2);
        byte[] bArrD2 = d(i2 + 1);
        fn5.a(g(), this.j);
        fn5.c(i, this.j);
        fn5.b((short) -31869, this.j);
        fn5.a(bArrD, this.j);
        fn5.a(bArrD2, this.j);
        byte[] bArr2 = new byte[this.j.g()];
        this.j.a(bArr2, 0);
        return bArr2;
    }

    public ji5 c(int i) {
        ji5 ji5Var;
        synchronized (this) {
            try {
                int i2 = this.k;
                if (i2 + i >= this.f) {
                    throw new IllegalArgumentException("usageCount exceeds usages remaining");
                }
                ji5Var = new ji5(this, i2, i2 + i);
                this.k += i;
            } catch (Throwable th) {
                throw th;
            }
        }
        return ji5Var;
    }

    public byte[] d(int i) {
        if (i >= this.i) {
            return b(i);
        }
        a[] aVarArr = n;
        return e(i < aVarArr.length ? aVarArr[i] : new a(i));
    }

    public final byte[] e(a aVar) {
        synchronized (this.h) {
            try {
                byte[] bArr = (byte[]) this.h.get(aVar);
                if (bArr != null) {
                    return bArr;
                }
                byte[] bArrB = b(aVar.a);
                this.h.put(aVar, bArrB);
                return bArrB;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ji5 ji5Var = (ji5) obj;
        if (this.k != ji5Var.k || this.f != ji5Var.f || !ci.b(this.c, ji5Var.c)) {
            return false;
        }
        LMSigParameters lMSigParameters = this.d;
        if (lMSigParameters == null ? ji5Var.d != null : !lMSigParameters.equals(ji5Var.d)) {
            return false;
        }
        LMOtsParameters lMOtsParameters = this.e;
        if (lMOtsParameters == null ? ji5Var.e == null : lMOtsParameters.equals(ji5Var.e)) {
            return ci.b(this.g, ji5Var.g);
        }
        return false;
    }

    public gi5 f() {
        int iC = o().c();
        int iH = h();
        di5 di5VarL = l();
        int i = (1 << iC) + iH;
        byte[][] bArr = new byte[iC][];
        for (int i2 = 0; i2 < iC; i2++) {
            bArr[i2] = d((i / (1 << i2)) ^ 1);
        }
        return di5VarL.e(o(), bArr);
    }

    public byte[] g() {
        return ci.f(this.c);
    }

    @Override
    public byte[] getEncoded() {
        return zc1.f().i(0).i(this.d.f()).i(this.e.g()).d(this.c).i(this.k).i(this.f).i(this.g.length).d(this.g).b();
    }

    public synchronized int h() {
        return this.k;
    }

    public int hashCode() {
        int iV = ((this.k * 31) + ci.v(this.c)) * 31;
        LMSigParameters lMSigParameters = this.d;
        int iHashCode = (iV + (lMSigParameters != null ? lMSigParameters.hashCode() : 0)) * 31;
        LMOtsParameters lMOtsParameters = this.e;
        return ((((iHashCode + (lMOtsParameters != null ? lMOtsParameters.hashCode() : 0)) * 31) + this.f) * 31) + ci.v(this.g);
    }

    public byte[] k() {
        return ci.f(this.g);
    }

    public di5 l() {
        di5 di5Var;
        synchronized (this) {
            try {
                int i = this.k;
                if (i >= this.f) {
                    throw new ExhaustedPrivateKeyException("ots private key exhausted");
                }
                di5Var = new di5(this.e, this.c, i, this.g);
                q();
            } catch (Throwable th) {
                throw th;
            }
        }
        return di5Var;
    }

    public LMOtsParameters m() {
        return this.e;
    }

    public ki5 n() {
        ki5 ki5Var;
        synchronized (this) {
            try {
                if (this.l == null) {
                    this.l = new ki5(this.d, this.e, e(m), this.c);
                }
                ki5Var = this.l;
            } catch (Throwable th) {
                throw th;
            }
        }
        return ki5Var;
    }

    public LMSigParameters o() {
        return this.d;
    }

    public long p() {
        return this.f - h();
    }

    public synchronized void q() {
        this.k++;
    }

    public ji5(LMSigParameters lMSigParameters, LMOtsParameters lMOtsParameters, int i, byte[] bArr, int i2, byte[] bArr2) {
        super(true);
        this.d = lMSigParameters;
        this.e = lMOtsParameters;
        this.k = i;
        this.c = ci.f(bArr);
        this.f = i2;
        this.g = ci.f(bArr2);
        this.i = 1 << (lMSigParameters.c() + 1);
        this.h = new WeakHashMap();
        this.j = tb2.d(lMSigParameters);
    }
}
