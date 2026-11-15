package defpackage;

import java.math.BigInteger;

public abstract class ua4 {
    public static String a(BigInteger bigInteger, la4 la4Var) {
        return new rv3(ci.l(bigInteger.toByteArray(), la4Var.b().toByteArray(), la4Var.a().toByteArray())).toString();
    }

    public static String b(String str, BigInteger bigInteger, la4 la4Var) {
        StringBuffer stringBuffer = new StringBuffer();
        String strD = u0a.d();
        BigInteger bigIntegerModPow = la4Var.a().modPow(bigInteger, la4Var.b());
        stringBuffer.append(str);
        stringBuffer.append(" Private Key [");
        stringBuffer.append(a(bigIntegerModPow, la4Var));
        stringBuffer.append("]");
        stringBuffer.append(strD);
        stringBuffer.append("                  Y: ");
        stringBuffer.append(bigIntegerModPow.toString(16));
        stringBuffer.append(strD);
        return stringBuffer.toString();
    }

    public static String c(String str, BigInteger bigInteger, la4 la4Var) {
        StringBuffer stringBuffer = new StringBuffer();
        String strD = u0a.d();
        stringBuffer.append(str);
        stringBuffer.append(" Public Key [");
        stringBuffer.append(a(bigInteger, la4Var));
        stringBuffer.append("]");
        stringBuffer.append(strD);
        stringBuffer.append("                 Y: ");
        stringBuffer.append(bigInteger.toString(16));
        stringBuffer.append(strD);
        return stringBuffer.toString();
    }
}
