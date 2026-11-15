package androidx.compose.ui.node;

import androidx.collection.MutableScatterSet;
import androidx.compose.ui.layout.PlaceableKt;
import androidx.core.view.ViewCompat;
import java.lang.ref.WeakReference;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public abstract class LookaheadCapablePlaceable extends androidx.compose.ui.layout.g0 implements androidx.compose.ui.layout.x, m0 {

    public static final a f5025n = new a(null);

    private static final Function1 f5026o = new Function1<c1, Unit>() {
        @Override
        public Object invoke(Object obj) {
            invoke((c1) obj);
            return Unit.f64096a;
        }

        public final void invoke(c1 c1Var) {
            if (c1Var.isValidOwnerScope()) {
                c1Var.a().O0(c1Var);
            }
        }
    };

    private androidx.compose.ui.layout.k0 f5027f;

    private boolean f5028g;

    private boolean f5029h;

    private boolean f5030i;

    private final androidx.compose.ui.layout.g0.a f5031j = PlaceableKt.a(this);

    private androidx.collection.j0 f5032k;

    private androidx.collection.j0 f5033l;

    private androidx.collection.n0 f5034m;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public static final class b implements androidx.compose.ui.layout.v {

        final int f5035a;

        final int f5036b;

        final Map f5037c;

        final Function1 f5038d;

        final Function1 f5039e;

        final LookaheadCapablePlaceable f5040f;

        b(int i10, int i11, Map map, Function1 function1, Function1 function2, LookaheadCapablePlaceable lookaheadCapablePlaceable) {
            this.f5035a = i10;
            this.f5036b = i11;
            this.f5037c = map;
            this.f5038d = function1;
            this.f5039e = function2;
            this.f5040f = lookaheadCapablePlaceable;
        }

        @Override
        public int getHeight() {
            return this.f5036b;
        }

        @Override
        public int getWidth() {
            return this.f5035a;
        }

        @Override
        public Map v() {
            return this.f5037c;
        }

        @Override
        public void w() {
            this.f5039e.invoke(this.f5040f.c1());
        }

        @Override
        public Function1 x() {
            return this.f5038d;
        }
    }

    public static final class c implements androidx.compose.ui.layout.k0 {
        c() {
        }

        @Override
        public float B0() {
            return LookaheadCapablePlaceable.this.B0();
        }

        @Override
        public float D0(float f10) {
            return o0.d.d(this, f10);
        }

        @Override
        public long H(float f10) {
            return o0.m.b(this, f10);
        }

        @Override
        public float J(long j10) {
            return o0.m.a(this, j10);
        }

        @Override
        public long P0(long j10) {
            return o0.d.e(this, j10);
        }

        @Override
        public long Q(float f10) {
            return o0.d.f(this, f10);
        }

        @Override
        public int c0(float f10) {
            return o0.d.a(this, f10);
        }

        @Override
        public float getDensity() {
            return LookaheadCapablePlaceable.this.getDensity();
        }

        @Override
        public float h0(long j10) {
            return o0.d.c(this, j10);
        }

        @Override
        public float x0(float f10) {
            return o0.d.b(this, f10);
        }
    }

    /* JADX WARN: Code duplicated, block: B:20:0x005b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:21:0x005d A[LOOP:0: B:11:0x002a->B:21:0x005d, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:53:0x00fe A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:54:0x0100 A[LOOP:2: B:38:0x00ad->B:54:0x0100, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:81:0x0060 A[EDGE_INSN: B:81:0x0060->B:22:0x0060 BREAK  A[LOOP:0: B:11:0x002a->B:21:0x005d], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:86:0x010b A[EDGE_INSN: B:86:0x010b->B:55:0x010b BREAK  A[LOOP:2: B:38:0x00ad->B:54:0x0100], SYNTHETIC] */
    public final void O0(final c1 c1Var) {
        LookaheadCapablePlaceable lookaheadCapablePlaceableB1;
        MutableScatterSet mutableScatterSet;
        OwnerSnapshotObserver snapshotObserver;
        if (this.f5030i) {
            return;
        }
        Function1 function1X = c1Var.b().x();
        androidx.collection.n0 n0Var = this.f5034m;
        char c10 = 7;
        long j10 = -9187201950435737472L;
        int i10 = 0;
        if (function1X == null) {
            if (n0Var != null) {
                Object[] objArr = n0Var.f2037c;
                long[] jArr = n0Var.f2035a;
                int length = jArr.length - 2;
                if (length >= 0) {
                    int i11 = 0;
                    while (true) {
                        long j11 = jArr[i11];
                        if ((((~j11) << 7) & j11 & (-9187201950435737472L)) == -9187201950435737472L) {
                            if (i11 != length) {
                                break;
                                break;
                            }
                            i11++;
                        } else {
                            int i12 = 8 - ((~(i11 - length)) >>> 31);
                            for (int i13 = 0; i13 < i12; i13++) {
                                if ((j11 & 255) < 128) {
                                    k1((MutableScatterSet) objArr[(i11 << 3) + i13]);
                                }
                                j11 >>= 8;
                            }
                            if (i12 != 8) {
                                break;
                            } else if (i11 != length) {
                                break;
                            } else {
                                i11++;
                            }
                        }
                    }
                }
                n0Var.h();
                return;
            }
            return;
        }
        androidx.collection.j0 j0Var = this.f5033l;
        DefaultConstructorMarker defaultConstructorMarker = null;
        int i14 = 1;
        if (j0Var == null) {
            j0Var = new androidx.collection.j0(i10, i14, defaultConstructorMarker);
            this.f5033l = j0Var;
        }
        androidx.collection.j0 j0Var2 = this.f5032k;
        if (j0Var2 == null) {
            j0Var2 = new androidx.collection.j0(i10, i14, defaultConstructorMarker);
            this.f5032k = j0Var2;
        }
        j0Var.p(j0Var2);
        j0Var2.i();
        y0 y0VarG0 = Z0().g0();
        if (y0VarG0 != null && (snapshotObserver = y0VarG0.getSnapshotObserver()) != null) {
            snapshotObserver.i(c1Var, f5026o, new Function0<Unit>() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override
                public Object invoke() {
                    m131invoke();
                    return Unit.f64096a;
                }

                public final void m131invoke() {
                    Function1 function1X2 = c1Var.b().x();
                    if (function1X2 != null) {
                        function1X2.invoke(this.e1());
                    }
                }
            });
        }
        if (n0Var != null) {
            Object[] objArr2 = j0Var.f2000b;
            float[] fArr = j0Var.f2001c;
            long[] jArr2 = j0Var.f1999a;
            int length2 = jArr2.length - 2;
            if (length2 >= 0) {
                int i15 = 0;
                while (true) {
                    long j12 = jArr2[i15];
                    if ((((~j12) << 7) & j12 & j10) != j10) {
                        int i16 = 8 - ((~(i15 - length2)) >>> 31);
                        for (int i17 = 0; i17 < i16; i17++) {
                            if ((j12 & 255) < 128) {
                                int i18 = (i15 << 3) + i17;
                                Object obj = objArr2[i18];
                                float f10 = fArr[i18];
                                android.support.v4.media.session.c.a(obj);
                                if (j0Var2.e(null, Float.NaN) != f10 && (mutableScatterSet = (MutableScatterSet) n0Var.o(null)) != null) {
                                    k1(mutableScatterSet);
                                }
                            }
                            j12 >>= 8;
                        }
                        if (i16 != 8) {
                            break;
                        }
                        if (i15 != length2) {
                            break;
                        }
                        i15++;
                        j10 = -9187201950435737472L;
                    } else if (i15 != length2) {
                        break;
                        break;
                    } else {
                        i15++;
                        j10 = -9187201950435737472L;
                    }
                }
            }
        }
        Object[] objArr3 = j0Var2.f2000b;
        long[] jArr3 = j0Var2.f1999a;
        int length3 = jArr3.length - 2;
        if (length3 >= 0) {
            int i19 = 0;
            while (true) {
                long j13 = jArr3[i19];
                if ((((~j13) << c10) & j13 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i20 = 8 - ((~(i19 - length3)) >>> 31);
                    for (int i21 = 0; i21 < i20; i21++) {
                        if ((j13 & 255) < 128) {
                            android.support.v4.media.session.c.a(objArr3[(i19 << 3) + i21]);
                            if (!j0Var.a(null) && (lookaheadCapablePlaceableB1 = b1()) != null) {
                                lookaheadCapablePlaceableB1.g1(null);
                            }
                        }
                        j13 >>= 8;
                    }
                    if (i20 != 8) {
                        break;
                    }
                }
                if (i19 == length3) {
                    break;
                }
                i19++;
                c10 = 7;
            }
        }
        j0Var.i();
    }

    private final LookaheadCapablePlaceable R0(androidx.compose.ui.layout.j0 j0Var) {
        LookaheadCapablePlaceable lookaheadCapablePlaceable = this;
        while (true) {
            androidx.collection.j0 j0Var2 = lookaheadCapablePlaceable.f5032k;
            if (j0Var2 != null && j0Var2.a(j0Var)) {
                return lookaheadCapablePlaceable;
            }
            LookaheadCapablePlaceable lookaheadCapablePlaceableB1 = lookaheadCapablePlaceable.b1();
            if (lookaheadCapablePlaceableB1 == null) {
                return lookaheadCapablePlaceable;
            }
            lookaheadCapablePlaceable = lookaheadCapablePlaceableB1;
        }
    }

    private final void g1(androidx.compose.ui.layout.j0 j0Var) {
        androidx.collection.n0 n0Var = R0(j0Var).f5034m;
        MutableScatterSet mutableScatterSet = n0Var != null ? (MutableScatterSet) n0Var.o(j0Var) : null;
        if (mutableScatterSet != null) {
            k1(mutableScatterSet);
        }
    }

    private final void k1(MutableScatterSet mutableScatterSet) {
        LayoutNode layoutNode;
        Object[] objArr = mutableScatterSet.f1938b;
        long[] jArr = mutableScatterSet.f1937a;
        int length = jArr.length - 2;
        if (length < 0) {
            return;
        }
        int i10 = 0;
        while (true) {
            long j10 = jArr[i10];
            if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i11 = 8 - ((~(i10 - length)) >>> 31);
                for (int i12 = 0; i12 < i11; i12++) {
                    if ((255 & j10) < 128 && (layoutNode = (LayoutNode) ((WeakReference) objArr[(i10 << 3) + i12]).get()) != null) {
                        if (W()) {
                            layoutNode.a1(false);
                        } else {
                            layoutNode.e1(false);
                        }
                    }
                    j10 >>= 8;
                }
                if (i11 != 8) {
                    return;
                }
            }
            if (i10 == length) {
                return;
            } else {
                i10++;
            }
        }
    }

    @Override
    public float D0(float f10) {
        return o0.d.d(this, f10);
    }

    @Override
    public long H(float f10) {
        return o0.m.b(this, f10);
    }

    public abstract int I0(androidx.compose.ui.layout.a aVar);

    @Override
    public float J(long j10) {
        return o0.m.a(this, j10);
    }

    @Override
    public androidx.compose.ui.layout.v L0(int i10, int i11, Map map, Function1 function1, Function1 function2) {
        if (!((i10 & ViewCompat.MEASURED_STATE_MASK) == 0 && ((-16777216) & i11) == 0)) {
            g0.a.b("Size(" + i10 + " x " + i11 + ") is out of range. Each dimension must be between 0 and 16777215.");
        }
        return new b(i10, i11, map, function1, function2, this);
    }

    @Override
    public long P0(long j10) {
        return o0.d.e(this, j10);
    }

    @Override
    public long Q(float f10) {
        return o0.d.f(this, f10);
    }

    /* JADX WARN: Code duplicated, block: B:18:0x004f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:19:0x0051 A[LOOP:0: B:9:0x001a->B:19:0x0051, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:28:0x0054 A[EDGE_INSN: B:28:0x0054->B:20:0x0054 BREAK  A[LOOP:0: B:9:0x001a->B:19:0x0051], SYNTHETIC] */
    public final void Q0(androidx.compose.ui.layout.v vVar) {
        if (vVar != null) {
            O0(new c1(vVar, this));
            return;
        }
        androidx.collection.n0 n0Var = this.f5034m;
        if (n0Var != null) {
            Object[] objArr = n0Var.f2037c;
            long[] jArr = n0Var.f2035a;
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
                                k1((MutableScatterSet) objArr[(i10 << 3) + i12]);
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
        }
        androidx.collection.n0 n0Var2 = this.f5034m;
        if (n0Var2 != null) {
            n0Var2.h();
        }
        androidx.collection.j0 j0Var = this.f5032k;
        if (j0Var != null) {
            j0Var.i();
        }
    }

    public final int S0(androidx.compose.ui.layout.a aVar) {
        int iI0;
        if (Y0() && (iI0 = I0(aVar)) != Integer.MIN_VALUE) {
            return iI0 + o0.p.i(k0());
        }
        return Integer.MIN_VALUE;
    }

    @Override
    public void V(boolean z10) {
        this.f5028g = z10;
    }

    public abstract LookaheadCapablePlaceable V0();

    @Override
    public boolean W() {
        return false;
    }

    public abstract androidx.compose.ui.layout.l W0();

    public abstract boolean Y0();

    public abstract LayoutNode Z0();

    public abstract androidx.compose.ui.layout.v a1();

    public abstract LookaheadCapablePlaceable b1();

    @Override
    public int c0(float f10) {
        return o0.d.a(this, f10);
    }

    public final androidx.compose.ui.layout.g0.a c1() {
        return this.f5031j;
    }

    public abstract long d1();

    public final androidx.compose.ui.layout.k0 e1() {
        androidx.compose.ui.layout.k0 k0Var = this.f5027f;
        return k0Var == null ? new c() : k0Var;
    }

    protected final void f1(NodeCoordinator nodeCoordinator) {
        AlignmentLines alignmentLinesV;
        NodeCoordinator nodeCoordinatorY1 = nodeCoordinator.Y1();
        if (!Intrinsics.c(nodeCoordinatorY1 != null ? nodeCoordinatorY1.Z0() : null, nodeCoordinator.Z0())) {
            nodeCoordinator.O1().v().m();
            return;
        }
        androidx.compose.ui.node.a aVarD = nodeCoordinator.O1().D();
        if (aVarD == null || (alignmentLinesV = aVarD.v()) == null) {
            return;
        }
        alignmentLinesV.m();
    }

    @Override
    public float h0(long j10) {
        return o0.d.c(this, j10);
    }

    public boolean h1() {
        return this.f5028g;
    }

    public final boolean i1() {
        return this.f5030i;
    }

    public final boolean j1() {
        return this.f5029h;
    }

    public abstract void l1();

    public final void m1(boolean z10) {
        this.f5030i = z10;
    }

    public final void n1(boolean z10) {
        this.f5029h = z10;
    }

    @Override
    public androidx.compose.ui.layout.v p0(int i10, int i11, Map map, Function1 function1) {
        return androidx.compose.ui.layout.w.a(this, i10, i11, map, function1);
    }

    @Override
    public float x0(float f10) {
        return o0.d.b(this, f10);
    }
}
