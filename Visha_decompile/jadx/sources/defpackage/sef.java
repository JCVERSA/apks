package defpackage;

import java.math.BigInteger;

public final class sef {
    public BigInteger a = BigInteger.ONE;
    public String b = "0";

    public final synchronized String a() {
        String string;
        string = this.a.toString();
        this.a = this.a.add(BigInteger.ONE);
        this.b = string;
        return string;
    }

    public final synchronized String b() {
        return this.b;
    }
}
