package defpackage;

import java.math.BigInteger;

public class ze8 implements vv3 {
    public final BigInteger a;

    public ze8(BigInteger bigInteger) {
        this.a = bigInteger;
    }

    @Override
    public int a() {
        return 1;
    }

    @Override
    public BigInteger b() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ze8) {
            return this.a.equals(((ze8) obj).a);
        }
        return false;
    }

    public int hashCode() {
        return this.a.hashCode();
    }
}
