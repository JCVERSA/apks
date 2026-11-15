package defpackage;

import androidx.exifinterface.media.ExifInterface;
import kotlin.NoWhenBranchMatchedException;
import kotlin.reflect.jvm.internal.impl.builtins.PrimitiveType;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmPrimitiveType;

public final class sd5 implements rd5 {
    public static final sd5 a = new sd5();

    public class a {
        public static final int[] a;

        static {
            int[] iArr = new int[PrimitiveType.values().length];
            try {
                iArr[PrimitiveType.BOOLEAN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[PrimitiveType.CHAR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[PrimitiveType.BYTE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[PrimitiveType.SHORT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[PrimitiveType.INT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[PrimitiveType.FLOAT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[PrimitiveType.LONG.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[PrimitiveType.DOUBLE.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            a = iArr;
        }
    }

    @Override
    public qd5 c(qd5 qd5Var) {
        y45.j(qd5Var, "possiblyPrimitiveType");
        if (!(qd5Var instanceof qd5.d)) {
            return qd5Var;
        }
        qd5.d dVar = (qd5.d) qd5Var;
        if (dVar.i() == null) {
            return qd5Var;
        }
        String strF = fd5.c(dVar.i().getWrapperFqName()).f();
        y45.i(strF, "byFqNameWithoutInnerClas…apperFqName).internalName");
        return f(strF);
    }

    @Override
    public qd5 a(String str) {
        JvmPrimitiveType jvmPrimitiveType;
        y45.j(str, "representation");
        str.length();
        char cCharAt = str.charAt(0);
        JvmPrimitiveType[] jvmPrimitiveTypeArrValues = JvmPrimitiveType.values();
        int length = jvmPrimitiveTypeArrValues.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                jvmPrimitiveType = null;
                break;
            }
            jvmPrimitiveType = jvmPrimitiveTypeArrValues[i];
            if (jvmPrimitiveType.getDesc().charAt(0) == cCharAt) {
                break;
            }
            i++;
        }
        if (jvmPrimitiveType != null) {
            return new qd5.d(jvmPrimitiveType);
        }
        if (cCharAt == 'V') {
            return new qd5.d(null);
        }
        if (cCharAt == '[') {
            String strSubstring = str.substring(1);
            y45.i(strSubstring, "this as java.lang.String).substring(startIndex)");
            return new qd5.a(a(strSubstring));
        }
        if (cCharAt == 'L') {
            j1a.c0(str, ';', false, 2, null);
        }
        String strSubstring2 = str.substring(1, str.length() - 1);
        y45.i(strSubstring2, "this as java.lang.String…ing(startIndex, endIndex)");
        return new qd5.c(strSubstring2);
    }

    @Override
    public qd5.c f(String str) {
        y45.j(str, "internalName");
        return new qd5.c(str);
    }

    @Override
    public qd5 d(PrimitiveType primitiveType) {
        y45.j(primitiveType, "primitiveType");
        switch (a.a[primitiveType.ordinal()]) {
            case 1:
                return qd5.a.a();
            case 2:
                return qd5.a.c();
            case 3:
                return qd5.a.b();
            case 4:
                return qd5.a.h();
            case 5:
                return qd5.a.f();
            case 6:
                return qd5.a.e();
            case 7:
                return qd5.a.g();
            case 8:
                return qd5.a.d();
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    @Override
    public qd5 b() {
        return f("java/lang/Class");
    }

    @Override
    public String e(qd5 qd5Var) {
        String desc;
        y45.j(qd5Var, "type");
        if (qd5Var instanceof qd5.a) {
            return '[' + e(((qd5.a) qd5Var).i());
        }
        if (qd5Var instanceof qd5.d) {
            JvmPrimitiveType jvmPrimitiveTypeI = ((qd5.d) qd5Var).i();
            return (jvmPrimitiveTypeI == null || (desc = jvmPrimitiveTypeI.getDesc()) == null) ? ExifInterface.GPS_MEASUREMENT_INTERRUPTED : desc;
        }
        if (!(qd5Var instanceof qd5.c)) {
            throw new NoWhenBranchMatchedException();
        }
        return 'L' + ((qd5.c) qd5Var).i() + ';';
    }
}
