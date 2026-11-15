package defpackage;

import java.math.BigInteger;

public class oq1 extends lq1 {
    public BigInteger d;

    public oq1(BigInteger bigInteger, nq1 nq1Var) {
        super(true, nq1Var);
        this.d = bigInteger;
    }

    public BigInteger c() {
        return this.d;
    }

    @Override
    public boolean equals(Object obj) {
        return (obj instanceof oq1) && ((oq1) obj).c().equals(this.d) && super.equals(obj);
    }

    @Override
    public int hashCode() {
        return super.hashCode() ^ this.d.hashCode();
    }
}
