package r0;

import h0.e;
import h0.h;
import java.util.ArrayList;

public final class a {

    public static final ArrayList<o0.a> f1423a = new ArrayList<>(2);

    public static boolean a(o0.a aVar, String str, String str2, String str3, String str4) {
        if (!aVar.f()) {
            return false;
        }
        b(aVar);
        String strB = v0.c.b(str);
        String strB2 = v0.c.b(str4);
        String strG = g(aVar, strB, true);
        boolean zG0 = a0.c.g0(strB, e(str2), e(str3), strB2, aVar, true);
        if (strG != null) {
            g(aVar, strG, false);
        }
        d(aVar);
        return zG0;
    }

    public static void b(o0.a aVar) {
        ArrayList<o0.a> arrayList = f1423a;
        synchronized (arrayList) {
            arrayList.add(aVar);
        }
    }

    public static int c(o0.a aVar, h hVar, h hVar2, int i2) {
        if (!aVar.f()) {
            return -1;
        }
        b(aVar);
        int iC = p0.b.c(aVar, false, i2, a0.c.K(e.c(hVar2), 4), v0.c.b(hVar.f1108c), v0.c.b(hVar2.f1108c));
        d(aVar);
        return iC;
    }

    public static void d(o0.a aVar) {
        ArrayList<o0.a> arrayList = f1423a;
        synchronized (arrayList) {
            arrayList.remove(aVar);
        }
    }

    public static String e(String str) {
        int length = str.length();
        if (length == 0) {
            return str;
        }
        StringBuilder sb = new StringBuilder(length);
        sb.append('\'');
        for (int i2 = 0; i2 < length; i2++) {
            char cCharAt = str.charAt(i2);
            if (cCharAt == '\\') {
                if (i2 != 0) {
                    sb.append("' '");
                }
            } else if (cCharAt == '\'') {
                sb.append("'\\''");
            } else {
                sb.append(cCharAt);
            }
        }
        if (sb.charAt(sb.length() - 1) != '\'') {
            sb.append('\'');
        }
        return sb.toString();
    }

    public static int f(o0.a aVar, h hVar, h hVar2, int i2) {
        if (!aVar.f()) {
            return -1;
        }
        b(aVar);
        int iC = p0.b.c(aVar, true, i2, a0.c.K(e.c(hVar2), 4), v0.c.b(hVar.f1108c), v0.c.b(hVar2.f1108c));
        d(aVar);
        return iC;
    }

    public static String g(o0.a aVar, String str, boolean z2) {
        x0.a.C0041a c0041a;
        if (!aVar.f()) {
            return null;
        }
        if (z2) {
            x0.a.C0041a c0041aB = x0.a.b(v0.c.b(str), true);
            if (c0041aB != null) {
                String str2 = c0041aB.f2247d;
                if (!(str2 != null && str2.contains("rw")) && c0041aB.a() != 5) {
                    c0041a = c0041aB;
                    str = c0041aB.f2245b;
                }
            }
            return null;
        }
        c0041a = null;
        if (p0.e.a(aVar, str, c0041a, z2) == 0) {
            return str;
        }
        return null;
    }

    public static void h(int i2) {
        ArrayList<o0.a> arrayList = f1423a;
        synchronized (arrayList) {
            for (o0.a aVar : arrayList) {
                if (aVar.f1287a == i2) {
                    String str = aVar.f1288b;
                    if (str == null) {
                        break;
                    }
                    aVar.m(str);
                    break;
                }
            }
        }
    }
}
