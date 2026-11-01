package ru.zdevs.zarchiver.service;

import h0.h;
import java.util.LinkedList;

public final class a {

    public final LinkedList<C0034a> f1721a = new LinkedList<>();

    public static class C0034a {

        public final String f1722a;

        public final int f1723b;

        public final int f1724c;

        public C0034a(int i2, int i3, String str) {
            this.f1722a = str;
            this.f1723b = i2;
            this.f1724c = i3;
        }
    }

    public static String c(h hVar) {
        StringBuilder sb = new StringBuilder();
        if (!v0.h.e(hVar.f1107b)) {
            sb.append(hVar.f1107b);
            sb.append('/');
        }
        sb.append(hVar.f1108c);
        return sb.toString();
    }

    public final synchronized boolean a(h hVar, int i2, int i3, int i4) {
        String strC = c(hVar);
        if (b(i2, i3, i4, strC) != null) {
            return false;
        }
        return this.f1721a.add(new C0034a(i2, i3, strC));
    }

    public final synchronized C0034a b(int i2, int i3, int i4, String str) {
        for (C0034a c0034a : this.f1721a) {
            if (!a0.c.K(i4, 1) || c0034a.f1724c != i3) {
                if (i2 != 1) {
                    if (i2 != 2) {
                        if (i2 == 3) {
                            if (c0034a.f1723b == 4 && a0.c.M(c0034a.f1722a, str)) {
                                return c0034a;
                            }
                        } else if (i2 == 4 && a0.c.M(str, c0034a.f1722a)) {
                            return c0034a;
                        }
                    }
                } else if (c0034a.f1723b == 2 && a0.c.n(str, c0034a.f1722a)) {
                    return c0034a;
                }
                if (c0034a.f1723b == 1 && a0.c.n(str, c0034a.f1722a)) {
                    return c0034a;
                }
                if (c0034a.f1723b == 4) {
                    continue;
                }
            }
        }
        return null;
    }
}
