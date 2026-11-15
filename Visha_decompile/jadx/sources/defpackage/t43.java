package defpackage;

import java.math.BigInteger;
import java.security.SecureRandom;
import java.util.Collections;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Random;
import java.util.Set;

public abstract class t43 {
    public vv3 a;
    public w43 b;
    public w43 c;
    public BigInteger d;
    public BigInteger e;
    public int f = 0;
    public v43 g = null;
    public c53 h = null;

    public class a extends u2 {
        public final int a;
        public final int b;
        public final byte[] c;

        public a(int i, int i2, byte[] bArr) {
            this.a = i;
            this.b = i2;
            this.c = bArr;
        }

        @Override
        public i53 a(int i) {
            int i2;
            int i3 = this.b;
            byte[] bArr = new byte[i3];
            byte[] bArr2 = new byte[i3];
            int i4 = 0;
            for (int i5 = 0; i5 < this.a; i5++) {
                int i6 = ((i5 ^ i) - 1) >> 31;
                int i7 = 0;
                while (true) {
                    i2 = this.b;
                    if (i7 < i2) {
                        byte b = bArr[i7];
                        byte[] bArr3 = this.c;
                        bArr[i7] = (byte) (b ^ (bArr3[i4 + i7] & i6));
                        bArr2[i7] = (byte) ((bArr3[(i2 + i4) + i7] & i6) ^ bArr2[i7]);
                        i7++;
                    }
                }
                i4 += i2 * 2;
            }
            return b(bArr, bArr2);
        }

        public final i53 b(byte[] bArr, byte[] bArr2) {
            t43 t43Var = t43.this;
            return t43Var.h(t43Var.l(new BigInteger(1, bArr)), t43.this.l(new BigInteger(1, bArr2)));
        }

        @Override
        public int getSize() {
            return this.a;
        }
    }

    public static abstract class b extends t43 {
        public BigInteger[] i;

        public b(int i, int i2, int i3, int i4) {
            super(C(i, i2, i3, i4));
            this.i = null;
            if (qi8.c("org.bouncycastle.ec.disable")) {
                throw new UnsupportedOperationException("F2M disabled by \"org.bouncycastle.ec.disable\"");
            }
            if (qi8.c("org.bouncycastle.ec.disable_f2m")) {
                throw new UnsupportedOperationException("F2M disabled by \"org.bouncycastle.ec.disable_f2m\"");
            }
        }

        public static vv3 C(int i, int i2, int i3, int i4) {
            if (i <= qi8.a("org.bouncycastle.ec.max_f2m_field_size", 1142)) {
                return wv3.a((i3 | i4) == 0 ? new int[]{0, i2, i} : new int[]{0, i2, i3, i4, i});
            }
            throw new IllegalArgumentException("field size out of range: " + i);
        }

        public static BigInteger D(SecureRandom secureRandom, int i) {
            BigInteger bigIntegerD;
            do {
                bigIntegerD = ge0.d(i, secureRandom);
            } while (bigIntegerD.signum() <= 0);
            return bigIntegerD;
        }

        public w43 E(w43 w43Var) {
            w43 w43VarA;
            w43.a aVar = (w43.a) w43Var;
            boolean zV = aVar.v();
            if (zV && aVar.w() != 0) {
                return null;
            }
            int iR = r();
            if ((iR & 1) != 0) {
                w43 w43VarU = aVar.u();
                if (zV || w43VarU.o().a(w43VarU).a(w43Var).i()) {
                    return w43VarU;
                }
                return null;
            }
            if (w43Var.i()) {
                return w43Var;
            }
            w43 w43VarL = l(s43.a);
            Random random = new Random();
            do {
                w43 w43VarL2 = l(new BigInteger(iR, random));
                w43 w43VarA2 = w43Var;
                w43VarA = w43VarL;
                for (int i = 1; i < iR; i++) {
                    w43 w43VarO = w43VarA2.o();
                    w43VarA = w43VarA.o().a(w43VarO.j(w43VarL2));
                    w43VarA2 = w43VarO.a(w43Var);
                }
                if (!w43VarA2.i()) {
                    return null;
                }
            } while (w43VarA.o().a(w43VarA).i());
            return w43VarA;
        }

        @Override
        public i53 g(BigInteger bigInteger, BigInteger bigInteger2) {
            w43 w43VarL = l(bigInteger);
            w43 w43VarL2 = l(bigInteger2);
            int iP = p();
            if (iP == 5 || iP == 6) {
                if (!w43VarL.i()) {
                    w43VarL2 = w43VarL2.d(w43VarL).a(w43VarL);
                } else if (!w43VarL2.o().equals(n())) {
                    throw new IllegalArgumentException();
                }
            }
            return h(w43VarL, w43VarL2);
        }

        @Override
        public i53 j(int i, BigInteger bigInteger) {
            w43 w43VarA;
            w43 w43VarL = l(bigInteger);
            if (w43VarL.i()) {
                w43VarA = n().n();
            } else {
                w43 w43VarE = E(w43VarL.o().g().j(n()).a(m()).a(w43VarL));
                if (w43VarE != null) {
                    if (w43VarE.s() != (i == 1)) {
                        w43VarE = w43VarE.b();
                    }
                    int iP = p();
                    w43VarA = (iP == 5 || iP == 6) ? w43VarE.a(w43VarL) : w43VarE.j(w43VarL);
                } else {
                    w43VarA = null;
                }
            }
            if (w43VarA != null) {
                return h(w43VarL, w43VarA);
            }
            throw new IllegalArgumentException("Invalid point compression");
        }

        @Override
        public w43 z(SecureRandom secureRandom) {
            int iR = r();
            return l(D(secureRandom, iR)).j(l(D(secureRandom, iR)));
        }
    }

    public static abstract class c extends t43 {
        public c(BigInteger bigInteger) {
            super(wv3.b(bigInteger));
        }

        public static BigInteger C(SecureRandom secureRandom, BigInteger bigInteger) {
            while (true) {
                BigInteger bigIntegerD = ge0.d(bigInteger.bitLength(), secureRandom);
                if (bigIntegerD.signum() > 0 && bigIntegerD.compareTo(bigInteger) < 0) {
                    return bigIntegerD;
                }
            }
        }

        @Override
        public i53 j(int i, BigInteger bigInteger) {
            w43 w43VarL = l(bigInteger);
            w43 w43VarN = w43VarL.o().a(this.b).j(w43VarL).a(this.c).n();
            if (w43VarN == null) {
                throw new IllegalArgumentException("Invalid point compression");
            }
            if (w43VarN.s() != (i == 1)) {
                w43VarN = w43VarN.m();
            }
            return h(w43VarL, w43VarN);
        }

        @Override
        public w43 z(SecureRandom secureRandom) {
            BigInteger bigIntegerB = q().b();
            return l(C(secureRandom, bigIntegerB)).j(l(C(secureRandom, bigIntegerB)));
        }
    }

    public class d {
        public int a;
        public v43 b;
        public c53 c;

        public d(int i, v43 v43Var, c53 c53Var) {
            this.a = i;
            this.b = v43Var;
            this.c = c53Var;
        }

        public t43 a() {
            if (!t43.this.A(this.a)) {
                throw new IllegalStateException("unsupported coordinate system");
            }
            t43 t43VarD = t43.this.d();
            if (t43VarD == t43.this) {
                throw new IllegalStateException("implementation returned current curve");
            }
            synchronized (t43VarD) {
                t43VarD.f = this.a;
                t43VarD.g = this.b;
                t43VarD.h = this.c;
            }
            return t43VarD;
        }

        public d b(v43 v43Var) {
            this.b = v43Var;
            return this;
        }
    }

    public static class e extends b {
        public int j;
        public int k;
        public int l;
        public int m;
        public i53.d n;

        public class a extends u2 {
            public final int a;
            public final int b;
            public final long[] c;
            public final int[] d;

            public a(int i, int i2, long[] jArr, int[] iArr) {
                this.a = i;
                this.b = i2;
                this.c = jArr;
                this.d = iArr;
            }

            @Override
            public i53 a(int i) {
                int i2;
                long[] jArrM = vy6.m(this.b);
                long[] jArrM2 = vy6.m(this.b);
                int i3 = 0;
                for (int i4 = 0; i4 < this.a; i4++) {
                    long j = ((i4 ^ i) - 1) >> 31;
                    int i5 = 0;
                    while (true) {
                        i2 = this.b;
                        if (i5 < i2) {
                            long j2 = jArrM[i5];
                            long[] jArr = this.c;
                            jArrM[i5] = j2 ^ (jArr[i3 + i5] & j);
                            jArrM2[i5] = jArrM2[i5] ^ (jArr[(i2 + i3) + i5] & j);
                            i5++;
                        }
                    }
                    i3 += i2 * 2;
                }
                return b(jArrM, jArrM2);
            }

            public final i53 b(long[] jArr, long[] jArr2) {
                return e.this.h(new w43.c(e.this.j, this.d, new yq5(jArr)), new w43.c(e.this.j, this.d, new yq5(jArr2)));
            }

            @Override
            public int getSize() {
                return this.a;
            }
        }

        public e(int i, int i2, int i3, int i4, w43 w43Var, w43 w43Var2, BigInteger bigInteger, BigInteger bigInteger2) {
            super(i, i2, i3, i4);
            this.j = i;
            this.k = i2;
            this.l = i3;
            this.m = i4;
            this.d = bigInteger;
            this.e = bigInteger2;
            this.n = new i53.d(this, null, null);
            this.b = w43Var;
            this.c = w43Var2;
            this.f = 6;
        }

        @Override
        public boolean A(int i) {
            return i == 0 || i == 1 || i == 6;
        }

        public boolean G() {
            return this.l == 0 && this.m == 0;
        }

        @Override
        public t43 d() {
            return new e(this.j, this.k, this.l, this.m, this.b, this.c, this.d, this.e);
        }

        @Override
        public b53 f(i53[] i53VarArr, int i, int i2) {
            int i3 = (this.j + 63) >>> 6;
            int[] iArr = G() ? new int[]{this.k} : new int[]{this.k, this.l, this.m};
            long[] jArr = new long[i2 * i3 * 2];
            int i4 = 0;
            for (int i5 = 0; i5 < i2; i5++) {
                i53 i53Var = i53VarArr[i + i5];
                ((w43.c) i53Var.n()).j.k(jArr, i4);
                int i6 = i4 + i3;
                ((w43.c) i53Var.o()).j.k(jArr, i6);
                i4 = i6 + i3;
            }
            return new a(i2, i3, jArr, iArr);
        }

        @Override
        public i53 h(w43 w43Var, w43 w43Var2) {
            return new i53.d(this, w43Var, w43Var2);
        }

        @Override
        public w43 l(BigInteger bigInteger) {
            if (bigInteger != null && bigInteger.signum() >= 0) {
                int iBitLength = bigInteger.bitLength();
                int i = this.j;
                if (iBitLength <= i) {
                    int i2 = this.l;
                    int i3 = this.m;
                    return new w43.c(i, (i2 | i3) == 0 ? new int[]{this.k} : new int[]{this.k, i2, i3}, new yq5(bigInteger));
                }
            }
            throw new IllegalArgumentException("x value invalid in F2m field element");
        }

        @Override
        public int r() {
            return this.j;
        }

        @Override
        public i53 s() {
            return this.n;
        }

        public e(int i, int i2, int i3, int i4, BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4) {
            super(i, i2, i3, i4);
            this.j = i;
            this.k = i2;
            this.l = i3;
            this.m = i4;
            this.d = bigInteger3;
            this.e = bigInteger4;
            this.n = new i53.d(this, null, null);
            this.b = l(bigInteger);
            this.c = l(bigInteger2);
            this.f = 6;
        }

        public e(int i, int i2, BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4) {
            this(i, i2, 0, 0, bigInteger, bigInteger2, bigInteger3, bigInteger4);
        }
    }

    public static class f extends c {
        public static final Set l = Collections.synchronizedSet(new HashSet());
        public static final ge0.a m = new ge0.a();
        public BigInteger i;
        public BigInteger j;
        public i53.e k;

        public f(BigInteger bigInteger, BigInteger bigInteger2, w43 w43Var, w43 w43Var2, BigInteger bigInteger3, BigInteger bigInteger4) {
            super(bigInteger);
            this.i = bigInteger;
            this.j = bigInteger2;
            this.k = new i53.e(this, null, null);
            this.b = w43Var;
            this.c = w43Var2;
            this.d = bigInteger3;
            this.e = bigInteger4;
            this.f = 4;
        }

        @Override
        public boolean A(int i) {
            return i == 0 || i == 1 || i == 2 || i == 4;
        }

        @Override
        public t43 d() {
            return new f(this.i, this.j, this.b, this.c, this.d, this.e);
        }

        @Override
        public i53 h(w43 w43Var, w43 w43Var2) {
            return new i53.e(this, w43Var, w43Var2);
        }

        @Override
        public w43 l(BigInteger bigInteger) {
            if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(this.i) >= 0) {
                throw new IllegalArgumentException("x value invalid for Fp field element");
            }
            return new w43.d(this.i, this.j, bigInteger);
        }

        @Override
        public int r() {
            return this.i.bitLength();
        }

        @Override
        public i53 s() {
            return this.k;
        }

        @Override
        public i53 v(i53 i53Var) {
            int iP;
            return (this == i53Var.i() || p() != 2 || i53Var.t() || !((iP = i53Var.i().p()) == 2 || iP == 3 || iP == 4)) ? super.v(i53Var) : new i53.e(this, l(i53Var.b.t()), l(i53Var.c.t()), new w43[]{l(i53Var.d[0].t())});
        }

        public f(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, BigInteger bigInteger5) {
            this(bigInteger, bigInteger2, bigInteger3, bigInteger4, bigInteger5, false);
        }

        public f(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, BigInteger bigInteger5, boolean z) {
            super(bigInteger);
            if (z) {
                this.i = bigInteger;
                l.add(bigInteger);
            } else {
                if (!l.contains(bigInteger)) {
                    ge0.a aVar = m;
                    if (!aVar.b(bigInteger)) {
                        int iA = qi8.a("org.bouncycastle.ec.fp_max_size", 1042);
                        int iA2 = qi8.a("org.bouncycastle.ec.fp_certainty", 100);
                        int iBitLength = bigInteger.bitLength();
                        if (iA < iBitLength) {
                            throw new IllegalArgumentException("Fp q value out of range");
                        }
                        if (af8.c(bigInteger) || !af8.f(bigInteger, zl1.d(), t43.t(iBitLength, iA2))) {
                            throw new IllegalArgumentException("Fp q value not prime");
                        }
                        aVar.a(bigInteger);
                    }
                }
                this.i = bigInteger;
            }
            this.j = w43.d.u(bigInteger);
            this.k = new i53.e(this, null, null);
            this.b = l(bigInteger2);
            this.c = l(bigInteger3);
            this.d = bigInteger4;
            this.e = bigInteger5;
            this.f = 4;
        }
    }

    public t43(vv3 vv3Var) {
        this.a = vv3Var;
    }

    public static int t(int i, int i2) {
        if (i >= 1536) {
            if (i2 <= 100) {
                return 3;
            }
            if (i2 <= 128) {
                return 4;
            }
            return 4 + ((i2 - 127) / 2);
        }
        if (i >= 1024) {
            if (i2 <= 100) {
                return 4;
            }
            if (i2 <= 112) {
                return 5;
            }
            return ((i2 - 111) / 2) + 5;
        }
        if (i < 512) {
            if (i2 <= 80) {
                return 40;
            }
            return 40 + ((i2 - 79) / 2);
        }
        if (i2 <= 80) {
            return 5;
        }
        if (i2 <= 100) {
            return 7;
        }
        return 7 + ((i2 - 99) / 2);
    }

    public abstract boolean A(int i);

    public i53 B(BigInteger bigInteger, BigInteger bigInteger2) {
        i53 i53VarG = g(bigInteger, bigInteger2);
        if (i53VarG.v()) {
            return i53VarG;
        }
        throw new IllegalArgumentException("Invalid point coordinates");
    }

    public void b(i53 i53Var) {
        if (i53Var == null || this != i53Var.i()) {
            throw new IllegalArgumentException("'point' must be non-null and on this curve");
        }
    }

    public void c(i53[] i53VarArr, int i, int i2) {
        if (i53VarArr == null) {
            throw new IllegalArgumentException("'points' cannot be null");
        }
        if (i < 0 || i2 < 0 || i > i53VarArr.length - i2) {
            throw new IllegalArgumentException("invalid range specified for 'points'");
        }
        for (int i3 = 0; i3 < i2; i3++) {
            i53 i53Var = i53VarArr[i + i3];
            if (i53Var != null && this != i53Var.i()) {
                throw new IllegalArgumentException("'points' entries must be null or on this curve");
            }
        }
    }

    public abstract t43 d();

    public synchronized d e() {
        return new d(this.f, this.g, this.h);
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof t43) && k((t43) obj));
    }

    public b53 f(i53[] i53VarArr, int i, int i2) {
        int iR = (r() + 7) >>> 3;
        byte[] bArr = new byte[i2 * iR * 2];
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            i53 i53Var = i53VarArr[i + i4];
            byte[] byteArray = i53Var.n().t().toByteArray();
            byte[] byteArray2 = i53Var.o().t().toByteArray();
            int i5 = 1;
            int i6 = byteArray.length > iR ? 1 : 0;
            int length = byteArray.length - i6;
            if (byteArray2.length <= iR) {
                i5 = 0;
            }
            int length2 = byteArray2.length - i5;
            int i7 = i3 + iR;
            System.arraycopy(byteArray, i6, bArr, i7 - length, length);
            i3 = i7 + iR;
            System.arraycopy(byteArray2, i5, bArr, i3 - length2, length2);
        }
        return new a(i2, iR, bArr);
    }

    public i53 g(BigInteger bigInteger, BigInteger bigInteger2) {
        return h(l(bigInteger), l(bigInteger2));
    }

    public abstract i53 h(w43 w43Var, w43 w43Var2);

    public int hashCode() {
        return c35.c(n().t().hashCode(), 16) ^ (q().hashCode() ^ c35.c(m().t().hashCode(), 8));
    }

    public i53 i(byte[] bArr) {
        i53 i53VarS;
        int iR = (r() + 7) / 8;
        byte b2 = bArr[0];
        if (b2 != 0) {
            if (b2 == 2 || b2 == 3) {
                if (bArr.length != iR + 1) {
                    throw new IllegalArgumentException("Incorrect length for compressed encoding");
                }
                i53VarS = j(b2 & 1, ge0.f(bArr, 1, iR));
                if (!i53VarS.s(true, true)) {
                    throw new IllegalArgumentException("Invalid point");
                }
            } else if (b2 != 4) {
                if (b2 != 6 && b2 != 7) {
                    throw new IllegalArgumentException("Invalid point encoding 0x" + Integer.toString(b2, 16));
                }
                if (bArr.length != (iR * 2) + 1) {
                    throw new IllegalArgumentException("Incorrect length for hybrid encoding");
                }
                BigInteger bigIntegerF = ge0.f(bArr, 1, iR);
                BigInteger bigIntegerF2 = ge0.f(bArr, iR + 1, iR);
                if (bigIntegerF2.testBit(0) != (b2 == 7)) {
                    throw new IllegalArgumentException("Inconsistent Y coordinate in hybrid encoding");
                }
                i53VarS = B(bigIntegerF, bigIntegerF2);
            } else {
                if (bArr.length != (iR * 2) + 1) {
                    throw new IllegalArgumentException("Incorrect length for uncompressed encoding");
                }
                i53VarS = B(ge0.f(bArr, 1, iR), ge0.f(bArr, iR + 1, iR));
            }
        } else {
            if (bArr.length != 1) {
                throw new IllegalArgumentException("Incorrect length for infinity encoding");
            }
            i53VarS = s();
        }
        if (b2 == 0 || !i53VarS.t()) {
            return i53VarS;
        }
        throw new IllegalArgumentException("Invalid infinity encoding");
    }

    public abstract i53 j(int i, BigInteger bigInteger);

    public boolean k(t43 t43Var) {
        return this == t43Var || (t43Var != null && q().equals(t43Var.q()) && m().t().equals(t43Var.m().t()) && n().t().equals(t43Var.n().t()));
    }

    public abstract w43 l(BigInteger bigInteger);

    public w43 m() {
        return this.b;
    }

    public w43 n() {
        return this.c;
    }

    public BigInteger o() {
        return this.e;
    }

    public int p() {
        return this.f;
    }

    public vv3 q() {
        return this.a;
    }

    public abstract int r();

    public abstract i53 s();

    public BigInteger u() {
        return this.d;
    }

    public i53 v(i53 i53Var) {
        if (this == i53Var.i()) {
            return i53Var;
        }
        if (i53Var.t()) {
            return s();
        }
        i53 i53VarY = i53Var.y();
        return g(i53VarY.p().t(), i53VarY.q().t());
    }

    public void w(i53[] i53VarArr) {
        x(i53VarArr, 0, i53VarArr.length, null);
    }

    public void x(i53[] i53VarArr, int i, int i2, w43 w43Var) {
        c(i53VarArr, i, i2);
        int iP = p();
        if (iP == 0 || iP == 5) {
            if (w43Var != null) {
                throw new IllegalArgumentException("'iso' not valid for affine coordinates");
            }
            return;
        }
        w43[] w43VarArr = new w43[i2];
        int[] iArr = new int[i2];
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            int i5 = i + i4;
            i53 i53Var = i53VarArr[i5];
            if (i53Var != null && (w43Var != null || !i53Var.u())) {
                w43VarArr[i3] = i53Var.r(0);
                iArr[i3] = i5;
                i3++;
            }
        }
        if (i3 == 0) {
            return;
        }
        r43.g(w43VarArr, 0, i3, w43Var);
        for (int i6 = 0; i6 < i3; i6++) {
            int i7 = iArr[i6];
            i53VarArr[i7] = i53VarArr[i7].z(w43VarArr[i6]);
        }
    }

    public qd8 y(i53 i53Var, String str, pd8 pd8Var) {
        Hashtable hashtable;
        qd8 qd8VarA;
        b(i53Var);
        synchronized (i53Var) {
            try {
                hashtable = i53Var.e;
                if (hashtable == null) {
                    hashtable = new Hashtable(4);
                    i53Var.e = hashtable;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        synchronized (hashtable) {
            try {
                qd8 qd8Var = (qd8) hashtable.get(str);
                qd8VarA = pd8Var.a(qd8Var);
                if (qd8VarA != qd8Var) {
                    hashtable.put(str, qd8VarA);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return qd8VarA;
    }

    public abstract w43 z(SecureRandom secureRandom);
}
