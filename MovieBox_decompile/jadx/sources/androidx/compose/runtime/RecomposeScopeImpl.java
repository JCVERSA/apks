package androidx.compose.runtime;

import androidx.collection.ScatterSet;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class RecomposeScopeImpl implements g2, u1 {

    public static final a f3316h = new a(null);

    public static final int f3317i = 8;

    private int f3318a;

    private w1 f3319b;

    private c f3320c;

    private Function2 f3321d;

    private int f3322e;

    private androidx.collection.k0 f3323f;

    private androidx.collection.n0 f3324g;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(m2 m2Var, List list, w1 w1Var) {
            if (list.isEmpty()) {
                return;
            }
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                Object objY0 = m2Var.Y0((c) list.get(i10), 0);
                RecomposeScopeImpl recomposeScopeImpl = objY0 instanceof RecomposeScopeImpl ? (RecomposeScopeImpl) objY0 : null;
                if (recomposeScopeImpl != null) {
                    recomposeScopeImpl.e(w1Var);
                }
            }
        }

        private a() {
        }
    }

    public RecomposeScopeImpl(w1 w1Var) {
        this.f3319b = w1Var;
    }

    private final void F(boolean z10) {
        if (z10) {
            this.f3318a |= 32;
        } else {
            this.f3318a &= -33;
        }
    }

    private final void G(boolean z10) {
        if (z10) {
            this.f3318a |= 16;
        } else {
            this.f3318a &= -17;
        }
    }

    private final boolean f(z zVar, androidx.collection.n0 n0Var) {
        Intrinsics.f(zVar, "null cannot be cast to non-null type androidx.compose.runtime.DerivedState<kotlin.Any?>");
        q2 policy = zVar.getPolicy();
        if (policy == null) {
            policy = r2.j();
        }
        return !policy.b(zVar.b().a(), n0Var.b(zVar));
    }

    private final boolean o() {
        return (this.f3318a & 32) != 0;
    }

    public final void A(c cVar) {
        this.f3320c = cVar;
    }

    public final void B(boolean z10) {
        if (z10) {
            this.f3318a |= 2;
        } else {
            this.f3318a &= -3;
        }
    }

    public final void C(boolean z10) {
        if (z10) {
            this.f3318a |= 4;
        } else {
            this.f3318a &= -5;
        }
    }

    public final void D(boolean z10) {
        if (z10) {
            this.f3318a |= 64;
        } else {
            this.f3318a &= -65;
        }
    }

    public final void E(boolean z10) {
        if (z10) {
            this.f3318a |= 8;
        } else {
            this.f3318a &= -9;
        }
    }

    public final void H(boolean z10) {
        if (z10) {
            this.f3318a |= 1;
        } else {
            this.f3318a &= -2;
        }
    }

    public final void I(int i10) {
        this.f3322e = i10;
        G(false);
    }

    @Override
    public void a(Function2 function2) {
        this.f3321d = function2;
    }

    public final void e(w1 w1Var) {
        this.f3319b = w1Var;
    }

    public final void g(i iVar) {
        Unit unit;
        Function2 function2 = this.f3321d;
        if (function2 != null) {
            function2.invoke(iVar, 1);
            unit = Unit.f64096a;
        } else {
            unit = null;
        }
        if (unit == null) {
            throw new IllegalStateException("Invalid restart scope");
        }
    }

    public final Function1 h(final int i10) {
        final androidx.collection.k0 k0Var = this.f3323f;
        if (k0Var == null || p()) {
            return null;
        }
        Object[] objArr = k0Var.f2006b;
        int[] iArr = k0Var.f2007c;
        long[] jArr = k0Var.f2005a;
        int length = jArr.length - 2;
        if (length < 0) {
            return null;
        }
        int i11 = 0;
        while (true) {
            long j10 = jArr[i11];
            if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i12 = 8 - ((~(i11 - length)) >>> 31);
                for (int i13 = 0; i13 < i12; i13++) {
                    if ((255 & j10) < 128) {
                        int i14 = (i11 << 3) + i13;
                        Object obj = objArr[i14];
                        if (iArr[i14] != i10) {
                            return new Function1<l, Unit>() {
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(1);
                                }

                                @Override
                                public Object invoke(Object obj2) {
                                    invoke((l) obj2);
                                    return Unit.f64096a;
                                }

                                public final void invoke(l lVar) {
                                    int i15;
                                    if (this.this$0.f3322e != i10 || !Intrinsics.c(k0Var, this.this$0.f3323f) || !(lVar instanceof o)) {
                                        return;
                                    }
                                    androidx.collection.k0 k0Var2 = k0Var;
                                    int i16 = i10;
                                    RecomposeScopeImpl recomposeScopeImpl = this.this$0;
                                    long[] jArr2 = k0Var2.f2005a;
                                    int length2 = jArr2.length - 2;
                                    if (length2 < 0) {
                                        return;
                                    }
                                    int i17 = 0;
                                    while (true) {
                                        long j11 = jArr2[i17];
                                        if ((((~j11) << 7) & j11 & (-9187201950435737472L)) != -9187201950435737472L) {
                                            int i18 = 8;
                                            int i19 = 8 - ((~(i17 - length2)) >>> 31);
                                            int i20 = 0;
                                            while (i20 < i19) {
                                                if ((255 & j11) < 128) {
                                                    int i21 = (i17 << 3) + i20;
                                                    Object obj2 = k0Var2.f2006b[i21];
                                                    boolean z10 = k0Var2.f2007c[i21] != i16;
                                                    if (z10) {
                                                        o oVar = (o) lVar;
                                                        oVar.J(obj2, recomposeScopeImpl);
                                                        if (obj2 instanceof z) {
                                                            oVar.I((z) obj2);
                                                            androidx.collection.n0 n0Var = recomposeScopeImpl.f3324g;
                                                            if (n0Var != null) {
                                                                n0Var.o(obj2);
                                                            }
                                                        }
                                                    }
                                                    if (z10) {
                                                        k0Var2.p(i21);
                                                    }
                                                    i15 = 8;
                                                } else {
                                                    i15 = i18;
                                                }
                                                j11 >>= i15;
                                                i20++;
                                                i18 = i15;
                                            }
                                            if (i19 != i18) {
                                                return;
                                            }
                                        }
                                        if (i17 == length2) {
                                            return;
                                        } else {
                                            i17++;
                                        }
                                    }
                                }
                            };
                        }
                    }
                    j10 >>= 8;
                }
                if (i12 != 8) {
                    return null;
                }
            }
            if (i11 == length) {
                return null;
            }
            i11++;
        }
    }

    public final c i() {
        return this.f3320c;
    }

    @Override
    public void invalidate() {
        w1 w1Var = this.f3319b;
        if (w1Var != null) {
            w1Var.k(this, null);
        }
    }

    public final boolean j() {
        return this.f3321d != null;
    }

    public final boolean k() {
        return (this.f3318a & 2) != 0;
    }

    public final boolean l() {
        return (this.f3318a & 4) != 0;
    }

    public final boolean m() {
        return (this.f3318a & 64) != 0;
    }

    public final boolean n() {
        return (this.f3318a & 8) != 0;
    }

    public final boolean p() {
        return (this.f3318a & 16) != 0;
    }

    public final boolean q() {
        return (this.f3318a & 1) != 0;
    }

    public final boolean r() {
        if (this.f3319b == null) {
            return false;
        }
        c cVar = this.f3320c;
        return cVar != null ? cVar.b() : false;
    }

    public final InvalidationResult s(Object obj) {
        InvalidationResult invalidationResultK;
        w1 w1Var = this.f3319b;
        return (w1Var == null || (invalidationResultK = w1Var.k(this, obj)) == null) ? InvalidationResult.IGNORED : invalidationResultK;
    }

    public final boolean t() {
        return this.f3324g != null;
    }

    /* JADX WARN: Code duplicated, block: B:31:0x006c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:32:0x006e A[LOOP:0: B:18:0x002f->B:32:0x006e, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:38:0x0071 A[SYNTHETIC] */
    public final boolean u(Object obj) {
        androidx.collection.n0 n0Var;
        if (obj == null || (n0Var = this.f3324g) == null) {
            return true;
        }
        if (obj instanceof z) {
            return f((z) obj, n0Var);
        }
        if (!(obj instanceof ScatterSet)) {
            return true;
        }
        ScatterSet scatterSet = (ScatterSet) obj;
        if (scatterSet.e()) {
            Object[] objArr = scatterSet.f1938b;
            long[] jArr = scatterSet.f1937a;
            int length = jArr.length - 2;
            if (length >= 0) {
                int i10 = 0;
                while (true) {
                    long j10 = jArr[i10];
                    if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                        int i11 = 8 - ((~(i10 - length)) >>> 31);
                        for (int i12 = 0; i12 < i11; i12++) {
                            if ((255 & j10) < 128) {
                                Object obj2 = objArr[(i10 << 3) + i12];
                                if (!(obj2 instanceof z) || f((z) obj2, n0Var)) {
                                    return true;
                                }
                            }
                            j10 >>= 8;
                        }
                        if (i11 == 8) {
                            if (i10 != length) {
                                i10++;
                            }
                        }
                    } else if (i10 != length) {
                        i10++;
                    }
                }
            }
        }
        return false;
    }

    public final void v(z zVar, Object obj) {
        androidx.collection.n0 n0Var = this.f3324g;
        if (n0Var == null) {
            n0Var = new androidx.collection.n0(0, 1, null);
            this.f3324g = n0Var;
        }
        n0Var.r(zVar, obj);
    }

    public final boolean w(Object obj) {
        if (o()) {
            return false;
        }
        androidx.collection.k0 k0Var = this.f3323f;
        if (k0Var == null) {
            k0Var = new androidx.collection.k0(0, 1, null);
            this.f3323f = k0Var;
        }
        return k0Var.o(obj, this.f3322e, -1) == this.f3322e;
    }

    public final void x() {
        w1 w1Var = this.f3319b;
        if (w1Var != null) {
            w1Var.h(this);
        }
        this.f3319b = null;
        this.f3323f = null;
        this.f3324g = null;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0053 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:23:0x0055 A[LOOP:0: B:10:0x001b->B:23:0x0055, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:31:0x0058 A[EDGE_INSN: B:31:0x0058->B:24:0x0058 BREAK  A[LOOP:0: B:10:0x001b->B:23:0x0055], SYNTHETIC] */
    public final void y() {
        androidx.collection.k0 k0Var;
        w1 w1Var = this.f3319b;
        if (w1Var == null || (k0Var = this.f3323f) == null) {
            return;
        }
        F(true);
        try {
            Object[] objArr = k0Var.f2006b;
            int[] iArr = k0Var.f2007c;
            long[] jArr = k0Var.f2005a;
            int length = jArr.length - 2;
            if (length >= 0) {
                int i10 = 0;
                while (true) {
                    long j10 = jArr[i10];
                    if ((((~j10) << 7) & j10 & (-9187201950435737472L)) == -9187201950435737472L) {
                        if (i10 != length) {
                            break;
                            break;
                        }
                        i10++;
                    } else {
                        int i11 = 8 - ((~(i10 - length)) >>> 31);
                        for (int i12 = 0; i12 < i11; i12++) {
                            if ((255 & j10) < 128) {
                                int i13 = (i10 << 3) + i12;
                                Object obj = objArr[i13];
                                int i14 = iArr[i13];
                                w1Var.a(obj);
                            }
                            j10 >>= 8;
                        }
                        if (i11 != 8) {
                            break;
                        } else if (i10 != length) {
                            break;
                        } else {
                            i10++;
                        }
                    }
                }
            }
        } finally {
            F(false);
        }
    }

    public final void z() {
        G(true);
    }
}
