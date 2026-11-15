package com.google.android.exoplayer2;

import android.util.Pair;

public abstract class a extends l3 {

    private final int f23779c;

    private final v9.t f23780d;

    private final boolean f23781e;

    public a(boolean z10, v9.t tVar) {
        this.f23781e = z10;
        this.f23780d = tVar;
        this.f23779c = tVar.getLength();
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

    private int H(int i10, boolean z10) {
        if (z10) {
            return this.f23780d.getNextIndex(i10);
        }
        if (i10 < this.f23779c - 1) {
            return i10 + 1;
        }
        return -1;
    }

    private int I(int i10, boolean z10) {
        if (z10) {
            return this.f23780d.getPreviousIndex(i10);
        }
        if (i10 > 0) {
            return i10 - 1;
        }
        return -1;
    }

    protected abstract int A(int i10);

    protected abstract Object D(int i10);

    protected abstract int F(int i10);

    protected abstract int G(int i10);

    protected abstract l3 J(int i10);

    @Override
    public int e(boolean z10) {
        if (this.f23779c == 0) {
            return -1;
        }
        if (this.f23781e) {
            z10 = false;
        }
        int firstIndex = z10 ? this.f23780d.getFirstIndex() : 0;
        while (J(firstIndex).u()) {
            firstIndex = H(firstIndex, z10);
            if (firstIndex == -1) {
                return -1;
            }
        }
        return G(firstIndex) + J(firstIndex).e(z10);
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
    public int g(boolean z10) {
        int i10 = this.f23779c;
        if (i10 == 0) {
            return -1;
        }
        if (this.f23781e) {
            z10 = false;
        }
        int lastIndex = z10 ? this.f23780d.getLastIndex() : i10 - 1;
        while (J(lastIndex).u()) {
            lastIndex = I(lastIndex, z10);
            if (lastIndex == -1) {
                return -1;
            }
        }
        return G(lastIndex) + J(lastIndex).g(z10);
    }

    @Override
    public int i(int i10, int i11, boolean z10) {
        if (this.f23781e) {
            if (i11 == 1) {
                i11 = 2;
            }
            z10 = false;
        }
        int iA = A(i10);
        int iG = G(iA);
        int i12 = J(iA).i(i10 - iG, i11 != 2 ? i11 : 0, z10);
        if (i12 != -1) {
            return iG + i12;
        }
        int iH = H(iA, z10);
        while (iH != -1 && J(iH).u()) {
            iH = H(iH, z10);
        }
        if (iH != -1) {
            return G(iH) + J(iH).e(z10);
        }
        if (i11 == 2) {
            return e(z10);
        }
        return -1;
    }

    @Override
    public final l3.b k(int i10, l3.b bVar, boolean z10) {
        int iZ = z(i10);
        int iG = G(iZ);
        J(iZ).k(i10 - F(iZ), bVar, z10);
        bVar.f24525c += iG;
        if (z10) {
            bVar.f24524b = E(D(iZ), com.google.android.exoplayer2.util.a.e(bVar.f24524b));
        }
        return bVar;
    }

    @Override
    public final l3.b l(Object obj, l3.b bVar) {
        Object objC = C(obj);
        Object objB = B(obj);
        int iY = y(objC);
        int iG = G(iY);
        J(iY).l(objB, bVar);
        bVar.f24525c += iG;
        bVar.f24524b = obj;
        return bVar;
    }

    @Override
    public int p(int i10, int i11, boolean z10) {
        if (this.f23781e) {
            if (i11 == 1) {
                i11 = 2;
            }
            z10 = false;
        }
        int iA = A(i10);
        int iG = G(iA);
        int iP = J(iA).p(i10 - iG, i11 != 2 ? i11 : 0, z10);
        if (iP != -1) {
            return iG + iP;
        }
        int I = I(iA, z10);
        while (I != -1 && J(I).u()) {
            I = I(I, z10);
        }
        if (I != -1) {
            return G(I) + J(I).g(z10);
        }
        if (i11 == 2) {
            return g(z10);
        }
        return -1;
    }

    @Override
    public final Object q(int i10) {
        int iZ = z(i10);
        return E(D(iZ), J(iZ).q(i10 - F(iZ)));
    }

    @Override
    public final l3.d s(int i10, l3.d dVar, long j10) {
        int iA = A(i10);
        int iG = G(iA);
        int iF = F(iA);
        J(iA).s(i10 - iG, dVar, j10);
        Object objD = D(iA);
        if (!l3.d.f24534r.equals(dVar.f24538a)) {
            objD = E(objD, dVar.f24538a);
        }
        dVar.f24538a = objD;
        dVar.f24552o += iF;
        dVar.f24553p += iF;
        return dVar;
    }

    protected abstract int y(Object obj);

    protected abstract int z(int i10);
}
