package defpackage;

import java.math.BigInteger;

public abstract class qq1 {
    public static String a(BigInteger bigInteger, nq1 nq1Var) {
        return new rv3(ci.l(bigInteger.toByteArray(), nq1Var.f().toByteArray(), nq1Var.b().toByteArray())).toString();
    }

    public static String b(String str, BigInteger bigInteger, nq1 nq1Var) {
        StringBuffer stringBuffer = new StringBuffer();
        String strD = u0a.d();
        BigInteger bigIntegerModPow = nq1Var.b().modPow(bigInteger, nq1Var.f());
        stringBuffer.append(str);
        stringBuffer.append(" Private Key [");
        stringBuffer.append(a(bigIntegerModPow, nq1Var));
        stringBuffer.append("]");
        stringBuffer.append(strD);
        stringBuffer.append("              Y: ");
        stringBuffer.append(bigIntegerModPow.toString(16));
        stringBuffer.append(strD);
        return stringBuffer.toString();
    }

    public static String c(String str, BigInteger bigInteger, nq1 nq1Var) {
        StringBuffer stringBuffer = new StringBuffer();
        String strD = u0a.d();
        stringBuffer.append(str);
        stringBuffer.append(" Public Key [");
        stringBuffer.append(a(bigInteger, nq1Var));
        stringBuffer.append("]");
        stringBuffer.append(strD);
        stringBuffer.append("             Y: ");
        stringBuffer.append(bigInteger.toString(16));
        stringBuffer.append(strD);
        return stringBuffer.toString();
    }
}
