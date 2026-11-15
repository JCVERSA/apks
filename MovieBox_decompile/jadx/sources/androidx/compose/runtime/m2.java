package androidx.compose.runtime;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class m2 {

    public static final a f3497y = new a(null);

    public static final int f3498z = 8;

    private final j2 f3499a;

    private int[] f3500b;

    private Object[] f3501c;

    private ArrayList f3502d;

    private HashMap f3503e;

    private androidx.collection.e0 f3504f;

    private int f3505g;

    private int f3506h;

    private int f3507i;

    private int f3508j;

    private int f3509k;

    private int f3510l;

    private int f3511m;

    private int f3512n;

    private int f3513o;

    private androidx.collection.e0 f3517s;

    private int f3518t;

    private int f3519u;

    private boolean f3521w;

    private r1 f3522x;

    private final m0 f3514p = new m0();

    private final m0 f3515q = new m0();

    private final m0 f3516r = new m0();

    private int f3520v = -1;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final List b(m2 m2Var, int i10, m2 m2Var2, boolean z10, boolean z11, boolean z12) {
            boolean zM0;
            List listL;
            int iK0 = m2Var.k0(i10);
            int i11 = i10 + iK0;
            int iP = m2Var.P(i10);
            int iP2 = m2Var.P(i11);
            int i12 = iP2 - iP;
            boolean zM = m2Var.M(i10);
            m2Var2.o0(iK0);
            m2Var2.p0(i12, m2Var2.a0());
            if (m2Var.f3505g < i11) {
                m2Var.x0(i11);
            }
            if (m2Var.f3509k < iP2) {
                m2Var.z0(iP2, i11);
            }
            int[] iArr = m2Var2.f3500b;
            int iA0 = m2Var2.a0();
            ArraysKt.j(m2Var.f3500b, iArr, iA0 * 5, i10 * 5, i11 * 5);
            Object[] objArr = m2Var2.f3501c;
            int i13 = m2Var2.f3507i;
            ArraysKt.l(m2Var.f3501c, objArr, i13, iP, iP2);
            int iC0 = m2Var2.c0();
            l2.b0(iArr, iA0, iC0);
            int i14 = iA0 - i10;
            int i15 = iA0 + iK0;
            int iQ = i13 - m2Var2.Q(iArr, iA0);
            int i16 = m2Var2.f3511m;
            int i17 = m2Var2.f3510l;
            int length = objArr.length;
            int i18 = i16;
            int i19 = iA0;
            while (true) {
                zM0 = false;
                if (i19 >= i15) {
                    break;
                }
                if (i19 != iA0) {
                    l2.b0(iArr, i19, l2.T(iArr, i19) + i14);
                }
                int i20 = iQ;
                l2.X(iArr, i19, m2Var2.S(m2Var2.Q(iArr, i19) + iQ, i18 >= i19 ? m2Var2.f3509k : 0, i17, length));
                if (i19 == i18) {
                    i18++;
                }
                i19++;
                iQ = i20;
                i15 = i15;
            }
            int i21 = i15;
            m2Var2.f3511m = i18;
            int iP3 = l2.P(m2Var.f3502d, i10, m2Var.d0());
            int iP4 = l2.P(m2Var.f3502d, i11, m2Var.d0());
            if (iP3 < iP4) {
                ArrayList arrayList = m2Var.f3502d;
                ArrayList arrayList2 = new ArrayList(iP4 - iP3);
                for (int i22 = iP3; i22 < iP4; i22++) {
                    c cVar = (c) arrayList.get(i22);
                    cVar.c(cVar.a() + i14);
                    arrayList2.add(cVar);
                }
                m2Var2.f3502d.addAll(l2.P(m2Var2.f3502d, m2Var2.a0(), m2Var2.d0()), arrayList2);
                arrayList.subList(iP3, iP4).clear();
                listL = arrayList2;
            } else {
                listL = CollectionsKt.l();
            }
            if (!listL.isEmpty()) {
                HashMap map = m2Var.f3503e;
                HashMap map2 = m2Var2.f3503e;
                if (map != null && map2 != null) {
                    int size = listL.size();
                    for (int i23 = 0; i23 < size; i23++) {
                    }
                }
            }
            m2Var2.c0();
            m2Var2.e1(iC0);
            int iE0 = m2Var.E0(i10);
            if (z12) {
                if (z10) {
                    boolean z13 = iE0 >= 0;
                    if (z13) {
                        m2Var.g1();
                        m2Var.D(iE0 - m2Var.a0());
                        m2Var.g1();
                    }
                    m2Var.D(i10 - m2Var.a0());
                    boolean zL0 = m2Var.L0();
                    if (z13) {
                        m2Var.W0();
                        m2Var.T();
                        m2Var.W0();
                        m2Var.T();
                    }
                    zM0 = zL0;
                } else {
                    zM0 = m2Var.M0(i10, iK0);
                    m2Var.N0(iP, i12, i10 - 1);
                }
            }
            if (zM0) {
                k.r("Unexpectedly removed anchors");
            }
            m2Var2.f3513o += l2.N(iArr, iA0) ? 1 : l2.Q(iArr, iA0);
            if (z11) {
                m2Var2.f3518t = i21;
                m2Var2.f3507i = i13 + i12;
            }
            if (zM) {
                m2Var2.p1(iC0);
            }
            return listL;
        }

        static List c(a aVar, m2 m2Var, int i10, m2 m2Var2, boolean z10, boolean z11, boolean z12, int i11, Object obj) {
            if ((i11 & 32) != 0) {
                z12 = true;
            }
            return aVar.b(m2Var, i10, m2Var2, z10, z11, z12);
        }

        private a() {
        }
    }

    public m2(j2 j2Var) {
        this.f3499a = j2Var;
        this.f3500b = j2Var.o();
        this.f3501c = j2Var.q();
        this.f3502d = j2Var.m();
        this.f3503e = j2Var.s();
        this.f3504f = j2Var.n();
        this.f3505g = j2Var.p();
        this.f3506h = (this.f3500b.length / 5) - j2Var.p();
        this.f3509k = j2Var.r();
        this.f3510l = this.f3501c.length - j2Var.r();
        this.f3511m = j2Var.p();
        this.f3519u = j2Var.p();
    }

    private final int D0(int[] iArr, int i10) {
        return Q(iArr, i10);
    }

    private final int F0(int[] iArr, int i10) {
        return G0(l2.T(iArr, h0(i10)));
    }

    private final int G0(int i10) {
        return i10 > -2 ? i10 : d0() + i10 + 2;
    }

    private final int H(int[] iArr, int i10) {
        return Q(iArr, i10) + l2.E(l2.H(iArr, i10) >> 29);
    }

    private final int H0(int i10, int i11) {
        return i10 < i11 ? i10 : -((d0() - i10) + 2);
    }

    private final Object I0(Object obj) {
        Object objU0 = U0();
        T0(obj);
        return objU0;
    }

    private final boolean J(int i10) {
        int iK0 = i10 + 1;
        int iK1 = i10 + k0(i10);
        while (iK0 < iK1) {
            if (l2.C(this.f3500b, h0(iK0))) {
                return true;
            }
            iK0 += k0(iK0);
        }
        return false;
    }

    private final void J0() {
        r1 r1Var = this.f3522x;
        if (r1Var != null) {
            while (r1Var.b()) {
                q1(r1Var.d(), r1Var);
            }
        }
    }

    private final void K() {
        int i10 = this.f3509k;
        ArraysKt.u(this.f3501c, null, i10, this.f3510l + i10);
    }

    private final boolean K0(int i10, int i11, HashMap map) {
        int i12 = i11 + i10;
        int iP = l2.P(this.f3502d, i12, Y() - this.f3506h);
        if (iP >= this.f3502d.size()) {
            iP--;
        }
        int i13 = iP + 1;
        int i14 = 0;
        while (iP >= 0) {
            c cVar = (c) this.f3502d.get(iP);
            int iF = F(cVar);
            if (iF < i10) {
                break;
            }
            if (iF < i12) {
                cVar.c(Integer.MIN_VALUE);
                if (map != null) {
                }
                if (i14 == 0) {
                    i14 = iP + 1;
                }
                i13 = iP;
            }
            iP--;
        }
        boolean z10 = i13 < i14;
        if (z10) {
            this.f3502d.subList(i13, i14).clear();
        }
        return z10;
    }

    public final boolean M(int i10) {
        return i10 >= 0 && l2.C(this.f3500b, h0(i10));
    }

    public final boolean M0(int i10, int i11) {
        boolean zK0 = false;
        if (i11 > 0) {
            ArrayList arrayList = this.f3502d;
            x0(i10);
            zK0 = arrayList.isEmpty() ? false : K0(i10, i11, this.f3503e);
            this.f3505g = i10;
            this.f3506h += i11;
            int i12 = this.f3511m;
            if (i12 > i10) {
                this.f3511m = Math.max(i10, i12 - i11);
            }
            int i13 = this.f3519u;
            if (i13 >= this.f3505g) {
                this.f3519u = i13 - i11;
            }
            int i14 = this.f3520v;
            if (N(i14)) {
                p1(i14);
            }
        }
        return zK0;
    }

    private final boolean N(int i10) {
        return i10 >= 0 && l2.D(this.f3500b, h0(i10));
    }

    public final void N0(int i10, int i11, int i12) {
        if (i11 > 0) {
            int i13 = this.f3510l;
            int i14 = i10 + i11;
            z0(i14, i12);
            this.f3509k = i10;
            this.f3510l = i13 + i11;
            ArraysKt.u(this.f3501c, null, i10, i14);
            int i15 = this.f3508j;
            if (i15 >= i10) {
                this.f3508j = i15 - i11;
            }
        }
    }

    private final int O(int i10, int i11, int i12) {
        return i10 < 0 ? (i12 - i11) + i10 + 1 : i10;
    }

    public final int P(int i10) {
        return Q(this.f3500b, h0(i10));
    }

    private final int P0() {
        int iY = (Y() - this.f3506h) - this.f3515q.i();
        this.f3519u = iY;
        return iY;
    }

    public final int Q(int[] iArr, int i10) {
        return i10 >= Y() ? this.f3501c.length - this.f3510l : O(l2.F(iArr, i10), this.f3510l, this.f3501c.length);
    }

    private final void Q0() {
        this.f3515q.j((Y() - this.f3506h) - this.f3519u);
    }

    public final int R(int i10) {
        return i10 < this.f3509k ? i10 : i10 + this.f3510l;
    }

    public final int S(int i10, int i11, int i12, int i13) {
        return i10 > i11 ? -(((i13 - i12) - i10) + 1) : i10;
    }

    private final void X(int i10, int i11, int i12) {
        int iH0 = H0(i10, this.f3505g);
        while (i12 < i11) {
            l2.b0(this.f3500b, h0(i12), iH0);
            int I = l2.I(this.f3500b, h0(i12)) + i12;
            X(i12, I, i12 + 1);
            i12 = I;
        }
    }

    private final int Y() {
        return this.f3500b.length / 5;
    }

    public final int Z0(int[] iArr, int i10) {
        return i10 >= Y() ? this.f3501c.length - this.f3510l : O(l2.V(iArr, i10), this.f3510l, this.f3501c.length);
    }

    public final l0 e1(int i10) {
        c cVarL1;
        HashMap map = this.f3503e;
        if (map == null || (cVarL1 = l1(i10)) == null) {
            return null;
        }
        return (l0) map.get(cVarL1);
    }

    public final int h0(int i10) {
        return i10 < this.f3505g ? i10 : i10 + this.f3506h;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void i1(int i10, Object obj, boolean z10, Object obj2) {
        int I;
        int i11 = this.f3520v;
        Object[] objArr = this.f3512n > 0;
        this.f3516r.j(this.f3513o);
        if (objArr == true) {
            int i12 = this.f3518t;
            int iQ = Q(this.f3500b, h0(i12));
            o0(1);
            this.f3507i = iQ;
            this.f3508j = iQ;
            int iH0 = h0(i12);
            i.a aVar = i.f3427a;
            int i13 = obj != aVar.a() ? 1 : 0;
            int i14 = (z10 || obj2 == aVar.a()) ? 0 : 1;
            int iS = S(iQ, this.f3509k, this.f3510l, this.f3501c.length);
            l2.M(this.f3500b, iH0, i10, z10, i13, i14, this.f3520v, (iS < 0 || this.f3511m >= i12) ? iS : -(((this.f3501c.length - this.f3510l) - iS) + 1));
            int i15 = (z10 ? 1 : 0) + i13 + i14;
            if (i15 > 0) {
                p0(i15, i12);
                Object[] objArr2 = this.f3501c;
                int i16 = this.f3507i;
                if (z10) {
                    objArr2[i16] = obj2;
                    i16++;
                }
                if (i13 != 0) {
                    objArr2[i16] = obj;
                    i16++;
                }
                if (i14 != 0) {
                    objArr2[i16] = obj2;
                    i16++;
                }
                this.f3507i = i16;
            }
            this.f3513o = 0;
            I = i12 + 1;
            this.f3520v = i12;
            this.f3518t = I;
            if (i11 >= 0) {
                e1(i11);
            }
        } else {
            this.f3514p.j(i11);
            Q0();
            int i17 = this.f3518t;
            int iH1 = h0(i17);
            if (!Intrinsics.c(obj2, i.f3427a.a())) {
                if (z10) {
                    t1(obj2);
                } else {
                    o1(obj2);
                }
            }
            this.f3507i = Z0(this.f3500b, iH1);
            this.f3508j = Q(this.f3500b, h0(this.f3518t + 1));
            this.f3513o = l2.Q(this.f3500b, iH1);
            this.f3520v = i17;
            this.f3518t = i17 + 1;
            I = i17 + l2.I(this.f3500b, iH1);
        }
        this.f3519u = I;
    }

    private final void n1(int i10, int i11) {
        c cVar;
        int iA;
        c cVar2;
        int iA2;
        int i12;
        int iY = Y() - this.f3506h;
        if (i10 >= i11) {
            for (int iP = l2.P(this.f3502d, i11, iY); iP < this.f3502d.size() && (iA = (cVar = (c) this.f3502d.get(iP)).a()) >= 0; iP++) {
                cVar.c(-(iY - iA));
            }
            return;
        }
        for (int iP2 = l2.P(this.f3502d, i10, iY); iP2 < this.f3502d.size() && (iA2 = (cVar2 = (c) this.f3502d.get(iP2)).a()) < 0 && (i12 = iA2 + iY) < i11; iP2++) {
            cVar2.c(i12);
        }
    }

    public final void o0(int i10) {
        if (i10 > 0) {
            int i11 = this.f3518t;
            x0(i11);
            int i12 = this.f3505g;
            int i13 = this.f3506h;
            int[] iArr = this.f3500b;
            int length = iArr.length / 5;
            int i14 = length - i13;
            if (i13 < i10) {
                int iMax = Math.max(Math.max(length * 2, i14 + i10), 32);
                int[] iArr2 = new int[iMax * 5];
                int i15 = iMax - i14;
                ArraysKt.j(iArr, iArr2, 0, 0, i12 * 5);
                ArraysKt.j(iArr, iArr2, (i12 + i15) * 5, (i13 + i12) * 5, length * 5);
                this.f3500b = iArr2;
                i13 = i15;
            }
            int i16 = this.f3519u;
            if (i16 >= i12) {
                this.f3519u = i16 + i10;
            }
            int i17 = i12 + i10;
            this.f3505g = i17;
            this.f3506h = i13 - i10;
            int iS = S(i14 > 0 ? P(i11 + i10) : 0, this.f3511m >= i12 ? this.f3509k : 0, this.f3510l, this.f3501c.length);
            for (int i18 = i12; i18 < i17; i18++) {
                l2.X(this.f3500b, i18, iS);
            }
            int i19 = this.f3511m;
            if (i19 >= i12) {
                this.f3511m = i19 + i10;
            }
        }
    }

    public final void p0(int i10, int i11) {
        if (i10 > 0) {
            z0(this.f3507i, i11);
            int i12 = this.f3509k;
            int i13 = this.f3510l;
            if (i13 < i10) {
                Object[] objArr = this.f3501c;
                int length = objArr.length;
                int i14 = length - i13;
                int iMax = Math.max(Math.max(length * 2, i14 + i10), 32);
                Object[] objArr2 = new Object[iMax];
                for (int i15 = 0; i15 < iMax; i15++) {
                    objArr2[i15] = null;
                }
                int i16 = iMax - i14;
                ArraysKt.l(objArr, objArr2, 0, 0, i12);
                ArraysKt.l(objArr, objArr2, i12 + i16, i13 + i12, length);
                this.f3501c = objArr2;
                i13 = i16;
            }
            int i17 = this.f3508j;
            if (i17 >= i12) {
                this.f3508j = i17 + i10;
            }
            this.f3509k = i12 + i10;
            this.f3510l = i13 - i10;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void p1(int i10) {
        if (i10 >= 0) {
            r1 r1Var = this.f3522x;
            if (r1Var == null) {
                r1Var = new r1(null, 1, 0 == true ? 1 : 0);
                this.f3522x = r1Var;
            }
            r1Var.a(i10);
        }
    }

    private final void q1(int i10, r1 r1Var) {
        int iH0 = h0(i10);
        boolean zJ = J(i10);
        if (l2.D(this.f3500b, iH0) != zJ) {
            l2.W(this.f3500b, iH0, zJ);
            int iE0 = E0(i10);
            if (iE0 >= 0) {
                r1Var.a(iE0);
            }
        }
    }

    private final void r1(int[] iArr, int i10, int i11) {
        l2.X(iArr, i10, S(i11, this.f3509k, this.f3510l, this.f3501c.length));
    }

    public static void t0(m2 m2Var, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = m2Var.f3520v;
        }
        m2Var.s0(i10);
    }

    private final void u0(int i10, int i11, int i12) {
        c cVar;
        int iF;
        int i13 = i12 + i10;
        int iD0 = d0();
        int iP = l2.P(this.f3502d, i10, iD0);
        ArrayList arrayList = new ArrayList();
        if (iP >= 0) {
            while (iP < this.f3502d.size() && (iF = F((cVar = (c) this.f3502d.get(iP)))) >= i10 && iF < i13) {
                arrayList.add(cVar);
                this.f3502d.remove(iP);
            }
        }
        int i14 = i11 - i10;
        int size = arrayList.size();
        for (int i15 = 0; i15 < size; i15++) {
            c cVar2 = (c) arrayList.get(i15);
            int iF2 = F(cVar2) + i14;
            if (iF2 >= this.f3505g) {
                cVar2.c(-(iD0 - iF2));
            } else {
                cVar2.c(iF2);
            }
            this.f3502d.add(l2.P(this.f3502d, iF2, iD0), cVar2);
        }
    }

    private final void u1(int i10, Object obj) {
        int iH0 = h0(i10);
        int[] iArr = this.f3500b;
        if (!(iH0 < iArr.length && l2.N(iArr, iH0))) {
            k.r("Updating the node of a group at " + i10 + " that was not created with as a node group");
        }
        this.f3501c[R(D0(this.f3500b, iH0))] = obj;
    }

    public final void x0(int i10) {
        int i11 = this.f3506h;
        int i12 = this.f3505g;
        if (i12 != i10) {
            if (!this.f3502d.isEmpty()) {
                n1(i12, i10);
            }
            if (i11 > 0) {
                int[] iArr = this.f3500b;
                int i13 = i10 * 5;
                int i14 = i11 * 5;
                int i15 = i12 * 5;
                if (i10 < i12) {
                    ArraysKt.j(iArr, iArr, i14 + i13, i13, i15);
                } else {
                    ArraysKt.j(iArr, iArr, i15, i15 + i14, i13 + i14);
                }
            }
            if (i10 < i12) {
                i12 = i10 + i11;
            }
            int iY = Y();
            k.O(i12 < iY);
            while (i12 < iY) {
                int iT = l2.T(this.f3500b, i12);
                int iH0 = H0(G0(iT), i10);
                if (iH0 != iT) {
                    l2.b0(this.f3500b, i12, iH0);
                }
                i12++;
                if (i12 == i10) {
                    i12 += i11;
                }
            }
        }
        this.f3505g = i10;
    }

    public final void z0(int i10, int i11) {
        int i12 = this.f3510l;
        int i13 = this.f3509k;
        int i14 = this.f3511m;
        if (i13 != i10) {
            Object[] objArr = this.f3501c;
            if (i10 < i13) {
                ArraysKt.l(objArr, objArr, i10 + i12, i10, i13);
            } else {
                ArraysKt.l(objArr, objArr, i13, i13 + i12, i10 + i12);
            }
        }
        int iMin = Math.min(i11 + 1, d0());
        if (i14 != iMin) {
            int length = this.f3501c.length - i12;
            if (iMin < i14) {
                int iH0 = h0(iMin);
                int iH1 = h0(i14);
                int i15 = this.f3505g;
                while (iH0 < iH1) {
                    int iF = l2.F(this.f3500b, iH0);
                    if (!(iF >= 0)) {
                        k.r("Unexpected anchor value, expected a positive anchor");
                    }
                    l2.X(this.f3500b, iH0, -((length - iF) + 1));
                    iH0++;
                    if (iH0 == i15) {
                        iH0 += this.f3506h;
                    }
                }
            } else {
                int iH2 = h0(i14);
                int iH3 = h0(iMin);
                while (iH2 < iH3) {
                    int iF2 = l2.F(this.f3500b, iH2);
                    if (!(iF2 < 0)) {
                        k.r("Unexpected anchor value, expected a negative anchor");
                    }
                    l2.X(this.f3500b, iH2, iF2 + length + 1);
                    iH2++;
                    if (iH2 == this.f3505g) {
                        iH2 += this.f3506h;
                    }
                }
            }
            this.f3511m = iMin;
        }
        this.f3509k = i10;
    }

    public final Object A0(int i10) {
        int iH0 = h0(i10);
        if (l2.N(this.f3500b, iH0)) {
            return this.f3501c[R(D0(this.f3500b, iH0))];
        }
        return null;
    }

    public final Object B0(c cVar) {
        return A0(cVar.e(this));
    }

    public final int C0(int i10) {
        return l2.Q(this.f3500b, h0(i10));
    }

    public final void D(int i10) {
        boolean z10 = false;
        if (!(i10 >= 0)) {
            k.r("Cannot seek backwards");
        }
        if (!(this.f3512n <= 0)) {
            o1.b("Cannot call seek() while inserting");
        }
        if (i10 == 0) {
            return;
        }
        int i11 = this.f3518t + i10;
        if (i11 >= this.f3520v && i11 <= this.f3519u) {
            z10 = true;
        }
        if (!z10) {
            k.r("Cannot seek outside the current group (" + this.f3520v + '-' + this.f3519u + ')');
        }
        this.f3518t = i11;
        int iQ = Q(this.f3500b, h0(i11));
        this.f3507i = iQ;
        this.f3508j = iQ;
    }

    public final c E(int i10) {
        ArrayList arrayList = this.f3502d;
        int iU = l2.U(arrayList, i10, d0());
        if (iU >= 0) {
            return (c) arrayList.get(iU);
        }
        if (i10 > this.f3505g) {
            i10 = -(d0() - i10);
        }
        c cVar = new c(i10);
        arrayList.add(-(iU + 1), cVar);
        return cVar;
    }

    public final int E0(int i10) {
        return F0(this.f3500b, i10);
    }

    public final int F(c cVar) {
        int iA = cVar.a();
        return iA < 0 ? iA + d0() : iA;
    }

    public final void G(c cVar, Object obj) {
        if (!(this.f3512n == 0)) {
            k.r("Can only append a slot if not current inserting");
        }
        int i10 = this.f3507i;
        int i11 = this.f3508j;
        int iF = F(cVar);
        int iQ = Q(this.f3500b, h0(iF + 1));
        this.f3507i = iQ;
        this.f3508j = iQ;
        p0(1, iF);
        if (i10 >= iQ) {
            i10++;
            i11++;
        }
        this.f3501c[iQ] = obj;
        this.f3507i = i10;
        this.f3508j = i11;
    }

    public final void I() {
        int i10 = this.f3512n;
        this.f3512n = i10 + 1;
        if (i10 == 0) {
            Q0();
        }
    }

    public final void L(boolean z10) {
        this.f3521w = true;
        if (z10 && this.f3514p.d()) {
            x0(d0());
            z0(this.f3501c.length - this.f3510l, this.f3505g);
            K();
            J0();
        }
        this.f3499a.f(this, this.f3500b, this.f3505g, this.f3501c, this.f3509k, this.f3502d, this.f3503e, this.f3504f);
    }

    public final boolean L0() {
        if (!(this.f3512n == 0)) {
            k.r("Cannot remove group while inserting");
        }
        int i10 = this.f3518t;
        int i11 = this.f3507i;
        int iQ = Q(this.f3500b, h0(i10));
        int iV0 = V0();
        e1(this.f3520v);
        r1 r1Var = this.f3522x;
        if (r1Var != null) {
            while (r1Var.b() && r1Var.c() >= i10) {
                r1Var.d();
            }
        }
        boolean zM0 = M0(i10, this.f3518t - i10);
        N0(iQ, this.f3507i - iQ, i10 - 1);
        this.f3518t = i10;
        this.f3507i = i11;
        this.f3513o -= iV0;
        return zM0;
    }

    public final void O0() {
        if (!(this.f3512n == 0)) {
            k.r("Cannot reset when inserting");
        }
        J0();
        this.f3518t = 0;
        this.f3519u = Y() - this.f3506h;
        this.f3507i = 0;
        this.f3508j = 0;
        this.f3513o = 0;
    }

    public final Object R0(int i10, int i11, Object obj) {
        int iR = R(a1(i10, i11));
        Object[] objArr = this.f3501c;
        Object obj2 = objArr[iR];
        objArr[iR] = obj;
        return obj2;
    }

    public final Object S0(int i10, Object obj) {
        return R0(this.f3518t, i10, obj);
    }

    public final int T() {
        androidx.collection.l0 l0Var;
        boolean z10 = this.f3512n > 0;
        int i10 = this.f3518t;
        int i11 = this.f3519u;
        int i12 = this.f3520v;
        int iH0 = h0(i12);
        int i13 = this.f3513o;
        int i14 = i10 - i12;
        boolean zN = l2.N(this.f3500b, iH0);
        if (z10) {
            androidx.collection.e0 e0Var = this.f3517s;
            if (e0Var != null && (l0Var = (androidx.collection.l0) e0Var.c(i12)) != null) {
                Object[] objArr = l0Var.f1935a;
                int i15 = l0Var.f1936b;
                for (int i16 = 0; i16 < i15; i16++) {
                    I0(objArr[i16]);
                }
            }
            l2.Y(this.f3500b, iH0, i14);
            l2.a0(this.f3500b, iH0, i13);
            this.f3513o = this.f3516r.i() + (zN ? 1 : i13);
            int iF0 = F0(this.f3500b, i12);
            this.f3520v = iF0;
            int iD0 = iF0 < 0 ? d0() : h0(iF0 + 1);
            int iQ = iD0 >= 0 ? Q(this.f3500b, iD0) : 0;
            this.f3507i = iQ;
            this.f3508j = iQ;
        } else {
            if (!(i10 == i11)) {
                k.r("Expected to be at the end of a group");
            }
            int I = l2.I(this.f3500b, iH0);
            int iQ2 = l2.Q(this.f3500b, iH0);
            l2.Y(this.f3500b, iH0, i14);
            l2.a0(this.f3500b, iH0, i13);
            int i17 = this.f3514p.i();
            P0();
            this.f3520v = i17;
            int iF1 = F0(this.f3500b, i12);
            int i18 = this.f3516r.i();
            this.f3513o = i18;
            if (iF1 == i17) {
                this.f3513o = i18 + (zN ? 0 : i13 - iQ2);
            } else {
                int i19 = i14 - I;
                int i20 = zN ? 0 : i13 - iQ2;
                if (i19 != 0 || i20 != 0) {
                    while (iF1 != 0 && iF1 != i17 && (i20 != 0 || i19 != 0)) {
                        int iH1 = h0(iF1);
                        if (i19 != 0) {
                            l2.Y(this.f3500b, iH1, l2.I(this.f3500b, iH1) + i19);
                        }
                        if (i20 != 0) {
                            int[] iArr = this.f3500b;
                            l2.a0(iArr, iH1, l2.Q(iArr, iH1) + i20);
                        }
                        if (l2.N(this.f3500b, iH1)) {
                            i20 = 0;
                        }
                        iF1 = F0(this.f3500b, iF1);
                    }
                }
                this.f3513o += i20;
            }
        }
        return i13;
    }

    public final void T0(Object obj) {
        if (!(this.f3507i <= this.f3508j)) {
            k.r("Writing to an invalid slot");
        }
        this.f3501c[R(this.f3507i - 1)] = obj;
    }

    public final void U() {
        if (!(this.f3512n > 0)) {
            o1.b("Unbalanced begin/end insert");
        }
        int i10 = this.f3512n - 1;
        this.f3512n = i10;
        if (i10 == 0) {
            if (!(this.f3516r.b() == this.f3514p.b())) {
                k.r("startGroup/endGroup mismatch while inserting");
            }
            P0();
        }
    }

    public final Object U0() {
        if (this.f3512n > 0) {
            p0(1, this.f3520v);
        }
        Object[] objArr = this.f3501c;
        int i10 = this.f3507i;
        this.f3507i = i10 + 1;
        return objArr[R(i10)];
    }

    public final void V(int i10) {
        boolean z10 = false;
        if (!(this.f3512n <= 0)) {
            k.r("Cannot call ensureStarted() while inserting");
        }
        int i11 = this.f3520v;
        if (i11 != i10) {
            if (i10 >= i11 && i10 < this.f3519u) {
                z10 = true;
            }
            if (!z10) {
                k.r("Started group at " + i10 + " must be a subgroup of the group at " + i11);
            }
            int i12 = this.f3518t;
            int i13 = this.f3507i;
            int i14 = this.f3508j;
            this.f3518t = i10;
            g1();
            this.f3518t = i12;
            this.f3507i = i13;
            this.f3508j = i14;
        }
    }

    public final int V0() {
        int iH0 = h0(this.f3518t);
        int I = this.f3518t + l2.I(this.f3500b, iH0);
        this.f3518t = I;
        this.f3507i = Q(this.f3500b, h0(I));
        if (l2.N(this.f3500b, iH0)) {
            return 1;
        }
        return l2.Q(this.f3500b, iH0);
    }

    public final void W(c cVar) {
        V(cVar.e(this));
    }

    public final void W0() {
        int i10 = this.f3519u;
        this.f3518t = i10;
        this.f3507i = Q(this.f3500b, h0(i10));
    }

    public final Object X0(int i10, int i11) {
        int iZ0 = Z0(this.f3500b, h0(i10));
        int iQ = Q(this.f3500b, h0(i10 + 1));
        int i12 = i11 + iZ0;
        if (iZ0 > i12 || i12 >= iQ) {
            return i.f3427a.a();
        }
        return this.f3501c[R(i12)];
    }

    public final Object Y0(c cVar, int i10) {
        return X0(F(cVar), i10);
    }

    public final boolean Z() {
        return this.f3521w;
    }

    public final int a0() {
        return this.f3518t;
    }

    public final int a1(int i10, int i11) {
        int iZ0 = Z0(this.f3500b, h0(i10));
        int i12 = iZ0 + i11;
        if (!(i12 >= iZ0 && i12 < Q(this.f3500b, h0(i10 + 1)))) {
            k.r("Write to an invalid slot index " + i11 + " for group " + i10);
        }
        return i12;
    }

    public final int b0() {
        return this.f3519u;
    }

    public final int b1(int i10) {
        return Q(this.f3500b, h0(i10 + k0(i10)));
    }

    public final int c0() {
        return this.f3520v;
    }

    public final int c1(int i10) {
        return Q(this.f3500b, h0(i10 + 1));
    }

    public final int d0() {
        return Y() - this.f3506h;
    }

    public final int d1(int i10) {
        return Z0(this.f3500b, h0(i10));
    }

    public final int e0() {
        return this.f3501c.length - this.f3510l;
    }

    public final j2 f0() {
        return this.f3499a;
    }

    public final void f1(int i10, Object obj, Object obj2) {
        i1(i10, obj, false, obj2);
    }

    public final Object g0(int i10) {
        int iH0 = h0(i10);
        return l2.J(this.f3500b, iH0) ? this.f3501c[H(this.f3500b, iH0)] : i.f3427a.a();
    }

    public final void g1() {
        if (!(this.f3512n == 0)) {
            k.r("Key must be supplied when inserting");
        }
        i.a aVar = i.f3427a;
        i1(0, aVar.a(), false, aVar.a());
    }

    public final void h1(int i10, Object obj) {
        i1(i10, obj, false, i.f3427a.a());
    }

    public final int i0(int i10) {
        return l2.O(this.f3500b, h0(i10));
    }

    public final Object j0(int i10) {
        int iH0 = h0(i10);
        if (l2.L(this.f3500b, iH0)) {
            return this.f3501c[l2.S(this.f3500b, iH0)];
        }
        return null;
    }

    public final void j1(int i10, Object obj) {
        i1(i10, obj, true, i.f3427a.a());
    }

    public final int k0(int i10) {
        return l2.I(this.f3500b, h0(i10));
    }

    public final void k1(int i10) {
        k.O(i10 > 0);
        int i11 = this.f3520v;
        int iZ0 = Z0(this.f3500b, h0(i11));
        int iQ = Q(this.f3500b, h0(i11 + 1)) - i10;
        k.O(iQ >= iZ0);
        N0(iQ, i10, i11);
        int i12 = this.f3507i;
        if (i12 >= iZ0) {
            this.f3507i = i12 - i10;
        }
    }

    public final boolean l0(int i10) {
        return m0(i10, this.f3518t);
    }

    public final c l1(int i10) {
        if (i10 < 0 || i10 >= d0()) {
            return null;
        }
        return l2.G(this.f3502d, i10, d0());
    }

    public final boolean m0(int i10, int i11) {
        int iC;
        int iY;
        if (i11 == this.f3520v) {
            iY = this.f3519u;
        } else if (i11 <= this.f3514p.h(0) && (iC = this.f3514p.c(i11)) >= 0) {
            iY = (Y() - this.f3506h) - this.f3515q.f(iC);
        } else {
            int iK0 = k0(i11);
            iY = iK0 + i11;
        }
        return i10 > i11 && i10 < iY;
    }

    public final Object m1(Object obj) {
        if (this.f3512n <= 0 || this.f3507i == this.f3509k) {
            return I0(obj);
        }
        androidx.collection.e0 e0Var = this.f3517s;
        DefaultConstructorMarker defaultConstructorMarker = null;
        int i10 = 1;
        int i11 = 0;
        if (e0Var == null) {
            e0Var = new androidx.collection.e0(i11, i10, defaultConstructorMarker);
        }
        this.f3517s = e0Var;
        int i12 = this.f3520v;
        Object objC = e0Var.c(i12);
        if (objC == null) {
            objC = new androidx.collection.l0(i11, i10, defaultConstructorMarker);
            e0Var.t(i12, objC);
        }
        ((androidx.collection.l0) objC).e(obj);
        return i.f3427a.a();
    }

    public final boolean n0(int i10) {
        int i11 = this.f3520v;
        return (i10 > i11 && i10 < this.f3519u) || (i11 == 0 && i10 == 0);
    }

    public final void o1(Object obj) {
        int iH0 = h0(this.f3518t);
        if (!l2.J(this.f3500b, iH0)) {
            k.r("Updating the data of a group that was not created with a data slot");
        }
        this.f3501c[R(H(this.f3500b, iH0))] = obj;
    }

    public final boolean q0() {
        int i10 = this.f3518t;
        return i10 < this.f3519u && l2.N(this.f3500b, h0(i10));
    }

    public final boolean r0(int i10) {
        return l2.N(this.f3500b, h0(i10));
    }

    public final void s0(int i10) {
        int iH0 = h0(i10);
        if (l2.K(this.f3500b, iH0)) {
            return;
        }
        l2.Z(this.f3500b, iH0, true);
        if (l2.D(this.f3500b, iH0)) {
            return;
        }
        p1(E0(i10));
    }

    public final void s1(c cVar, Object obj) {
        u1(cVar.e(this), obj);
    }

    public final void t1(Object obj) {
        u1(this.f3518t, obj);
    }

    public String toString() {
        return "SlotWriter(current = " + this.f3518t + " end=" + this.f3519u + " size = " + d0() + " gap=" + this.f3505g + '-' + (this.f3505g + this.f3506h) + ')';
    }

    public final List v0(j2 j2Var, int i10, boolean z10) {
        boolean z11 = false;
        k.O(this.f3512n > 0 ? true : z11);
        if (i10 != 0 || this.f3518t != 0 || this.f3499a.p() != 0 || l2.I(j2Var.o(), i10) != j2Var.p()) {
            m2 m2VarX = j2Var.x();
            try {
                return f3497y.b(m2VarX, i10, this, true, true, z10);
            } finally {
                m2VarX.L(z11);
            }
        }
        int[] iArr = this.f3500b;
        Object[] objArr = this.f3501c;
        ArrayList arrayList = this.f3502d;
        HashMap map = this.f3503e;
        androidx.collection.e0 e0Var = this.f3504f;
        int[] iArrO = j2Var.o();
        int iP = j2Var.p();
        Object[] objArrQ = j2Var.q();
        int iR = j2Var.r();
        HashMap mapS = j2Var.s();
        androidx.collection.e0 e0VarN = j2Var.n();
        this.f3500b = iArrO;
        this.f3501c = objArrQ;
        this.f3502d = j2Var.m();
        this.f3505g = iP;
        this.f3506h = (iArrO.length / 5) - iP;
        this.f3509k = iR;
        this.f3510l = objArrQ.length - iR;
        this.f3511m = iP;
        this.f3503e = mapS;
        this.f3504f = e0VarN;
        j2Var.z(iArr, 0, objArr, 0, arrayList, map, e0Var);
        return this.f3502d;
    }

    public final void v1() {
        this.f3503e = this.f3499a.s();
        this.f3504f = this.f3499a.n();
    }

    public final void w0(int i10) {
        if (!(this.f3512n == 0)) {
            k.r("Cannot move a group while inserting");
        }
        if (!(i10 >= 0)) {
            k.r("Parameter offset is out of bounds");
        }
        if (i10 == 0) {
            return;
        }
        int i11 = this.f3518t;
        int i12 = this.f3520v;
        int i13 = this.f3519u;
        int I = i11;
        for (int i14 = i10; i14 > 0; i14--) {
            I += l2.I(this.f3500b, h0(I));
            if (!(I <= i13)) {
                k.r("Parameter offset is out of bounds");
            }
        }
        int I2 = l2.I(this.f3500b, h0(I));
        int iQ = Q(this.f3500b, h0(this.f3518t));
        int iQ2 = Q(this.f3500b, h0(I));
        int i15 = I + I2;
        int iQ3 = Q(this.f3500b, h0(i15));
        int i16 = iQ3 - iQ2;
        p0(i16, Math.max(this.f3518t - 1, 0));
        o0(I2);
        int[] iArr = this.f3500b;
        int iH0 = h0(i15) * 5;
        ArraysKt.j(iArr, iArr, h0(i11) * 5, iH0, (I2 * 5) + iH0);
        if (i16 > 0) {
            Object[] objArr = this.f3501c;
            ArraysKt.l(objArr, objArr, iQ, R(iQ2 + i16), R(iQ3 + i16));
        }
        int i17 = iQ2 + i16;
        int i18 = i17 - iQ;
        int i19 = this.f3509k;
        int i20 = this.f3510l;
        int length = this.f3501c.length;
        int i21 = this.f3511m;
        int i22 = i11 + I2;
        int i23 = i11;
        while (i23 < i22) {
            int iH1 = h0(i23);
            int i24 = i19;
            int i25 = i18;
            r1(iArr, iH1, S(Q(iArr, iH1) - i18, i21 < iH1 ? 0 : i24, i20, length));
            i23++;
            i19 = i24;
            i18 = i25;
        }
        u0(i15, i11, I2);
        if (M0(i15, I2)) {
            k.r("Unexpectedly removed anchors");
        }
        X(i12, this.f3519u, i11);
        if (i16 > 0) {
            N0(i17, i16, i15 - 1);
        }
    }

    public final List y0(int i10, j2 j2Var, int i11) {
        k.O(this.f3512n <= 0 && k0(this.f3518t + i10) == 1);
        int i12 = this.f3518t;
        int i13 = this.f3507i;
        int i14 = this.f3508j;
        D(i10);
        g1();
        I();
        m2 m2VarX = j2Var.x();
        try {
            List listC = a.c(f3497y, m2VarX, i11, this, false, true, false, 32, null);
            m2VarX.L(true);
            U();
            T();
            this.f3518t = i12;
            this.f3507i = i13;
            this.f3508j = i14;
            return listC;
        } catch (Throwable th2) {
            m2VarX.L(false);
            throw th2;
        }
    }
}
