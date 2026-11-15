package defpackage;

import android.util.Pair;

public abstract class a0j extends w4f {
    public final int b;
    public final bpj c;

    public a0j(boolean z, bpj bpjVar) {
        this.c = bpjVar;
        this.b = bpjVar.c();
    }

    @Override
    public final int a(Object obj) {
        int iA;
        if (obj instanceof Pair) {
            Pair pair = (Pair) obj;
            Object obj2 = pair.first;
            Object obj3 = pair.second;
            int iP = p(obj2);
            if (iP != -1 && (iA = u(iP).a(obj3)) != -1) {
                return s(iP) + iA;
            }
        }
        return -1;
    }

    @Override
    public final y2f d(int i, y2f y2fVar, boolean z) {
        int iQ = q(i);
        int iT = t(iQ);
        u(iQ).d(i - s(iQ), y2fVar, z);
        y2fVar.c += iT;
        if (z) {
            Object objV = v(iQ);
            Object obj = y2fVar.b;
            obj.getClass();
            y2fVar.b = Pair.create(objV, obj);
        }
        return y2fVar;
    }

    @Override
    public final e4f e(int i, e4f e4fVar, long j) {
        int iR = r(i);
        int iT = t(iR);
        int iS = s(iR);
        u(iR).e(i - iT, e4fVar, j);
        Object objV = v(iR);
        if (!e4f.o.equals(e4fVar.a)) {
            objV = Pair.create(objV, e4fVar.a);
        }
        e4fVar.a = objV;
        e4fVar.m += iS;
        e4fVar.n += iS;
        return e4fVar;
    }

    @Override
    public final Object f(int i) {
        int iQ = q(i);
        return Pair.create(v(iQ), u(iQ).f(i - s(iQ)));
    }

    @Override
    public final int g(boolean z) {
        if (this.b != 0) {
            int iA = z ? this.c.a() : 0;
            while (u(iA).o()) {
                iA = w(iA, z);
                if (iA == -1) {
                }
            }
            return t(iA) + u(iA).g(z);
        }
        return -1;
    }

    @Override
    public final int h(boolean z) {
        int i = this.b;
        if (i != 0) {
            int iB = z ? this.c.b() : i - 1;
            while (u(iB).o()) {
                iB = x(iB, z);
                if (iB == -1) {
                }
            }
            return t(iB) + u(iB).h(z);
        }
        return -1;
    }

    @Override
    public final int j(int i, int i2, boolean z) {
        int iR = r(i);
        int iT = t(iR);
        int iJ = u(iR).j(i - iT, i2 == 2 ? 0 : i2, z);
        if (iJ != -1) {
            return iT + iJ;
        }
        int iW = w(iR, z);
        while (iW != -1 && u(iW).o()) {
            iW = w(iW, z);
        }
        if (iW != -1) {
            return t(iW) + u(iW).g(z);
        }
        if (i2 == 2) {
            return g(z);
        }
        return -1;
    }

    @Override
    public final int k(int i, int i2, boolean z) {
        int iR = r(i);
        int iT = t(iR);
        int iK = u(iR).k(i - iT, 0, false);
        if (iK != -1) {
            return iT + iK;
        }
        int iX = x(iR, false);
        while (iX != -1 && u(iX).o()) {
            iX = x(iX, false);
        }
        if (iX != -1) {
            return t(iX) + u(iX).h(false);
        }
        return -1;
    }

    @Override
    public final y2f n(Object obj, y2f y2fVar) {
        Pair pair = (Pair) obj;
        Object obj2 = pair.first;
        Object obj3 = pair.second;
        int iP = p(obj2);
        int iT = t(iP);
        u(iP).n(obj3, y2fVar);
        y2fVar.c += iT;
        y2fVar.b = obj;
        return y2fVar;
    }

    public abstract int p(Object obj);

    public abstract int q(int i);

    public abstract int r(int i);

    public abstract int s(int i);

    public abstract int t(int i);

    public abstract w4f u(int i);

    public abstract Object v(int i);

    public final int w(int i, boolean z) {
        if (z) {
            return this.c.d(i);
        }
        if (i >= this.b - 1) {
            return -1;
        }
        return i + 1;
    }

    public final int x(int i, boolean z) {
        if (z) {
            return this.c.e(i);
        }
        if (i <= 0) {
            return -1;
        }
        return i - 1;
    }
}
