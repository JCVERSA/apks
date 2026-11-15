package defpackage;

import android.util.Log;

public final class jxa {
    public static final jxa a = new jxa();
    public static final String b = "ExTranslate";

    public final int a(String str) {
        Integer numR;
        if (str == null || (numR = f1a.r(str)) == null) {
            return 0;
        }
        return numR.intValue();
    }

    public final Exception b(Exception exc) {
        Exception illegalStateException;
        y45.j(exc, "e");
        Log.i(b, y45.s("origin:", exc));
        if (!(exc instanceof IllegalStateException)) {
            return exc;
        }
        int iA = a(exc.getMessage());
        if (iA == -1000) {
            illegalStateException = new IllegalStateException("something went wrong!!", exc);
        } else if (iA == -1) {
            illegalStateException = new RuntimeException("", exc);
        } else if (iA == -211) {
            illegalStateException = new SecurityException("illegal access to persist storage!", exc);
        } else if (iA == -210) {
            illegalStateException = new SecurityException("illegal access due to password error!", exc);
        } else if (iA == -101) {
            illegalStateException = new IllegalArgumentException("incorrect argument type!", exc);
        } else if (iA != -100) {
            switch (iA) {
                case -304:
                    illegalStateException = new IllegalStateException("incorrect size of aad[${Byte.MIN_VALUE} - ${Byte.MAX_VALUE}", exc);
                    break;
                case -303:
                    illegalStateException = new IllegalStateException("illegal use to persist storage!! you must remove previous one before reuse it", exc);
                    break;
                case -302:
                    illegalStateException = new IllegalArgumentException("specified key already exists!!", exc);
                    break;
                case -301:
                    illegalStateException = new IllegalArgumentException("specified key not exist!!", exc);
                    break;
                case -300:
                    illegalStateException = new IllegalArgumentException("specified key type not correct!!", exc);
                    break;
                default:
                    switch (iA) {
                        case -204:
                            illegalStateException = new SecurityException("License changed!", exc);
                            break;
                        case -203:
                            illegalStateException = new SecurityException("time over!", exc);
                            break;
                        case -202:
                            illegalStateException = new SecurityException("id not match!", exc);
                            break;
                        case -201:
                            illegalStateException = new SecurityException("SDK authorization code invalid!!", exc);
                            break;
                        case -200:
                            illegalStateException = new SecurityException("Must call configure method first to supply SDK authorization code!!", exc);
                            break;
                        default:
                            return exc;
                    }
                    break;
            }
        } else {
            illegalStateException = new IllegalArgumentException("incorrect argument size!", exc);
        }
        return illegalStateException;
    }
}
