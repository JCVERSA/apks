package com.google.android.exoplayer2;

import android.util.Pair;
import defpackage.mi9;
import defpackage.zi;

public abstract class a extends a0 {
    public final int d;
    public final mi9 e;
    public final boolean f;

    public a(boolean z, mi9 mi9Var) {
        this.f = z;
        this.e = mi9Var;
        this.d = mi9Var.getLength();
    }

    public static Object B(Object obj) {
        return ((Pair) obj).second;
    }

    public static Object C(Object obj) {
        return ((Pair) obj).first;
    }

    public static Object E(Object obj, Object obj2) {
        return Pair.create(obj, obj2);
    }

    public abstract int A(int i);

    public abstract Object D(int i);

    public abstract int F(int i);

    public abstract int G(int i);

    public final int H(int i, boolean z) {
        if (z) {
            return this.e.getNextIndex(i);
        }
        if (i < this.d - 1) {
            return i + 1;
        }
        return -1;
    }

    public final int I(int i, boolean z) {
        if (z) {
            return this.e.getPreviousIndex(i);
        }
        if (i > 0) {
            return i - 1;
        }
        return -1;
    }

    public abstract a0 J(int i);

    @Override
    public int e(boolean z) {
        if (this.d == 0) {
            return -1;
        }
        if (this.f) {
            z = false;
        }
        int firstIndex = z ? this.e.getFirstIndex() : 0;
        while (J(firstIndex).u()) {
            firstIndex = H(firstIndex, z);
            if (firstIndex == -1) {
                return -1;
            }
        }
        return G(firstIndex) + J(firstIndex).e(z);
    }

    @Override
    public final int f(Object obj) {
        int iF;
        if (!(obj instanceof Pair)) {
            return -1;
        }
        Object objC = C(obj);
        Object objB = B(obj);
        int iY = y(objC);
        if (iY == -1 || (iF = J(iY).f(objB)) == -1) {
            return -1;
        }
        return F(iY) + iF;
    }

    @Override
    public int g(boolean z) {
        int i = this.d;
        if (i == 0) {
            return -1;
        }
        if (this.f) {
            z = false;
        }
        int lastIndex = z ? this.e.getLastIndex() : i - 1;
        while (J(lastIndex).u()) {
            lastIndex = I(lastIndex, z);
            if (lastIndex == -1) {
                return -1;
            }
        }
        return G(lastIndex) + J(lastIndex).g(z);
    }

    @Override
    public int i(int i, int i2, boolean z) {
        if (this.f) {
            if (i2 == 1) {
                i2 = 2;
            }
            z = false;
        }
        int iA = A(i);
        int iG = G(iA);
        int i3 = J(iA).i(i - iG, i2 != 2 ? i2 : 0, z);
        if (i3 != -1) {
            return iG + i3;
        }
        int iH = H(iA, z);
        while (iH != -1 && J(iH).u()) {
            iH = H(iH, z);
        }
        if (iH != -1) {
            return G(iH) + J(iH).e(z);
        }
        if (i2 == 2) {
            return e(z);
        }
        return -1;
    }

    @Override
    public final a0.b k(int i, a0.b bVar, boolean z) {
        int iZ = z(i);
        int iG = G(iZ);
        J(iZ).k(i - F(iZ), bVar, z);
        bVar.d += iG;
        if (z) {
            bVar.c = E(D(iZ), zi.e(bVar.c));
        }
        return bVar;
    }

    @Override
    public final a0.b l(Object obj, a0.b bVar) {
        Object objC = C(obj);
        Object objB = B(obj);
        int iY = y(objC);
        int iG = G(iY);
        J(iY).l(objB, bVar);
        bVar.d += iG;
        bVar.c = obj;
        return bVar;
    }

    @Override
    public int p(int i, int i2, boolean z) {
        if (this.f) {
            if (i2 == 1) {
                i2 = 2;
            }
            z = false;
        }
        int iA = A(i);
        int iG = G(iA);
        int iP = J(iA).p(i - iG, i2 != 2 ? i2 : 0, z);
        if (iP != -1) {
            return iG + iP;
        }
        int I = I(iA, z);
        while (I != -1 && J(I).u()) {
            I = I(I, z);
        }
        if (I != -1) {
            return G(I) + J(I).g(z);
        }
        if (i2 == 2) {
            return g(z);
        }
        return -1;
    }

    @Override
    public final Object q(int i) {
        int iZ = z(i);
        return E(D(iZ), J(iZ).q(i - F(iZ)));
    }

    @Override
    public final a0.d s(int i, a0.d dVar, long j) {
        int iA = A(i);
        int iG = G(iA);
        int iF = F(iA);
        J(iA).s(i - iG, dVar, j);
        Object objD = D(iA);
        if (!a0.d.s.equals(dVar.b)) {
            objD = E(objD, dVar.b);
        }
        dVar.b = objD;
        dVar.p += iF;
        dVar.q += iF;
        return dVar;
    }

    public abstract int y(Object obj);

    public abstract int z(int i);
}
