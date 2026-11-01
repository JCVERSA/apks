package p0;

import v0.h;

public final class c extends a {
    public static boolean c(o0.a aVar, String str, h0.e.b bVar) {
        String str2;
        if (str == null) {
            return false;
        }
        boolean zB = a.b();
        if (zB) {
            str2 = a.a() + " du -s '" + str.replace("'", "'\\''") + "'";
        } else {
            str2 = "du -s -d 10 '" + str.replace("'", "'\\''") + "'";
        }
        if (!aVar.b(str2)) {
            return false;
        }
        int i2 = (zB && "/".equals(str)) ? 3 : 2;
        while (true) {
            try {
                String strK = aVar.k(true);
                if (strK == null) {
                    break;
                }
                if (!strK.isEmpty()) {
                    String[] strArrH = h.h(strK, '\t');
                    if (strArrH.length >= i2) {
                        bVar.f1090c = a0.c.j0(0L, strArrH[0]);
                        if (zB) {
                            bVar.f1091d = a0.c.i0(0, strArrH[1]);
                        } else {
                            continue;
                        }
                    }
                }
            } catch (Exception unused) {
            }
        }
        return aVar.f1294h == 0;
    }
}
