package com.google.android.gms.internal.ads;

import defpackage.asi;
import defpackage.bvi;
import defpackage.cui;
import defpackage.eti;
import defpackage.fsi;
import defpackage.osi;
import defpackage.pui;
import defpackage.qui;
import defpackage.rti;
import defpackage.ubc;
import defpackage.usi;
import defpackage.xti;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;

public abstract class pa {
    public static final pui a;

    static {
        xti xtiVar = xti.c;
        a = new qa();
    }

    public static void A(pui puiVar, Object obj, Object obj2) {
        ia iaVar = (ia) obj;
        qui quiVarE = iaVar.zzt;
        qui quiVar = ((ia) obj2).zzt;
        if (!qui.c().equals(quiVar)) {
            if (qui.c().equals(quiVarE)) {
                quiVarE = qui.e(quiVarE, quiVar);
            } else {
                quiVarE.d(quiVar);
            }
        }
        iaVar.zzt = quiVarE;
    }

    public static void B(int i, List list, bvi bviVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        bviVar.d(i, list, z);
    }

    public static void C(int i, List list, bvi bviVar) {
        if (list == null || list.isEmpty()) {
            return;
        }
        bviVar.m(i, list);
    }

    public static void D(int i, List list, bvi bviVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        bviVar.k(i, list, z);
    }

    public static void E(int i, List list, bvi bviVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        bviVar.i(i, list, z);
    }

    public static void F(int i, List list, bvi bviVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        bviVar.g(i, list, z);
    }

    public static void G(int i, List list, bvi bviVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        bviVar.p(i, list, z);
    }

    public static void H(int i, List list, bvi bviVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        bviVar.q(i, list, z);
    }

    public static void I(int i, List list, bvi bviVar, cui cuiVar) {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            ((asi) bviVar).H(i, list.get(i2), cuiVar);
        }
    }

    public static void J(int i, List list, bvi bviVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        bviVar.o(i, list, z);
    }

    public static void a(int i, List list, bvi bviVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        bviVar.r(i, list, z);
    }

    public static void b(int i, List list, bvi bviVar, cui cuiVar) {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            ((asi) bviVar).F(i, list.get(i2), cuiVar);
        }
    }

    public static void c(int i, List list, bvi bviVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        bviVar.I(i, list, z);
    }

    public static void d(int i, List list, bvi bviVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        bviVar.t(i, list, z);
    }

    public static void e(int i, List list, bvi bviVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        bviVar.A(i, list, z);
    }

    public static void f(int i, List list, bvi bviVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        bviVar.B(i, list, z);
    }

    public static void g(int i, List list, bvi bviVar) {
        if (list == null || list.isEmpty()) {
            return;
        }
        bviVar.C(i, list);
    }

    public static void h(int i, List list, bvi bviVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        bviVar.z(i, list, z);
    }

    public static void i(int i, List list, bvi bviVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        bviVar.E(i, list, z);
    }

    public static boolean j(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public static int k(List list) {
        int iF;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof osi) {
            osi osiVar = (osi) list;
            iF = 0;
            while (i < size) {
                iF += ha.f(osiVar.c(i));
                i++;
            }
        } else {
            iF = 0;
            while (i < size) {
                iF += ha.f(((Integer) list.get(i)).intValue());
                i++;
            }
        }
        return iF;
    }

    public static int l(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (ha.e(i << 3) + 4);
    }

    public static int m(List list) {
        return list.size() * 4;
    }

    public static int n(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (ha.e(i << 3) + 8);
    }

    public static int o(List list) {
        return list.size() * 8;
    }

    public static int p(List list) {
        int iF;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof osi) {
            osi osiVar = (osi) list;
            iF = 0;
            while (i < size) {
                iF += ha.f(osiVar.c(i));
                i++;
            }
        } else {
            iF = 0;
            while (i < size) {
                iF += ha.f(((Integer) list.get(i)).intValue());
                i++;
            }
        }
        return iF;
    }

    public static int q(List list) {
        int iF;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof eti) {
            eti etiVar = (eti) list;
            iF = 0;
            while (i < size) {
                iF += ha.f(etiVar.c(i));
                i++;
            }
        } else {
            iF = 0;
            while (i < size) {
                iF += ha.f(((Long) list.get(i)).longValue());
                i++;
            }
        }
        return iF;
    }

    public static int r(int i, Object obj, cui cuiVar) {
        return ha.e(i << 3) + ha.b((rti) obj, cuiVar);
    }

    public static int s(List list) {
        int iE;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof osi) {
            osi osiVar = (osi) list;
            iE = 0;
            while (i < size) {
                int iC = osiVar.c(i);
                iE += ha.e((iC >> 31) ^ (iC + iC));
                i++;
            }
        } else {
            iE = 0;
            while (i < size) {
                int iIntValue = ((Integer) list.get(i)).intValue();
                iE += ha.e((iIntValue >> 31) ^ (iIntValue + iIntValue));
                i++;
            }
        }
        return iE;
    }

    public static int t(List list) {
        int iF;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof eti) {
            eti etiVar = (eti) list;
            iF = 0;
            while (i < size) {
                long jC = etiVar.c(i);
                iF += ha.f((jC >> 63) ^ (jC + jC));
                i++;
            }
        } else {
            iF = 0;
            while (i < size) {
                long jLongValue = ((Long) list.get(i)).longValue();
                iF += ha.f((jLongValue >> 63) ^ (jLongValue + jLongValue));
                i++;
            }
        }
        return iF;
    }

    public static int u(List list) {
        int iE;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof osi) {
            osi osiVar = (osi) list;
            iE = 0;
            while (i < size) {
                iE += ha.e(osiVar.c(i));
                i++;
            }
        } else {
            iE = 0;
            while (i < size) {
                iE += ha.e(((Integer) list.get(i)).intValue());
                i++;
            }
        }
        return iE;
    }

    public static int v(List list) {
        int iF;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof eti) {
            eti etiVar = (eti) list;
            iF = 0;
            while (i < size) {
                iF += ha.f(etiVar.c(i));
                i++;
            }
        } else {
            iF = 0;
            while (i < size) {
                iF += ha.f(((Long) list.get(i)).longValue());
                i++;
            }
        }
        return iF;
    }

    public static pui w() {
        return a;
    }

    public static Object x(Object obj, int i, List list, usi usiVar, Object obj2, pui puiVar) {
        if (usiVar == null) {
            return obj2;
        }
        if (list instanceof RandomAccess) {
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                Integer num = (Integer) list.get(i3);
                int iIntValue = num.intValue();
                if (usiVar.zza(iIntValue)) {
                    if (i3 != i2) {
                        list.set(i2, num);
                    }
                    i2++;
                } else {
                    obj2 = y(obj, i, iIntValue, obj2, puiVar);
                }
            }
            if (i2 != size) {
                list.subList(i2, size).clear();
                return obj2;
            }
        } else {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                int iIntValue2 = ((Integer) it.next()).intValue();
                if (!usiVar.zza(iIntValue2)) {
                    obj2 = y(obj, i, iIntValue2, obj2, puiVar);
                    it.remove();
                }
            }
        }
        return obj2;
    }

    public static Object y(Object obj, int i, int i2, Object obj2, pui puiVar) {
        if (obj2 == null) {
            obj2 = puiVar.a(obj);
        }
        puiVar.h(obj2, i, i2);
        return obj2;
    }

    public static void z(fsi fsiVar, Object obj, Object obj2) {
        ubc.a(obj2);
        throw null;
    }
}
