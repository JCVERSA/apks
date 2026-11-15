package defpackage;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import org.apache.commons.io.IOUtils;
import org.mozilla.classfile.ClassFileWriter;
import org.mozilla.classfile.a;

public abstract class bcb {
    public static final int a(int i) {
        return ((i & 65535) << 8) | 7;
    }

    public static final int b(String str, a aVar) {
        return a(aVar.a(str));
    }

    public static final int c(int i) {
        return ((i & 65535) << 8) | 8;
    }

    public static final int d(String str, a aVar) {
        if (str.length() != 1) {
            return b(str, aVar);
        }
        char cCharAt = str.charAt(0);
        if (cCharAt == 'F') {
            return 2;
        }
        if (cCharAt != 'S' && cCharAt != 'Z' && cCharAt != 'I') {
            if (cCharAt == 'J') {
                return 4;
            }
            switch (cCharAt) {
                case 'B':
                case 'C':
                    break;
                case 'D':
                    return 3;
                default:
                    throw new IllegalArgumentException("bad type");
            }
        }
        return 1;
    }

    public static Class e(String str) {
        try {
            return Class.forName(str.replace(IOUtils.DIR_SEPARATOR_UNIX, '.'));
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }

    public static final int f(int i) {
        return i >>> 8;
    }

    public static final String g(int i, a aVar) {
        if (h(i) == 7) {
            return (String) aVar.p(f(i));
        }
        throw new IllegalArgumentException("expecting object type");
    }

    public static final int h(int i) {
        return i & 255;
    }

    public static boolean i(int i) {
        return i == 3 || i == 4;
    }

    public static int j(int i, int i2, a aVar) {
        int iH = h(i);
        int iH2 = h(i2);
        boolean z = iH == 7;
        boolean z2 = iH2 == 7;
        if (i == i2 || (z && i2 == 5)) {
            return i;
        }
        if (iH == 0 || iH2 == 0) {
            return 0;
        }
        if (i == 5 && z2) {
            return i2;
        }
        if (z && z2) {
            String strG = g(i, aVar);
            String strG2 = g(i2, aVar);
            String str = (String) aVar.p(2);
            String str2 = (String) aVar.p(4);
            if (strG.equals(str)) {
                strG = str2;
            }
            if (strG2.equals(str)) {
                strG2 = str2;
            }
            Class<?> clsE = e(strG);
            Class<?> clsE2 = e(strG2);
            if (clsE.isAssignableFrom(clsE2)) {
                return i;
            }
            if (clsE2.isAssignableFrom(clsE)) {
                return i2;
            }
            if (clsE2.isInterface() || clsE.isInterface()) {
                return b("java/lang/Object", aVar);
            }
            for (Class<? super Object> superclass = clsE2.getSuperclass(); superclass != null; superclass = superclass.getSuperclass()) {
                if (superclass.isAssignableFrom(clsE)) {
                    return b(ClassFileWriter.getSlashedForm(superclass.getName()), aVar);
                }
            }
        }
        throw new IllegalArgumentException("bad merge attempt between " + k(i, aVar) + " and " + k(i2, aVar));
    }

    public static String k(int i, a aVar) {
        int iH = h(i);
        switch (iH) {
            case 0:
                return "top";
            case 1:
                return "int";
            case 2:
                return TypedValues.Custom.S_FLOAT;
            case 3:
                return "double";
            case 4:
                return "long";
            case 5:
                return "null";
            case 6:
                return "uninitialized_this";
            default:
                if (iH == 7) {
                    return g(i, aVar);
                }
                if (iH == 8) {
                    return "uninitialized";
                }
                throw new IllegalArgumentException("bad type");
        }
    }
}
