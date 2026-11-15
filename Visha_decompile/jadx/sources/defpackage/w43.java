package defpackage;

import java.math.BigInteger;
import java.util.Random;

public abstract class w43 implements s43 {

    public static abstract class a extends w43 {
        public w43 u() {
            int iF = f();
            if ((iF & 1) == 0) {
                throw new IllegalStateException("Half-trace only defined for odd m");
            }
            int i = (iF + 1) >>> 1;
            int iA = 31 - c35.a(i);
            w43 w43VarA = this;
            int i2 = 1;
            while (iA > 0) {
                w43VarA = w43VarA.q(i2 << 1).a(w43VarA);
                iA--;
                i2 = i >>> iA;
                if ((i2 & 1) != 0) {
                    w43VarA = w43VarA.q(2).a(this);
                }
            }
            return w43VarA;
        }

        public boolean v() {
            return false;
        }

        public int w() {
            int iF = f();
            int iA = 31 - c35.a(iF);
            w43 w43VarA = this;
            int i = 1;
            while (iA > 0) {
                w43VarA = w43VarA.q(i).a(w43VarA);
                iA--;
                i = iF >>> iA;
                if ((i & 1) != 0) {
                    w43VarA = w43VarA.o().a(this);
                }
            }
            if (w43VarA.i()) {
                return 0;
            }
            if (w43VarA.h()) {
                return 1;
            }
            throw new IllegalStateException("Internal error in trace calculation");
        }
    }

    public static abstract class b extends w43 {
    }

    public static class c extends a {
        public int g;
        public int h;
        public int[] i;
        public yq5 j;

        public c(int i, int[] iArr, yq5 yq5Var) {
            this.h = i;
            this.g = iArr.length == 1 ? 2 : 3;
            this.i = iArr;
            this.j = yq5Var;
        }

        @Override
        public w43 a(w43 w43Var) {
            yq5 yq5Var = (yq5) this.j.clone();
            yq5Var.g(((c) w43Var).j, 0);
            return new c(this.h, this.i, yq5Var);
        }

        @Override
        public w43 b() {
            return new c(this.h, this.i, this.j.e());
        }

        @Override
        public int c() {
            return this.j.l();
        }

        @Override
        public w43 d(w43 w43Var) {
            return j(w43Var.g());
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return this.h == cVar.h && this.g == cVar.g && ci.d(this.i, cVar.i) && this.j.equals(cVar.j);
        }

        @Override
        public int f() {
            return this.h;
        }

        @Override
        public w43 g() {
            int i = this.h;
            int[] iArr = this.i;
            return new c(i, iArr, this.j.v(i, iArr));
        }

        @Override
        public boolean h() {
            return this.j.t();
        }

        public int hashCode() {
            return ci.y(this.i) ^ (this.j.hashCode() ^ this.h);
        }

        @Override
        public boolean i() {
            return this.j.u();
        }

        @Override
        public w43 j(w43 w43Var) {
            int i = this.h;
            int[] iArr = this.i;
            return new c(i, iArr, this.j.w(((c) w43Var).j, i, iArr));
        }

        @Override
        public w43 k(w43 w43Var, w43 w43Var2, w43 w43Var3) {
            return l(w43Var, w43Var2, w43Var3);
        }

        @Override
        public w43 l(w43 w43Var, w43 w43Var2, w43 w43Var3) {
            yq5 yq5Var = this.j;
            yq5 yq5Var2 = ((c) w43Var).j;
            yq5 yq5Var3 = ((c) w43Var2).j;
            yq5 yq5Var4 = ((c) w43Var3).j;
            yq5 yq5VarZ = yq5Var.z(yq5Var2, this.h, this.i);
            yq5 yq5VarZ2 = yq5Var3.z(yq5Var4, this.h, this.i);
            if (yq5VarZ == yq5Var || yq5VarZ == yq5Var2) {
                yq5VarZ = (yq5) yq5VarZ.clone();
            }
            yq5VarZ.g(yq5VarZ2, 0);
            yq5VarZ.B(this.h, this.i);
            return new c(this.h, this.i, yq5VarZ);
        }

        @Override
        public w43 m() {
            return this;
        }

        @Override
        public w43 n() {
            return (this.j.u() || this.j.t()) ? this : q(this.h - 1);
        }

        @Override
        public w43 o() {
            int i = this.h;
            int[] iArr = this.i;
            return new c(i, iArr, this.j.x(i, iArr));
        }

        @Override
        public w43 p(w43 w43Var, w43 w43Var2) {
            yq5 yq5Var = this.j;
            yq5 yq5Var2 = ((c) w43Var).j;
            yq5 yq5Var3 = ((c) w43Var2).j;
            yq5 yq5VarM = yq5Var.M(this.h, this.i);
            yq5 yq5VarZ = yq5Var2.z(yq5Var3, this.h, this.i);
            if (yq5VarM == yq5Var) {
                yq5VarM = (yq5) yq5VarM.clone();
            }
            yq5VarM.g(yq5VarZ, 0);
            yq5VarM.B(this.h, this.i);
            return new c(this.h, this.i, yq5VarM);
        }

        @Override
        public w43 q(int i) {
            if (i < 1) {
                return this;
            }
            int i2 = this.h;
            int[] iArr = this.i;
            return new c(i2, iArr, this.j.y(i, i2, iArr));
        }

        @Override
        public w43 r(w43 w43Var) {
            return a(w43Var);
        }

        @Override
        public boolean s() {
            return this.j.P();
        }

        @Override
        public BigInteger t() {
            return this.j.Q();
        }
    }

    public static class d extends b {
        public BigInteger g;
        public BigInteger h;
        public BigInteger i;

        public d(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
            this.g = bigInteger;
            this.h = bigInteger2;
            this.i = bigInteger3;
        }

        public static BigInteger u(BigInteger bigInteger) {
            int iBitLength = bigInteger.bitLength();
            if (iBitLength < 96 || bigInteger.shiftRight(iBitLength - 64).longValue() != -1) {
                return null;
            }
            return s43.b.shiftLeft(iBitLength).subtract(bigInteger);
        }

        public BigInteger A(BigInteger bigInteger) {
            return ge0.h(this.g, bigInteger);
        }

        public BigInteger B(BigInteger bigInteger, BigInteger bigInteger2) {
            return C(bigInteger.multiply(bigInteger2));
        }

        public BigInteger C(BigInteger bigInteger) {
            if (this.h == null) {
                return bigInteger.mod(this.g);
            }
            boolean z = bigInteger.signum() < 0;
            if (z) {
                bigInteger = bigInteger.abs();
            }
            int iBitLength = this.g.bitLength();
            boolean zEquals = this.h.equals(s43.b);
            while (bigInteger.bitLength() > iBitLength + 1) {
                BigInteger bigIntegerShiftRight = bigInteger.shiftRight(iBitLength);
                BigInteger bigIntegerSubtract = bigInteger.subtract(bigIntegerShiftRight.shiftLeft(iBitLength));
                if (!zEquals) {
                    bigIntegerShiftRight = bigIntegerShiftRight.multiply(this.h);
                }
                bigInteger = bigIntegerShiftRight.add(bigIntegerSubtract);
            }
            while (bigInteger.compareTo(this.g) >= 0) {
                bigInteger = bigInteger.subtract(this.g);
            }
            return (!z || bigInteger.signum() == 0) ? bigInteger : this.g.subtract(bigInteger);
        }

        public BigInteger D(BigInteger bigInteger, BigInteger bigInteger2) {
            BigInteger bigIntegerSubtract = bigInteger.subtract(bigInteger2);
            return bigIntegerSubtract.signum() < 0 ? bigIntegerSubtract.add(this.g) : bigIntegerSubtract;
        }

        @Override
        public w43 a(w43 w43Var) {
            return new d(this.g, this.h, x(this.i, w43Var.t()));
        }

        @Override
        public w43 b() {
            BigInteger bigIntegerAdd = this.i.add(s43.b);
            if (bigIntegerAdd.compareTo(this.g) == 0) {
                bigIntegerAdd = s43.a;
            }
            return new d(this.g, this.h, bigIntegerAdd);
        }

        @Override
        public w43 d(w43 w43Var) {
            return new d(this.g, this.h, B(this.i, A(w43Var.t())));
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof d)) {
                return false;
            }
            d dVar = (d) obj;
            return this.g.equals(dVar.g) && this.i.equals(dVar.i);
        }

        @Override
        public int f() {
            return this.g.bitLength();
        }

        @Override
        public w43 g() {
            return new d(this.g, this.h, A(this.i));
        }

        public int hashCode() {
            return this.i.hashCode() ^ this.g.hashCode();
        }

        @Override
        public w43 j(w43 w43Var) {
            return new d(this.g, this.h, B(this.i, w43Var.t()));
        }

        @Override
        public w43 k(w43 w43Var, w43 w43Var2, w43 w43Var3) {
            BigInteger bigInteger = this.i;
            BigInteger bigIntegerT = w43Var.t();
            BigInteger bigIntegerT2 = w43Var2.t();
            BigInteger bigIntegerT3 = w43Var3.t();
            return new d(this.g, this.h, C(bigInteger.multiply(bigIntegerT).subtract(bigIntegerT2.multiply(bigIntegerT3))));
        }

        @Override
        public w43 l(w43 w43Var, w43 w43Var2, w43 w43Var3) {
            BigInteger bigInteger = this.i;
            BigInteger bigIntegerT = w43Var.t();
            BigInteger bigIntegerT2 = w43Var2.t();
            BigInteger bigIntegerT3 = w43Var3.t();
            return new d(this.g, this.h, C(bigInteger.multiply(bigIntegerT).add(bigIntegerT2.multiply(bigIntegerT3))));
        }

        @Override
        public w43 m() {
            if (this.i.signum() == 0) {
                return this;
            }
            BigInteger bigInteger = this.g;
            return new d(bigInteger, this.h, bigInteger.subtract(this.i));
        }

        @Override
        public w43 n() {
            if (i() || h()) {
                return this;
            }
            if (!this.g.testBit(0)) {
                throw new RuntimeException("not done yet");
            }
            if (this.g.testBit(1)) {
                BigInteger bigIntegerAdd = this.g.shiftRight(2).add(s43.b);
                BigInteger bigInteger = this.g;
                return v(new d(bigInteger, this.h, this.i.modPow(bigIntegerAdd, bigInteger)));
            }
            if (this.g.testBit(2)) {
                BigInteger bigIntegerModPow = this.i.modPow(this.g.shiftRight(3), this.g);
                BigInteger bigIntegerB = B(bigIntegerModPow, this.i);
                if (B(bigIntegerB, bigIntegerModPow).equals(s43.b)) {
                    return v(new d(this.g, this.h, bigIntegerB));
                }
                return v(new d(this.g, this.h, B(bigIntegerB, s43.c.modPow(this.g.shiftRight(2), this.g))));
            }
            BigInteger bigIntegerShiftRight = this.g.shiftRight(1);
            BigInteger bigIntegerModPow2 = this.i.modPow(bigIntegerShiftRight, this.g);
            BigInteger bigInteger2 = s43.b;
            if (!bigIntegerModPow2.equals(bigInteger2)) {
                return null;
            }
            BigInteger bigInteger3 = this.i;
            BigInteger bigIntegerY = y(y(bigInteger3));
            BigInteger bigIntegerAdd2 = bigIntegerShiftRight.add(bigInteger2);
            BigInteger bigIntegerSubtract = this.g.subtract(bigInteger2);
            Random random = new Random();
            while (true) {
                BigInteger bigInteger4 = new BigInteger(this.g.bitLength(), random);
                if (bigInteger4.compareTo(this.g) < 0 && C(bigInteger4.multiply(bigInteger4).subtract(bigIntegerY)).modPow(bigIntegerShiftRight, this.g).equals(bigIntegerSubtract)) {
                    BigInteger[] bigIntegerArrW = w(bigInteger4, bigInteger3, bigIntegerAdd2);
                    BigInteger bigInteger5 = bigIntegerArrW[0];
                    BigInteger bigInteger6 = bigIntegerArrW[1];
                    if (B(bigInteger6, bigInteger6).equals(bigIntegerY)) {
                        return new d(this.g, this.h, z(bigInteger6));
                    }
                    if (!bigInteger5.equals(s43.b) && !bigInteger5.equals(bigIntegerSubtract)) {
                        return null;
                    }
                }
            }
        }

        @Override
        public w43 o() {
            BigInteger bigInteger = this.g;
            BigInteger bigInteger2 = this.h;
            BigInteger bigInteger3 = this.i;
            return new d(bigInteger, bigInteger2, B(bigInteger3, bigInteger3));
        }

        @Override
        public w43 p(w43 w43Var, w43 w43Var2) {
            BigInteger bigInteger = this.i;
            BigInteger bigIntegerT = w43Var.t();
            BigInteger bigIntegerT2 = w43Var2.t();
            return new d(this.g, this.h, C(bigInteger.multiply(bigInteger).add(bigIntegerT.multiply(bigIntegerT2))));
        }

        @Override
        public w43 r(w43 w43Var) {
            return new d(this.g, this.h, D(this.i, w43Var.t()));
        }

        @Override
        public BigInteger t() {
            return this.i;
        }

        public final w43 v(w43 w43Var) {
            if (w43Var.o().equals(this)) {
                return w43Var;
            }
            return null;
        }

        public final BigInteger[] w(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
            int iBitLength = bigInteger3.bitLength();
            int lowestSetBit = bigInteger3.getLowestSetBit();
            BigInteger bigIntegerB = s43.b;
            BigInteger bigIntegerC = bigInteger;
            BigInteger bigIntegerB2 = bigIntegerB;
            BigInteger bigIntegerC2 = s43.c;
            BigInteger bigIntegerB3 = bigIntegerB2;
            for (int i = iBitLength - 1; i >= lowestSetBit + 1; i--) {
                bigIntegerB = B(bigIntegerB, bigIntegerB3);
                if (bigInteger3.testBit(i)) {
                    bigIntegerB3 = B(bigIntegerB, bigInteger2);
                    bigIntegerB2 = B(bigIntegerB2, bigIntegerC);
                    bigIntegerC2 = C(bigIntegerC.multiply(bigIntegerC2).subtract(bigInteger.multiply(bigIntegerB)));
                    bigIntegerC = C(bigIntegerC.multiply(bigIntegerC).subtract(bigIntegerB3.shiftLeft(1)));
                } else {
                    BigInteger bigIntegerC3 = C(bigIntegerB2.multiply(bigIntegerC2).subtract(bigIntegerB));
                    BigInteger bigIntegerC4 = C(bigIntegerC.multiply(bigIntegerC2).subtract(bigInteger.multiply(bigIntegerB)));
                    bigIntegerC2 = C(bigIntegerC2.multiply(bigIntegerC2).subtract(bigIntegerB.shiftLeft(1)));
                    bigIntegerC = bigIntegerC4;
                    bigIntegerB2 = bigIntegerC3;
                    bigIntegerB3 = bigIntegerB;
                }
            }
            BigInteger bigIntegerB4 = B(bigIntegerB, bigIntegerB3);
            BigInteger bigIntegerB5 = B(bigIntegerB4, bigInteger2);
            BigInteger bigIntegerC5 = C(bigIntegerB2.multiply(bigIntegerC2).subtract(bigIntegerB4));
            BigInteger bigIntegerC6 = C(bigIntegerC.multiply(bigIntegerC2).subtract(bigInteger.multiply(bigIntegerB4)));
            BigInteger bigIntegerB6 = B(bigIntegerB4, bigIntegerB5);
            for (int i2 = 1; i2 <= lowestSetBit; i2++) {
                bigIntegerC5 = B(bigIntegerC5, bigIntegerC6);
                bigIntegerC6 = C(bigIntegerC6.multiply(bigIntegerC6).subtract(bigIntegerB6.shiftLeft(1)));
                bigIntegerB6 = B(bigIntegerB6, bigIntegerB6);
            }
            return new BigInteger[]{bigIntegerC5, bigIntegerC6};
        }

        public BigInteger x(BigInteger bigInteger, BigInteger bigInteger2) {
            BigInteger bigIntegerAdd = bigInteger.add(bigInteger2);
            return bigIntegerAdd.compareTo(this.g) >= 0 ? bigIntegerAdd.subtract(this.g) : bigIntegerAdd;
        }

        public BigInteger y(BigInteger bigInteger) {
            BigInteger bigIntegerShiftLeft = bigInteger.shiftLeft(1);
            return bigIntegerShiftLeft.compareTo(this.g) >= 0 ? bigIntegerShiftLeft.subtract(this.g) : bigIntegerShiftLeft;
        }

        public BigInteger z(BigInteger bigInteger) {
            if (bigInteger.testBit(0)) {
                bigInteger = this.g.subtract(bigInteger);
            }
            return bigInteger.shiftRight(1);
        }
    }

    public abstract w43 a(w43 w43Var);

    public abstract w43 b();

    public int c() {
        return t().bitLength();
    }

    public abstract w43 d(w43 w43Var);

    public byte[] e() {
        return ge0.a((f() + 7) / 8, t());
    }

    public abstract int f();

    public abstract w43 g();

    public boolean h() {
        return c() == 1;
    }

    public boolean i() {
        return t().signum() == 0;
    }

    public abstract w43 j(w43 w43Var);

    public w43 k(w43 w43Var, w43 w43Var2, w43 w43Var3) {
        return j(w43Var).r(w43Var2.j(w43Var3));
    }

    public w43 l(w43 w43Var, w43 w43Var2, w43 w43Var3) {
        return j(w43Var).a(w43Var2.j(w43Var3));
    }

    public abstract w43 m();

    public abstract w43 n();

    public abstract w43 o();

    public w43 p(w43 w43Var, w43 w43Var2) {
        return o().a(w43Var.j(w43Var2));
    }

    public w43 q(int i) {
        for (int i2 = 0; i2 < i; i2++) {
            this = this.o();
        }
        return this;
    }

    public abstract w43 r(w43 w43Var);

    public boolean s() {
        return t().testBit(0);
    }

    public abstract BigInteger t();

    public String toString() {
        return t().toString(16);
    }
}
