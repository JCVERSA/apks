package defpackage;

import java.util.Iterator;
import java.util.Map;
import kotlin.collections.a;

public abstract class kf8 {
    public static final Map a = a.p(abb.a(xq8.b(String.class), qn0.D(hz9.a)), abb.a(xq8.b(Character.TYPE), qn0.w(av0.a)), abb.a(xq8.b(char[].class), qn0.d()), abb.a(xq8.b(Double.TYPE), qn0.x(bx2.a)), abb.a(xq8.b(double[].class), qn0.e()), abb.a(xq8.b(Float.TYPE), qn0.z(wy3.a)), abb.a(xq8.b(float[].class), qn0.f()), abb.a(xq8.b(Long.TYPE), qn0.B(cr5.a)), abb.a(xq8.b(long[].class), qn0.i()), abb.a(xq8.b(qeb.class), qn0.G(qeb.c)), abb.a(xq8.b(reb.class), qn0.r()), abb.a(xq8.b(Integer.TYPE), qn0.A(p15.a)), abb.a(xq8.b(int[].class), qn0.g()), abb.a(xq8.b(keb.class), qn0.F(keb.c)), abb.a(xq8.b(leb.class), qn0.q()), abb.a(xq8.b(Short.TYPE), qn0.C(yg9.a)), abb.a(xq8.b(short[].class), qn0.n()), abb.a(xq8.b(bfb.class), qn0.H(bfb.c)), abb.a(xq8.b(cfb.class), qn0.s()), abb.a(xq8.b(Byte.TYPE), qn0.v(ko0.a)), abb.a(xq8.b(byte[].class), qn0.c()), abb.a(xq8.b(zdb.class), qn0.E(zdb.c)), abb.a(xq8.b(aeb.class), qn0.p()), abb.a(xq8.b(Boolean.TYPE), qn0.u(wh0.a)), abb.a(xq8.b(boolean[].class), qn0.b()), abb.a(xq8.b(zfb.class), qn0.I(zfb.a)), abb.a(xq8.b(Void.class), qn0.l()), abb.a(xq8.b(t33.class), qn0.y(t33.c)));

    public static final kotlinx.serialization.descriptors.a a(String str, ef8 ef8Var) {
        y45.j(str, "serialName");
        y45.j(ef8Var, "kind");
        d(str);
        return new gf8(str, ef8Var);
    }

    public static final ef5 b(de5 de5Var) {
        y45.j(de5Var, "<this>");
        return (ef5) a.get(de5Var);
    }

    public static final String c(String str) {
        if (str.length() <= 0) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        char cCharAt = str.charAt(0);
        sb.append((Object) (Character.isLowerCase(cCharAt) ? ov0.g(cCharAt) : String.valueOf(cCharAt)));
        String strSubstring = str.substring(1);
        y45.i(strSubstring, "this as java.lang.String).substring(startIndex)");
        sb.append(strSubstring);
        return sb.toString();
    }

    public static final void d(String str) {
        Iterator it = a.keySet().iterator();
        while (it.hasNext()) {
            String strO = ((de5) it.next()).o();
            y45.g(strO);
            String strC = c(strO);
            if (g1a.E(str, "kotlin." + strC, true) || g1a.E(str, strC, true)) {
                throw new IllegalArgumentException(z0a.j("\n                The name of serial descriptor should uniquely identify associated serializer.\n                For serial name " + str + " there already exist " + c(strC) + "Serializer.\n                Please refer to SerialDescriptor documentation for additional information.\n            "));
            }
        }
    }
}
