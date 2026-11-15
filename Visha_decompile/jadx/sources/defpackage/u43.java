package defpackage;

import androidx.media3.exoplayer.analytics.AnalyticsListener;
import java.math.BigInteger;

public class u43 implements s43 {
    public final t43 g;
    public final byte[] h;
    public final i53 i;
    public final BigInteger j;
    public final BigInteger k;
    public BigInteger l;

    public u43(t43 t43Var, i53 i53Var, BigInteger bigInteger, BigInteger bigInteger2) {
        this(t43Var, i53Var, bigInteger, bigInteger2, null);
    }

    public static i53 g(t43 t43Var, i53 i53Var) {
        if (i53Var == null) {
            throw new NullPointerException("Point cannot be null");
        }
        i53 i53VarY = r43.b(t43Var, i53Var).y();
        if (i53VarY.t()) {
            throw new IllegalArgumentException("Point at infinity");
        }
        if (i53VarY.v()) {
            return i53VarY;
        }
        throw new IllegalArgumentException("Point not on curve");
    }

    public t43 a() {
        return this.g;
    }

    public i53 b() {
        return this.i;
    }

    public BigInteger c() {
        return this.k;
    }

    public BigInteger d() {
        return this.j;
    }

    public byte[] e() {
        return ci.f(this.h);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof u43)) {
            return false;
        }
        u43 u43Var = (u43) obj;
        return this.g.k(u43Var.g) && this.i.e(u43Var.i) && this.j.equals(u43Var.j);
    }

    public BigInteger f(BigInteger bigInteger) {
        if (bigInteger == null) {
            throw new NullPointerException("Scalar cannot be null");
        }
        if (bigInteger.compareTo(s43.b) < 0 || bigInteger.compareTo(d()) >= 0) {
            throw new IllegalArgumentException("Scalar is not in the interval [1, n - 1]");
        }
        return bigInteger;
    }

    public i53 h(i53 i53Var) {
        return g(a(), i53Var);
    }

    public int hashCode() {
        return this.j.hashCode() ^ ((((this.g.hashCode() ^ AnalyticsListener.EVENT_PLAYER_RELEASED) * 257) ^ this.i.hashCode()) * 257);
    }

    public u43(t43 t43Var, i53 i53Var, BigInteger bigInteger, BigInteger bigInteger2, byte[] bArr) {
        this.l = null;
        if (t43Var == null) {
            throw new NullPointerException("curve");
        }
        if (bigInteger == null) {
            throw new NullPointerException("n");
        }
        this.g = t43Var;
        this.i = g(t43Var, i53Var);
        this.j = bigInteger;
        this.k = bigInteger2;
        this.h = ci.f(bArr);
    }

    public u43(qqc qqcVar) {
        this(qqcVar.m(), qqcVar.n(), qqcVar.q(), qqcVar.o(), qqcVar.r());
    }
}
