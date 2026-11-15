package defpackage;

import java.math.BigInteger;
import java.security.interfaces.DSAParams;

public abstract class kr1 {
    public static final l1[] a = {wqc.Y5, n47.j, wqc.Z5};

    public static String a(BigInteger bigInteger, DSAParams dSAParams) {
        return new rv3(ci.m(bigInteger.toByteArray(), dSAParams.getP().toByteArray(), dSAParams.getQ().toByteArray(), dSAParams.getG().toByteArray())).toString();
    }

    public static hr1 b(DSAParams dSAParams) {
        if (dSAParams != null) {
            return new hr1(dSAParams.getP(), dSAParams.getQ(), dSAParams.getG());
        }
        return null;
    }
}
