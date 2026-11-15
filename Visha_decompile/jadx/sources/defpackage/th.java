package defpackage;

import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.lang.reflect.Array;
import java.util.Arrays;

public abstract class th {
    public static Object[] a(Object[]... objArr) {
        if (objArr.length == 0) {
            return (Object[]) Array.newInstance(objArr.getClass(), 0);
        }
        int length = 0;
        for (Object[] objArr2 : objArr) {
            length += objArr2.length;
        }
        Object[] objArrCopyOf = Arrays.copyOf(objArr[0], length);
        int length2 = objArr[0].length;
        for (int i = 1; i < objArr.length; i++) {
            Object[] objArr3 = objArr[i];
            int length3 = objArr3.length;
            System.arraycopy(objArr3, 0, objArrCopyOf, length2, length3);
            length2 += length3;
        }
        return objArrCopyOf;
    }

    public static boolean b(int[] iArr, int i) {
        if (iArr != null) {
            for (int i2 : iArr) {
                if (i2 == i) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean c(Object[] objArr, Object obj) {
        int length = objArr != null ? objArr.length : 0;
        for (int i = 0; i < length; i++) {
            if (jc7.a(objArr[i], obj)) {
                if (i >= 0) {
                    return true;
                }
            }
        }
        return false;
    }

    public static void d(StringBuilder sb, double[] dArr) {
        int length = dArr.length;
        for (int i = 0; i < length; i++) {
            if (i != 0) {
                sb.append(StringUtils.COMMA);
            }
            sb.append(dArr[i]);
        }
    }

    public static void e(StringBuilder sb, float[] fArr) {
        int length = fArr.length;
        for (int i = 0; i < length; i++) {
            if (i != 0) {
                sb.append(StringUtils.COMMA);
            }
            sb.append(fArr[i]);
        }
    }

    public static void f(StringBuilder sb, int[] iArr) {
        int length = iArr.length;
        for (int i = 0; i < length; i++) {
            if (i != 0) {
                sb.append(StringUtils.COMMA);
            }
            sb.append(iArr[i]);
        }
    }

    public static void g(StringBuilder sb, long[] jArr) {
        int length = jArr.length;
        for (int i = 0; i < length; i++) {
            if (i != 0) {
                sb.append(StringUtils.COMMA);
            }
            sb.append(jArr[i]);
        }
    }

    public static void h(StringBuilder sb, Object[] objArr) {
        int length = objArr.length;
        for (int i = 0; i < length; i++) {
            if (i != 0) {
                sb.append(StringUtils.COMMA);
            }
            sb.append(objArr[i]);
        }
    }

    public static void i(StringBuilder sb, boolean[] zArr) {
        int length = zArr.length;
        for (int i = 0; i < length; i++) {
            if (i != 0) {
                sb.append(StringUtils.COMMA);
            }
            sb.append(zArr[i]);
        }
    }

    public static void j(StringBuilder sb, String[] strArr) {
        int length = strArr.length;
        for (int i = 0; i < length; i++) {
            if (i != 0) {
                sb.append(StringUtils.COMMA);
            }
            sb.append("\"");
            sb.append(strArr[i]);
            sb.append("\"");
        }
    }
}
