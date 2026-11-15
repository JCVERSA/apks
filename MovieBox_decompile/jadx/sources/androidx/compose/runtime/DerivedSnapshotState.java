package androidx.compose.runtime;

import androidx.compose.runtime.snapshots.SnapshotKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

final class DerivedSnapshotState extends androidx.compose.runtime.snapshots.d0 implements z {

    private final Function0 f3293a;

    private final q2 f3294b;

    private a f3295c = new a();

    public static final class a extends androidx.compose.runtime.snapshots.e0 implements z.a {

        public static final C0031a f3296h = new C0031a(null);

        public static final int f3297i = 8;

        private static final Object f3298j = new Object();

        private int f3299c;

        private int f3300d;

        private androidx.collection.p0 f3301e = androidx.collection.q0.a();

        private Object f3302f = f3298j;

        private int f3303g;

        public static final class C0031a {
            public C0031a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final Object a() {
                return a.f3298j;
            }

            private C0031a() {
            }
        }

        @Override
        public Object a() {
            return this.f3302f;
        }

        @Override
        public androidx.collection.p0 b() {
            return this.f3301e;
        }

        @Override
        public void c(androidx.compose.runtime.snapshots.e0 e0Var) {
            Intrinsics.f(e0Var, "null cannot be cast to non-null type androidx.compose.runtime.DerivedSnapshotState.ResultRecord<T of androidx.compose.runtime.DerivedSnapshotState.ResultRecord>");
            a aVar = (a) e0Var;
            m(aVar.b());
            this.f3302f = aVar.f3302f;
            this.f3303g = aVar.f3303g;
        }

        @Override
        public androidx.compose.runtime.snapshots.e0 d() {
            return new a();
        }

        public final Object j() {
            return this.f3302f;
        }

        public final boolean k(z zVar, androidx.compose.runtime.snapshots.j jVar) {
            boolean z10;
            boolean z11;
            synchronized (SnapshotKt.I()) {
                z10 = true;
                z11 = (this.f3299c == jVar.f() && this.f3300d == jVar.j()) ? false : true;
            }
            if (this.f3302f == f3298j || (z11 && this.f3303g != l(zVar, jVar))) {
                z10 = false;
            }
            if (z10 && z11) {
                synchronized (SnapshotKt.I()) {
                    this.f3299c = jVar.f();
                    this.f3300d = jVar.j();
                    Unit unit = Unit.f64096a;
                }
            }
            return z10;
        }

        /* JADX WARN: Code duplicated, block: B:40:0x00a4 A[Catch: all -> 0x007c, LOOP:1: B:16:0x003c->B:40:0x00a4, LOOP_END, TryCatch #1 {all -> 0x007c, blocks: (B:13:0x002f, B:16:0x003c, B:18:0x004c, B:20:0x0058, B:22:0x0062, B:34:0x0098, B:25:0x0071, B:27:0x0075, B:31:0x0086, B:30:0x007e, B:42:0x00a8, B:40:0x00a4), top: B:64:0x002f }] */
        /* JADX WARN: Code duplicated, block: B:68:0x00a0 A[EDGE_INSN: B:68:0x00a0->B:38:0x00a0 BREAK  A[LOOP:1: B:16:0x003c->B:40:0x00a4], SYNTHETIC] */
        public final int l(z zVar, androidx.compose.runtime.snapshots.j jVar) {
            androidx.collection.p0 p0VarB;
            int i10;
            int i11;
            synchronized (SnapshotKt.I()) {
                p0VarB = b();
            }
            char c10 = 7;
            if (!p0VarB.g()) {
                return 7;
            }
            androidx.compose.runtime.collection.b bVarA = r2.a();
            int iN = bVarA.n();
            if (iN > 0) {
                Object[] objArrM = bVarA.m();
                int i12 = 0;
                do {
                    ((a0) objArrM[i12]).b(zVar);
                    i12++;
                } while (i12 < iN);
            }
            try {
                Object[] objArr = p0VarB.f2006b;
                int[] iArr = p0VarB.f2007c;
                long[] jArr = p0VarB.f2005a;
                int length = jArr.length - 2;
                if (length >= 0) {
                    int iC = 7;
                    int i13 = 0;
                    while (true) {
                        long j10 = jArr[i13];
                        if ((((~j10) << c10) & j10 & (-9187201950435737472L)) == -9187201950435737472L) {
                            if (i13 != length) {
                                break;
                                break;
                            }
                            i13++;
                            c10 = 7;
                        } else {
                            int i14 = 8;
                            int i15 = 8 - ((~(i13 - length)) >>> 31);
                            int i16 = 0;
                            while (i16 < i15) {
                                if ((j10 & 255) < 128) {
                                    int i17 = (i13 << 3) + i16;
                                    androidx.compose.runtime.snapshots.c0 c0Var = (androidx.compose.runtime.snapshots.c0) objArr[i17];
                                    if (iArr[i17] == 1) {
                                        androidx.compose.runtime.snapshots.e0 e0VarC = c0Var instanceof DerivedSnapshotState ? ((DerivedSnapshotState) c0Var).c(jVar) : SnapshotKt.G(c0Var.getFirstStateRecord(), jVar);
                                        iC = (((iC * 31) + b.c(e0VarC)) * 31) + e0VarC.f();
                                    }
                                    i11 = 8;
                                } else {
                                    i11 = i14;
                                }
                                j10 >>= i11;
                                i16++;
                                i14 = i11;
                            }
                            if (i15 != i14) {
                                break;
                            }
                            if (i13 != length) {
                                break;
                            }
                            i13++;
                            c10 = 7;
                        }
                    }
                    i10 = iC;
                } else {
                    i10 = 7;
                }
                Unit unit = Unit.f64096a;
                int iN2 = bVarA.n();
                if (iN2 <= 0) {
                    return i10;
                }
                Object[] objArrM2 = bVarA.m();
                int i18 = 0;
                do {
                    ((a0) objArrM2[i18]).a(zVar);
                    i18++;
                } while (i18 < iN2);
                return i10;
            } catch (Throwable th2) {
                int iN3 = bVarA.n();
                if (iN3 > 0) {
                    Object[] objArrM3 = bVarA.m();
                    int i19 = 0;
                    do {
                        ((a0) objArrM3[i19]).a(zVar);
                        i19++;
                    } while (i19 < iN3);
                }
                throw th2;
            }
        }

        public void m(androidx.collection.p0 p0Var) {
            this.f3301e = p0Var;
        }

        public final void n(Object obj) {
            this.f3302f = obj;
        }

        public final void o(int i10) {
            this.f3303g = i10;
        }

        public final void p(int i10) {
            this.f3299c = i10;
        }

        public final void q(int i10) {
            this.f3300d = i10;
        }
    }

    public DerivedSnapshotState(Function0 function0, q2 q2Var) {
        this.f3293a = function0;
        this.f3294b = q2Var;
    }

    private final a d(a aVar, androidx.compose.runtime.snapshots.j jVar, boolean z10, Function0 function0) {
        androidx.compose.runtime.snapshots.j.a aVar2;
        q2 policy;
        int i10;
        int i11;
        a aVar3 = aVar;
        int i12 = 1;
        if (!aVar3.k(this, jVar)) {
            int i13 = 0;
            final androidx.collection.k0 k0Var = new androidx.collection.k0(0, 1, null);
            final androidx.compose.runtime.internal.c cVar = (androidx.compose.runtime.internal.c) s2.f3575a.a();
            if (cVar == null) {
                cVar = new androidx.compose.runtime.internal.c(0);
                s2.f3575a.b(cVar);
            }
            final int iA = cVar.a();
            androidx.compose.runtime.collection.b bVarA = r2.a();
            int iN = bVarA.n();
            if (iN > 0) {
                Object[] objArrM = bVarA.m();
                int i14 = 0;
                while (true) {
                    ((a0) objArrM[i14]).b(this);
                    int i15 = i14 + 1;
                    if (i15 >= iN) {
                        break;
                    }
                    i14 = i15;
                }
            }
            try {
                cVar.b(iA + 1);
                Object objH = androidx.compose.runtime.snapshots.j.f3695e.h(new Function1<Object, Unit>() {
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override
                    public Object invoke(Object obj) {
                        m83invoke(obj);
                        return Unit.f64096a;
                    }

                    public final void m83invoke(Object obj) {
                        if (obj == this.this$0) {
                            throw new IllegalStateException("A derived state calculation cannot read itself");
                        }
                        if (obj instanceof androidx.compose.runtime.snapshots.c0) {
                            int iA2 = cVar.a();
                            androidx.collection.k0 k0Var2 = k0Var;
                            k0Var2.r(obj, Math.min(iA2 - iA, k0Var2.d(obj, Integer.MAX_VALUE)));
                        }
                    }
                }, null, function0);
                cVar.b(iA);
                int iN2 = bVarA.n();
                if (iN2 > 0) {
                    Object[] objArrM2 = bVarA.m();
                    do {
                        ((a0) objArrM2[i13]).a(this);
                        i13++;
                    } while (i13 < iN2);
                }
                synchronized (SnapshotKt.I()) {
                    try {
                        aVar2 = androidx.compose.runtime.snapshots.j.f3695e;
                        androidx.compose.runtime.snapshots.j jVarC = aVar2.c();
                        if (aVar.j() == a.f3296h.a() || (policy = getPolicy()) == null || !policy.b(objH, aVar.j())) {
                            aVar3 = (a) SnapshotKt.O(this.f3295c, this, jVarC);
                            aVar3.m(k0Var);
                            aVar3.o(aVar3.l(this, jVarC));
                            aVar3.n(objH);
                        } else {
                            aVar3.m(k0Var);
                            aVar3.o(aVar3.l(this, jVarC));
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                androidx.compose.runtime.internal.c cVar2 = (androidx.compose.runtime.internal.c) s2.f3575a.a();
                if (cVar2 != null && cVar2.a() == 0) {
                    aVar2.g();
                    synchronized (SnapshotKt.I()) {
                        androidx.compose.runtime.snapshots.j jVarC2 = aVar2.c();
                        aVar3.p(jVarC2.f());
                        aVar3.q(jVarC2.j());
                        Unit unit = Unit.f64096a;
                    }
                }
                return aVar3;
            } catch (Throwable th3) {
                int iN3 = bVarA.n();
                if (iN3 > 0) {
                    Object[] objArrM3 = bVarA.m();
                    do {
                        ((a0) objArrM3[i13]).a(this);
                        i13++;
                    } while (i13 < iN3);
                }
                throw th3;
            }
        }
        if (z10) {
            androidx.compose.runtime.collection.b bVarA2 = r2.a();
            int iN4 = bVarA2.n();
            if (iN4 > 0) {
                Object[] objArrM4 = bVarA2.m();
                int i16 = 0;
                do {
                    ((a0) objArrM4[i16]).b(this);
                    i16++;
                } while (i16 < iN4);
            }
            try {
                androidx.collection.p0 p0VarB = aVar.b();
                androidx.compose.runtime.internal.c cVar3 = (androidx.compose.runtime.internal.c) s2.f3575a.a();
                if (cVar3 == null) {
                    cVar3 = new androidx.compose.runtime.internal.c(0);
                    s2.f3575a.b(cVar3);
                }
                int iA2 = cVar3.a();
                Object[] objArr = p0VarB.f2006b;
                int[] iArr = p0VarB.f2007c;
                long[] jArr = p0VarB.f2005a;
                int length = jArr.length - 2;
                if (length >= 0) {
                    int i17 = 0;
                    while (true) {
                        long j10 = jArr[i17];
                        long[] jArr2 = jArr;
                        if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                            int i18 = 8;
                            int i19 = 8 - ((~(i17 - length)) >>> 31);
                            int i20 = 0;
                            while (i20 < i19) {
                                if ((j10 & 255) < 128) {
                                    int i21 = (i17 << 3) + i20;
                                    androidx.compose.runtime.snapshots.c0 c0Var = (androidx.compose.runtime.snapshots.c0) objArr[i21];
                                    cVar3.b(iA2 + iArr[i21]);
                                    Function1 function1H = jVar.h();
                                    if (function1H != null) {
                                        function1H.invoke(c0Var);
                                    }
                                    i11 = 8;
                                } else {
                                    i11 = i18;
                                }
                                j10 >>= i11;
                                i20++;
                                i18 = i11;
                                i12 = 1;
                            }
                            int i22 = i18;
                            i10 = i12;
                            if (i19 != i22) {
                                break;
                            }
                        } else {
                            i10 = i12;
                        }
                        if (i17 == length) {
                            break;
                        }
                        i17 += i10;
                        i12 = i10;
                        jArr = jArr2;
                    }
                }
                cVar3.b(iA2);
                Unit unit2 = Unit.f64096a;
                int iN5 = bVarA2.n();
                if (iN5 > 0) {
                    Object[] objArrM5 = bVarA2.m();
                    int i23 = 0;
                    do {
                        ((a0) objArrM5[i23]).a(this);
                        i23++;
                    } while (i23 < iN5);
                }
            } catch (Throwable th4) {
                int iN6 = bVarA2.n();
                if (iN6 > 0) {
                    Object[] objArrM6 = bVarA2.m();
                    int i24 = 0;
                    do {
                        ((a0) objArrM6[i24]).a(this);
                        i24++;
                    } while (i24 < iN6);
                }
                throw th4;
            }
        }
        return aVar3;
    }

    private final String e() {
        a aVar = (a) SnapshotKt.F(this.f3295c);
        return aVar.k(this, androidx.compose.runtime.snapshots.j.f3695e.c()) ? String.valueOf(aVar.j()) : "<Not calculated>";
    }

    @Override
    public z.a b() {
        androidx.compose.runtime.snapshots.j jVarC = androidx.compose.runtime.snapshots.j.f3695e.c();
        return d((a) SnapshotKt.G(this.f3295c, jVarC), jVarC, false, this.f3293a);
    }

    public final androidx.compose.runtime.snapshots.e0 c(androidx.compose.runtime.snapshots.j jVar) {
        return d((a) SnapshotKt.G(this.f3295c, jVar), jVar, false, this.f3293a);
    }

    @Override
    public androidx.compose.runtime.snapshots.e0 getFirstStateRecord() {
        return this.f3295c;
    }

    @Override
    public q2 getPolicy() {
        return this.f3294b;
    }

    @Override
    public Object getValue() {
        androidx.compose.runtime.snapshots.j.a aVar = androidx.compose.runtime.snapshots.j.f3695e;
        Function1 function1H = aVar.c().h();
        if (function1H != null) {
            function1H.invoke(this);
        }
        androidx.compose.runtime.snapshots.j jVarC = aVar.c();
        return d((a) SnapshotKt.G(this.f3295c, jVarC), jVarC, true, this.f3293a).j();
    }

    @Override
    public void prependStateRecord(androidx.compose.runtime.snapshots.e0 e0Var) {
        Intrinsics.f(e0Var, "null cannot be cast to non-null type androidx.compose.runtime.DerivedSnapshotState.ResultRecord<T of androidx.compose.runtime.DerivedSnapshotState>");
        this.f3295c = (a) e0Var;
    }

    public String toString() {
        return "DerivedState(value=" + e() + ")@" + hashCode();
    }
}
