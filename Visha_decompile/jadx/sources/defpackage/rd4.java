package defpackage;

import java.math.BigInteger;

public class rd4 implements sc8 {
    public final vv3 a;
    public final rc8 b;

    public rd4(vv3 vv3Var, rc8 rc8Var) {
        this.a = vv3Var;
        this.b = rc8Var;
    }

    @Override
    public int a() {
        return this.a.a() * this.b.b();
    }

    @Override
    public BigInteger b() {
        return this.a.b();
    }

    @Override
    public rc8 c() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof rd4)) {
            return false;
        }
        rd4 rd4Var = (rd4) obj;
        return this.a.equals(rd4Var.a) && this.b.equals(rd4Var.b);
    }

    public int hashCode() {
        return c35.c(this.b.hashCode(), 16) ^ this.a.hashCode();
    }
}
