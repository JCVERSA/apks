package androidx.compose.runtime;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public final class i2 {

    private final j2 f3433a;

    private final int[] f3434b;

    private final int f3435c;

    private final Object[] f3436d;

    private final int f3437e;

    private HashMap f3438f;

    private boolean f3439g;

    private int f3440h;

    private int f3441i;

    private int f3442j;

    private final m0 f3443k;

    private int f3444l;

    private int f3445m;

    private int f3446n;

    private boolean f3447o;

    public i2(j2 j2Var) {
        this.f3433a = j2Var;
        this.f3434b = j2Var.o();
        int iP = j2Var.p();
        this.f3435c = iP;
        this.f3436d = j2Var.q();
        this.f3437e = j2Var.r();
        this.f3441i = iP;
        this.f3442j = -1;
        this.f3443k = new m0();
    }

    private final Object M(int[] iArr, int i10) {
        return l2.N(iArr, i10) ? this.f3436d[l2.R(iArr, i10)] : i.f3427a.a();
    }

    private final Object O(int[] iArr, int i10) {
        if (l2.L(iArr, i10)) {
            return this.f3436d[l2.S(iArr, i10)];
        }
        return null;
    }

    private final Object b(int[] iArr, int i10) {
        return l2.J(iArr, i10) ? this.f3436d[l2.B(iArr, i10)] : i.f3427a.a();
    }

    public final Object A(int i10) {
        return B(this.f3440h, i10);
    }

    public final Object B(int i10, int i11) {
        int iV = l2.V(this.f3434b, i10);
        int i12 = i10 + 1;
        int i13 = iV + i11;
        return i13 < (i12 < this.f3435c ? l2.F(this.f3434b, i12) : this.f3437e) ? this.f3436d[i13] : i.f3427a.a();
    }

    public final int C(int i10) {
        return l2.O(this.f3434b, i10);
    }

    public final Object D(int i10) {
        return O(this.f3434b, i10);
    }

    public final int E(int i10) {
        return l2.I(this.f3434b, i10);
    }

    public final boolean F(int i10) {
        return l2.K(this.f3434b, i10);
    }

    public final boolean G(int i10) {
        return l2.L(this.f3434b, i10);
    }

    public final boolean H() {
        return t() || this.f3440h == this.f3441i;
    }

    public final boolean I() {
        return l2.N(this.f3434b, this.f3440h);
    }

    public final boolean J(int i10) {
        return l2.N(this.f3434b, i10);
    }

    public final Object K() {
        int i10;
        if (this.f3444l > 0 || (i10 = this.f3445m) >= this.f3446n) {
            this.f3447o = false;
            return i.f3427a.a();
        }
        this.f3447o = true;
        Object[] objArr = this.f3436d;
        this.f3445m = i10 + 1;
        return objArr[i10];
    }

    public final Object L(int i10) {
        if (l2.N(this.f3434b, i10)) {
            return M(this.f3434b, i10);
        }
        return null;
    }

    public final int N(int i10) {
        return l2.Q(this.f3434b, i10);
    }

    public final int P(int i10) {
        return l2.T(this.f3434b, i10);
    }

    public final void Q(int i10) {
        if (!(this.f3444l == 0)) {
            k.r("Cannot reposition while in an empty region");
        }
        this.f3440h = i10;
        int iT = i10 < this.f3435c ? l2.T(this.f3434b, i10) : -1;
        this.f3442j = iT;
        if (iT < 0) {
            this.f3441i = this.f3435c;
        } else {
            this.f3441i = iT + l2.I(this.f3434b, iT);
        }
        this.f3445m = 0;
        this.f3446n = 0;
    }

    public final void R(int i10) {
        int I = l2.I(this.f3434b, i10) + i10;
        int i11 = this.f3440h;
        if (!(i11 >= i10 && i11 <= I)) {
            k.r("Index " + i10 + " is not a parent of " + i11);
        }
        this.f3442j = i10;
        this.f3441i = I;
        this.f3445m = 0;
        this.f3446n = 0;
    }

    public final int S() {
        if (!(this.f3444l == 0)) {
            k.r("Cannot skip while in an empty region");
        }
        int iQ = l2.N(this.f3434b, this.f3440h) ? 1 : l2.Q(this.f3434b, this.f3440h);
        int i10 = this.f3440h;
        this.f3440h = i10 + l2.I(this.f3434b, i10);
        return iQ;
    }

    public final void T() {
        if (!(this.f3444l == 0)) {
            k.r("Cannot skip the enclosing group while in an empty region");
        }
        this.f3440h = this.f3441i;
        this.f3445m = 0;
        this.f3446n = 0;
    }

    public final void U() {
        if (this.f3444l <= 0) {
            int i10 = this.f3442j;
            int i11 = this.f3440h;
            if (!(l2.T(this.f3434b, i11) == i10)) {
                o1.a("Invalid slot table detected");
            }
            HashMap map = this.f3438f;
            if (map != null) {
            }
            m0 m0Var = this.f3443k;
            int i12 = this.f3445m;
            int i13 = this.f3446n;
            if (i12 == 0 && i13 == 0) {
                m0Var.j(-1);
            } else {
                m0Var.j(i12);
            }
            this.f3442j = i11;
            this.f3441i = l2.I(this.f3434b, i11) + i11;
            int i14 = i11 + 1;
            this.f3440h = i14;
            this.f3445m = l2.V(this.f3434b, i11);
            this.f3446n = i11 >= this.f3435c - 1 ? this.f3437e : l2.F(this.f3434b, i14);
        }
    }

    public final void V() {
        if (this.f3444l <= 0) {
            if (!l2.N(this.f3434b, this.f3440h)) {
                o1.a("Expected a node group");
            }
            U();
        }
    }

    public final c a(int i10) {
        ArrayList arrayListM = this.f3433a.m();
        int iU = l2.U(arrayListM, i10, this.f3435c);
        if (iU >= 0) {
            return (c) arrayListM.get(iU);
        }
        c cVar = new c(i10);
        arrayListM.add(-(iU + 1), cVar);
        return cVar;
    }

    public final void c() {
        this.f3444l++;
    }

    public final void d() {
        this.f3439g = true;
        this.f3433a.e(this, this.f3438f);
    }

    public final boolean e(int i10) {
        return l2.D(this.f3434b, i10);
    }

    public final void f() {
        if (!(this.f3444l > 0)) {
            o1.a("Unbalanced begin/end empty");
        }
        this.f3444l--;
    }

    public final void g() {
        if (this.f3444l == 0) {
            if (!(this.f3440h == this.f3441i)) {
                k.r("endGroup() not called at the end of a group");
            }
            int iT = l2.T(this.f3434b, this.f3442j);
            this.f3442j = iT;
            this.f3441i = iT < 0 ? this.f3435c : l2.I(this.f3434b, iT) + iT;
            int i10 = this.f3443k.i();
            if (i10 < 0) {
                this.f3445m = 0;
                this.f3446n = 0;
            } else {
                this.f3445m = i10;
                this.f3446n = iT >= this.f3435c - 1 ? this.f3437e : l2.F(this.f3434b, iT + 1);
            }
        }
    }

    public final List h() {
        ArrayList arrayList = new ArrayList();
        if (this.f3444l > 0) {
            return arrayList;
        }
        int I = this.f3440h;
        int i10 = 0;
        while (I < this.f3441i) {
            arrayList.add(new q0(l2.O(this.f3434b, I), O(this.f3434b, I), I, l2.N(this.f3434b, I) ? 1 : l2.Q(this.f3434b, I), i10));
            I += l2.I(this.f3434b, I);
            i10++;
        }
        return arrayList;
    }

    public final boolean i() {
        return this.f3439g;
    }

    public final int j() {
        return this.f3441i;
    }

    public final int k() {
        return this.f3440h;
    }

    public final Object l() {
        int i10 = this.f3440h;
        if (i10 < this.f3441i) {
            return b(this.f3434b, i10);
        }
        return 0;
    }

    public final int m() {
        return this.f3441i;
    }

    public final int n() {
        int i10 = this.f3440h;
        if (i10 < this.f3441i) {
            return l2.O(this.f3434b, i10);
        }
        return 0;
    }

    public final Object o() {
        int i10 = this.f3440h;
        if (i10 < this.f3441i) {
            return O(this.f3434b, i10);
        }
        return null;
    }

    public final int p() {
        return l2.I(this.f3434b, this.f3440h);
    }

    public final int q() {
        return this.f3445m - l2.V(this.f3434b, this.f3442j);
    }

    public final boolean r() {
        return this.f3447o;
    }

    public final boolean s() {
        int i10 = this.f3440h;
        return i10 < this.f3441i && l2.L(this.f3434b, i10);
    }

    public final boolean t() {
        return this.f3444l > 0;
    }

    public String toString() {
        return "SlotReader(current=" + this.f3440h + ", key=" + n() + ", parent=" + this.f3442j + ", end=" + this.f3441i + ')';
    }

    public final int u() {
        return this.f3442j;
    }

    public final int v() {
        int i10 = this.f3442j;
        if (i10 >= 0) {
            return l2.Q(this.f3434b, i10);
        }
        return 0;
    }

    public final int w() {
        return this.f3446n - this.f3445m;
    }

    public final int x() {
        return this.f3435c;
    }

    public final j2 y() {
        return this.f3433a;
    }

    public final Object z(int i10) {
        return b(this.f3434b, i10);
    }
}
