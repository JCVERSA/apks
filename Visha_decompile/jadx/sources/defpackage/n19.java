package defpackage;

import java.math.BigInteger;

public class n19 {
    public final BigInteger a;
    public final BigInteger b;
    public final BigInteger c;
    public final BigInteger d;
    public final BigInteger e;
    public final BigInteger f;
    public final int g;

    public n19(BigInteger[] bigIntegerArr, BigInteger[] bigIntegerArr2, BigInteger bigInteger, BigInteger bigInteger2, int i) {
        a(bigIntegerArr, "v1");
        a(bigIntegerArr2, "v2");
        this.a = bigIntegerArr[0];
        this.b = bigIntegerArr[1];
        this.c = bigIntegerArr2[0];
        this.d = bigIntegerArr2[1];
        this.e = bigInteger;
        this.f = bigInteger2;
        this.g = i;
    }

    public static void a(BigInteger[] bigIntegerArr, String str) {
        if (bigIntegerArr == null || bigIntegerArr.length != 2 || bigIntegerArr[0] == null || bigIntegerArr[1] == null) {
            throw new IllegalArgumentException("'" + str + "' must consist of exactly 2 (non-null) values");
        }
    }
}
