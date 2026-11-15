package defpackage;

public final class xc5 {
    public static final xc5 a = new xc5();
    public static final o54 b;
    public static final xw0 c;
    public static final xw0 d;
    public static final xw0 e;

    static {
        o54 o54Var = new o54("kotlin.jvm.JvmField");
        b = o54Var;
        xw0 xw0VarM = xw0.m(o54Var);
        y45.i(xw0VarM, "topLevel(JVM_FIELD_ANNOTATION_FQ_NAME)");
        c = xw0VarM;
        xw0 xw0VarM2 = xw0.m(new o54("kotlin.reflect.jvm.internal.ReflectionFactoryImpl"));
        y45.i(xw0VarM2, "topLevel(FqName(\"kotlin.….ReflectionFactoryImpl\"))");
        d = xw0VarM2;
        xw0 xw0VarE = xw0.e("kotlin/jvm/internal/RepeatableContainer");
        y45.i(xw0VarE, "fromString(\"kotlin/jvm/i…nal/RepeatableContainer\")");
        e = xw0VarE;
    }

    public static final String b(String str) {
        y45.j(str, "propertyName");
        if (f(str)) {
            return str;
        }
        return "get" + kr0.a(str);
    }

    public static final boolean c(String str) {
        y45.j(str, "name");
        return g1a.R(str, "get", false, 2, null) || g1a.R(str, "is", false, 2, null);
    }

    public static final boolean d(String str) {
        y45.j(str, "name");
        return g1a.R(str, "set", false, 2, null);
    }

    public static final String e(String str) {
        String strA;
        y45.j(str, "propertyName");
        StringBuilder sb = new StringBuilder();
        sb.append("set");
        if (f(str)) {
            strA = str.substring(2);
            y45.i(strA, "this as java.lang.String).substring(startIndex)");
        } else {
            strA = kr0.a(str);
        }
        sb.append(strA);
        return sb.toString();
    }

    public static final boolean f(String str) {
        y45.j(str, "name");
        if (!g1a.R(str, "is", false, 2, null) || str.length() == 2) {
            return false;
        }
        char cCharAt = str.charAt(2);
        return y45.l(97, cCharAt) > 0 || y45.l(cCharAt, 122) > 0;
    }

    public final xw0 a() {
        return e;
    }
}
