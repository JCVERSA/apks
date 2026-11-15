package defpackage;

import java.util.List;

public abstract class y1j {
    public static final g3j a;

    static {
        int i = onh.a;
        a = new k3j();
    }

    public static void A(int i, List list, a5j a5jVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        a5jVar.q(i, list, z);
    }

    public static void B(int i, List list, a5j a5jVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        a5jVar.o(i, list, z);
    }

    public static void C(int i, List list, a5j a5jVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        a5jVar.r(i, list, z);
    }

    public static void D(int i, List list, a5j a5jVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        a5jVar.H(i, list, z);
    }

    public static void E(int i, List list, a5j a5jVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        a5jVar.y(i, list, z);
    }

    public static void a(int i, List list, a5j a5jVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        a5jVar.C(i, list, z);
    }

    public static void b(int i, List list, a5j a5jVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        a5jVar.w(i, list, z);
    }

    public static void c(int i, List list, a5j a5jVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        a5jVar.F(i, list, z);
    }

    public static void d(int i, List list, a5j a5jVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        a5jVar.G(i, list, z);
    }

    public static boolean e(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public static int f(int i, g0j g0jVar, u1j u1jVar) {
        int iW = o4i.w(i << 3);
        return iW + iW + ((plh) g0jVar).c(u1jVar);
    }

    public static int g(List list) {
        int iX;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof mmi) {
            mmi mmiVar = (mmi) list;
            iX = 0;
            while (i < size) {
                iX += o4i.x(mmiVar.f(i));
                i++;
            }
        } else {
            iX = 0;
            while (i < size) {
                iX += o4i.x(((Integer) list.get(i)).intValue());
                i++;
            }
        }
        return iX;
    }

    public static int h(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (o4i.w(i << 3) + 4);
    }

    public static int i(List list) {
        return list.size() * 4;
    }

    public static int j(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (o4i.w(i << 3) + 8);
    }

    public static int k(List list) {
        return list.size() * 8;
    }

    public static int l(List list) {
        int iX;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof mmi) {
            mmi mmiVar = (mmi) list;
            iX = 0;
            while (i < size) {
                iX += o4i.x(mmiVar.f(i));
                i++;
            }
        } else {
            iX = 0;
            while (i < size) {
                iX += o4i.x(((Integer) list.get(i)).intValue());
                i++;
            }
        }
        return iX;
    }

    public static int m(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (list instanceof kzi) {
            if (size <= 0) {
                return 0;
            }
            throw null;
        }
        int iX = 0;
        for (int i = 0; i < size; i++) {
            iX += o4i.x(((Long) list.get(i)).longValue());
        }
        return iX;
    }

    public static int n(List list) {
        int iW;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof mmi) {
            mmi mmiVar = (mmi) list;
            iW = 0;
            while (i < size) {
                int iF = mmiVar.f(i);
                iW += o4i.w((iF >> 31) ^ (iF + iF));
                i++;
            }
        } else {
            iW = 0;
            while (i < size) {
                int iIntValue = ((Integer) list.get(i)).intValue();
                iW += o4i.w((iIntValue >> 31) ^ (iIntValue + iIntValue));
                i++;
            }
        }
        return iW;
    }

    public static int o(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (list instanceof kzi) {
            if (size <= 0) {
                return 0;
            }
            throw null;
        }
        int iX = 0;
        for (int i = 0; i < size; i++) {
            long jLongValue = ((Long) list.get(i)).longValue();
            iX += o4i.x((jLongValue >> 63) ^ (jLongValue + jLongValue));
        }
        return iX;
    }

    public static int p(List list) {
        int iW;
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof mmi) {
            mmi mmiVar = (mmi) list;
            iW = 0;
            while (i < size) {
                iW += o4i.w(mmiVar.f(i));
                i++;
            }
        } else {
            iW = 0;
            while (i < size) {
                iW += o4i.w(((Integer) list.get(i)).intValue());
                i++;
            }
        }
        return iW;
    }

    public static int q(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (list instanceof kzi) {
            if (size <= 0) {
                return 0;
            }
            throw null;
        }
        int iX = 0;
        for (int i = 0; i < size; i++) {
            iX += o4i.x(((Long) list.get(i)).longValue());
        }
        return iX;
    }

    public static g3j r() {
        return a;
    }

    public static Object s(Object obj, int i, int i2, Object obj2, g3j g3jVar) {
        if (obj2 == null) {
            obj2 = k3j.a(obj);
        }
        ((i3j) obj2).j(i << 3, Long.valueOf(i2));
        return obj2;
    }

    public static void t(s8i s8iVar, Object obj, Object obj2) {
        ubc.a(obj2);
        throw null;
    }

    public static void u(g3j g3jVar, Object obj, Object obj2) {
        kli kliVar = (kli) obj;
        i3j i3jVarE = kliVar.zzc;
        i3j i3jVar = ((kli) obj2).zzc;
        if (!i3j.c().equals(i3jVar)) {
            if (i3j.c().equals(i3jVarE)) {
                i3jVarE = i3j.e(i3jVarE, i3jVar);
            } else {
                i3jVarE.d(i3jVar);
            }
        }
        kliVar.zzc = i3jVarE;
    }

    public static void v(int i, List list, a5j a5jVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        a5jVar.d(i, list, z);
    }

    public static void w(int i, List list, a5j a5jVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        a5jVar.k(i, list, z);
    }

    public static void x(int i, List list, a5j a5jVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        a5jVar.i(i, list, z);
    }

    public static void y(int i, List list, a5j a5jVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        a5jVar.g(i, list, z);
    }

    public static void z(int i, List list, a5j a5jVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        a5jVar.p(i, list, z);
    }
}
