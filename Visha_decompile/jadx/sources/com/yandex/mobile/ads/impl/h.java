package com.yandex.mobile.ads.impl;

import android.util.Pair;

public abstract class h extends i52 {
    private final int c;
    private final iy1 d;
    private final boolean e = false;

    public h(iy1 iy1Var) {
        this.d = iy1Var;
        this.c = iy1Var.b();
    }

    public static Object a(Object obj, Object obj2) {
        return Pair.create(obj, obj2);
    }

    public static Object c(Object obj) {
        return ((Pair) obj).second;
    }

    public static Object d(Object obj) {
        return ((Pair) obj).first;
    }

    public abstract int b(int i);

    public abstract int b(Object obj);

    @Override
    public final int b(boolean z) {
        int i = this.c;
        if (i == 0) {
            return -1;
        }
        if (this.e) {
            z = false;
        }
        int iC = z ? this.d.c() : i - 1;
        while (g(iC).c()) {
            if (z) {
                iC = this.d.d(iC);
            } else {
                iC = iC > 0 ? iC - 1 : -1;
            }
            if (iC == -1) {
                return -1;
            }
        }
        return g(iC).b(z) + f(iC);
    }

    public abstract int c(int i);

    public abstract Object d(int i);

    public abstract int e(int i);

    public abstract int f(int i);

    public abstract i52 g(int i);

    @Override
    public final int a(boolean z) {
        if (this.c == 0) {
            return -1;
        }
        if (this.e) {
            z = false;
        }
        int iA = z ? this.d.a() : 0;
        while (g(iA).c()) {
            if (z) {
                iA = this.d.a(iA);
            } else {
                iA = iA < this.c + (-1) ? iA + 1 : -1;
            }
            if (iA == -1) {
                return -1;
            }
        }
        return g(iA).a(z) + f(iA);
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x0033, code lost:
    
        r0 = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0033, code lost:
    
        r0 = r0 - 1;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int b(int i, int i2, boolean z) {
        int iD;
        if (this.e) {
            if (i2 == 1) {
                i2 = 2;
            }
            z = false;
        }
        int iC = c(i);
        int iF = f(iC);
        int iB = g(iC).b(i - iF, i2 != 2 ? i2 : 0, z);
        if (iB != -1) {
            return iF + iB;
        }
        if (z) {
            iD = this.d.d(iC);
        } else {
            iD = iC > 0 ? iD - 1 : -1;
        }
        while (iD != -1 && g(iD).c()) {
            if (z) {
                iD = this.d.d(iD);
            } else if (iD > 0) {
            }
        }
        if (iD != -1) {
            return g(iD).b(z) + f(iD);
        }
        if (i2 == 2) {
            return b(z);
        }
        return -1;
    }

    @Override
    public final int a(Object obj) {
        int iA;
        if (!(obj instanceof Pair)) {
            return -1;
        }
        Pair pair = (Pair) obj;
        Object obj2 = pair.first;
        Object obj3 = pair.second;
        int iB = b(obj2);
        if (iB == -1 || (iA = g(iB).a(obj3)) == -1) {
            return -1;
        }
        return e(iB) + iA;
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x0036, code lost:
    
        r0 = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0036, code lost:
    
        r0 = r0 + 1;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int a(int i, int i2, boolean z) {
        int iA;
        if (this.e) {
            if (i2 == 1) {
                i2 = 2;
            }
            z = false;
        }
        int iC = c(i);
        int iF = f(iC);
        int iA2 = g(iC).a(i - iF, i2 != 2 ? i2 : 0, z);
        if (iA2 != -1) {
            return iF + iA2;
        }
        if (z) {
            iA = this.d.a(iC);
        } else {
            iA = iC < this.c - 1 ? iA + 1 : -1;
        }
        while (iA != -1 && g(iA).c()) {
            if (z) {
                iA = this.d.a(iA);
            } else if (iA < this.c - 1) {
            }
        }
        if (iA != -1) {
            return g(iA).a(z) + f(iA);
        }
        if (i2 == 2) {
            return a(z);
        }
        return -1;
    }

    @Override
    public final i52.b a(int i, i52.b bVar, boolean z) {
        int iB = b(i);
        int iF = f(iB);
        g(iB).a(i - e(iB), bVar, z);
        bVar.d += iF;
        if (z) {
            Object objD = d(iB);
            Object obj = bVar.c;
            obj.getClass();
            bVar.c = Pair.create(objD, obj);
        }
        return bVar;
    }

    @Override
    public final i52.b a(Object obj, i52.b bVar) {
        Pair pair = (Pair) obj;
        Object obj2 = pair.first;
        Object obj3 = pair.second;
        int iB = b(obj2);
        int iF = f(iB);
        g(iB).a(obj3, bVar);
        bVar.d += iF;
        bVar.c = obj;
        return bVar;
    }

    @Override
    public final Object a(int i) {
        int iB = b(i);
        return Pair.create(d(iB), g(iB).a(i - e(iB)));
    }

    @Override
    public final i52.d a(int i, i52.d dVar, long j) {
        int iC = c(i);
        int iF = f(iC);
        int iE = e(iC);
        g(iC).a(i - iF, dVar, j);
        Object objD = d(iC);
        if (!i52.d.s.equals(dVar.b)) {
            objD = Pair.create(objD, dVar.b);
        }
        dVar.b = objD;
        dVar.p += iE;
        dVar.q += iE;
        return dVar;
    }
}
