package defpackage;

import java.math.BigInteger;

public class qa4 {
    public BigInteger a;
    public BigInteger b;
    public BigInteger c;

    public qa4(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        this.a = bigInteger;
        this.b = bigInteger2;
        this.c = bigInteger3;
    }

    public BigInteger a() {
        return this.c;
    }

    public BigInteger b() {
        return this.a;
    }

    public BigInteger c() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof qa4)) {
            return false;
        }
        qa4 qa4Var = (qa4) obj;
        return this.c.equals(qa4Var.c) && this.a.equals(qa4Var.a) && this.b.equals(qa4Var.b);
    }

    public int hashCode() {
        return this.b.hashCode() ^ (this.c.hashCode() ^ this.a.hashCode());
    }
}
