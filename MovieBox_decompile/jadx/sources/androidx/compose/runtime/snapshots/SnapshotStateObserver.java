package androidx.compose.runtime.snapshots;

import androidx.collection.MutableScatterSet;
import androidx.collection.k0;
import androidx.collection.n0;
import androidx.collection.p0;
import androidx.compose.animation.core.j0;
import androidx.compose.runtime.o1;
import androidx.compose.runtime.r2;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.KotlinNothingValueException;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;

public final class SnapshotStateObserver {

    public static final int f3629k = 8;

    private final Function1 f3630a;

    private boolean f3632c;

    private e f3636g;

    private boolean f3637h;

    private a f3638i;

    private final AtomicReference f3631b = new AtomicReference(null);

    private final Function2 f3633d = new Function2<Set<? extends Object>, j, Unit>() {
        {
            super(2);
        }

        @Override
        public Object invoke(Object obj, Object obj2) {
            invoke((Set<? extends Object>) obj, (j) obj2);
            return Unit.f64096a;
        }

        public final void invoke(Set<? extends Object> set, j jVar) {
            this.this$0.i(set);
            if (this.this$0.m()) {
                this.this$0.r();
            }
        }
    };

    private final Function1 f3634e = new Function1<Object, Unit>() {
        {
            super(1);
        }

        @Override
        public Object invoke(Object obj) {
            m98invoke(obj);
            return Unit.f64096a;
        }

        public final void m98invoke(Object obj) {
            if (this.this$0.f3637h) {
                return;
            }
            androidx.compose.runtime.collection.b bVar = this.this$0.f3635f;
            SnapshotStateObserver snapshotStateObserver = this.this$0;
            synchronized (bVar) {
                SnapshotStateObserver.a aVar = snapshotStateObserver.f3638i;
                Intrinsics.e(aVar);
                aVar.k(obj);
                Unit unit = Unit.f64096a;
            }
        }
    };

    private final androidx.compose.runtime.collection.b f3635f = new androidx.compose.runtime.collection.b(new a[16], 0);

    private long f3639j = -1;

    static final class a {

        private final Function1 f3640a;

        private Object f3641b;

        private k0 f3642c;

        private int f3649j;

        private int f3643d = -1;

        private final androidx.compose.runtime.collection.e f3644e = new androidx.compose.runtime.collection.e();

        private final n0 f3645f = new n0(0, 1, null);

        private final MutableScatterSet f3646g = new MutableScatterSet(0, 1, null);

        private final androidx.compose.runtime.collection.b f3647h = new androidx.compose.runtime.collection.b(new androidx.compose.runtime.z[16], 0);

        private final androidx.compose.runtime.a0 f3648i = new C0035a();

        private final androidx.compose.runtime.collection.e f3650k = new androidx.compose.runtime.collection.e();

        private final HashMap f3651l = new HashMap();

        public static final class C0035a implements androidx.compose.runtime.a0 {
            C0035a() {
            }

            @Override
            public void a(androidx.compose.runtime.z zVar) {
                a.this.f3649j--;
            }

            @Override
            public void b(androidx.compose.runtime.z zVar) {
                a.this.f3649j++;
            }
        }

        public a(Function1 function1) {
            this.f3640a = function1;
        }

        private final void d(Object obj) {
            int i10 = this.f3643d;
            k0 k0Var = this.f3642c;
            if (k0Var == null) {
                return;
            }
            long[] jArr = k0Var.f2005a;
            int length = jArr.length - 2;
            if (length < 0) {
                return;
            }
            int i11 = 0;
            while (true) {
                long j10 = jArr[i11];
                if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i12 = 8 - ((~(i11 - length)) >>> 31);
                    for (int i13 = 0; i13 < i12; i13++) {
                        if ((255 & j10) < 128) {
                            int i14 = (i11 << 3) + i13;
                            Object obj2 = k0Var.f2006b[i14];
                            boolean z10 = k0Var.f2007c[i14] != i10;
                            if (z10) {
                                m(obj, obj2);
                            }
                            if (z10) {
                                k0Var.p(i14);
                            }
                        }
                        j10 >>= 8;
                    }
                    if (i12 != 8) {
                        return;
                    }
                }
                if (i11 == length) {
                    return;
                } else {
                    i11++;
                }
            }
        }

        /* JADX WARN: Code duplicated, block: B:25:0x0089 A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:26:0x008b A[LOOP:0: B:11:0x003b->B:26:0x008b, LOOP_END] */
        /* JADX WARN: Code duplicated, block: B:36:0x008f A[EDGE_INSN: B:36:0x008f->B:27:0x008f BREAK  A[LOOP:0: B:11:0x003b->B:26:0x008b], SYNTHETIC] */
        private final void l(Object obj, int i10, Object obj2, k0 k0Var) {
            int i11;
            int i12;
            if (this.f3649j > 0) {
                return;
            }
            int iO = k0Var.o(obj, i10, -1);
            if (!(obj instanceof androidx.compose.runtime.z) || iO == i10) {
                i11 = -1;
            } else {
                androidx.compose.runtime.z.a aVarB = ((androidx.compose.runtime.z) obj).b();
                this.f3651l.put(obj, aVarB.a());
                p0 p0VarB = aVarB.b();
                androidx.compose.runtime.collection.e eVar = this.f3650k;
                eVar.g(obj);
                Object[] objArr = p0VarB.f2006b;
                long[] jArr = p0VarB.f2005a;
                int length = jArr.length - 2;
                if (length >= 0) {
                    int i13 = 0;
                    while (true) {
                        long j10 = jArr[i13];
                        if ((((~j10) << 7) & j10 & (-9187201950435737472L)) == -9187201950435737472L) {
                            if (i13 != length) {
                                break;
                                break;
                            }
                            i13++;
                        } else {
                            int i14 = 8;
                            int i15 = 8 - ((~(i13 - length)) >>> 31);
                            int i16 = 0;
                            while (i16 < i15) {
                                if ((j10 & 255) < 128) {
                                    c0 c0Var = (c0) objArr[(i13 << 3) + i16];
                                    if (c0Var instanceof d0) {
                                        ((d0) c0Var).m101recordReadInh_f27i8$runtime_release(f.a(2));
                                    }
                                    eVar.a(c0Var, obj);
                                    i12 = 8;
                                } else {
                                    i12 = i14;
                                }
                                j10 >>= i12;
                                i16++;
                                i14 = i12;
                            }
                            if (i15 != i14) {
                                break;
                            } else if (i13 != length) {
                                break;
                            } else {
                                i13++;
                            }
                        }
                    }
                }
                i11 = -1;
            }
            if (iO == i11) {
                if (obj instanceof d0) {
                    ((d0) obj).m101recordReadInh_f27i8$runtime_release(f.a(2));
                }
                this.f3644e.a(obj, obj2);
            }
        }

        private final void m(Object obj, Object obj2) {
            this.f3644e.f(obj2, obj);
            if (!(obj2 instanceof androidx.compose.runtime.z) || this.f3644e.c(obj2)) {
                return;
            }
            this.f3650k.g(obj2);
            this.f3651l.remove(obj2);
        }

        public final void c() {
            this.f3644e.b();
            this.f3645f.h();
            this.f3650k.b();
            this.f3651l.clear();
        }

        public final void e(Object obj) {
            k0 k0Var = (k0) this.f3645f.o(obj);
            if (k0Var == null) {
                return;
            }
            Object[] objArr = k0Var.f2006b;
            int[] iArr = k0Var.f2007c;
            long[] jArr = k0Var.f2005a;
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
                        if ((255 & j10) < 128) {
                            int i13 = (i10 << 3) + i12;
                            Object obj2 = objArr[i13];
                            int i14 = iArr[i13];
                            m(obj, obj2);
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

        public final Function1 f() {
            return this.f3640a;
        }

        public final boolean g() {
            return this.f3645f.f();
        }

        /* JADX WARN: Code duplicated, block: B:14:0x0044 A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:15:0x0046 A[LOOP:0: B:5:0x0011->B:15:0x0046, LOOP_END] */
        /* JADX WARN: Code duplicated, block: B:19:0x0049 A[EDGE_INSN: B:19:0x0049->B:16:0x0049 BREAK  A[LOOP:0: B:5:0x0011->B:15:0x0046], SYNTHETIC] */
        public final void h() {
            MutableScatterSet mutableScatterSet = this.f3646g;
            Function1 function1 = this.f3640a;
            Object[] objArr = mutableScatterSet.f1938b;
            long[] jArr = mutableScatterSet.f1937a;
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
                                function1.invoke(objArr[(i10 << 3) + i12]);
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
            mutableScatterSet.m();
        }

        public final void i(Object obj, Function1 function1, Function0 function0) {
            Object obj2 = this.f3641b;
            k0 k0Var = this.f3642c;
            int i10 = this.f3643d;
            this.f3641b = obj;
            this.f3642c = (k0) this.f3645f.b(obj);
            if (this.f3643d == -1) {
                this.f3643d = SnapshotKt.H().f();
            }
            androidx.compose.runtime.a0 a0Var = this.f3648i;
            androidx.compose.runtime.collection.b bVarA = r2.a();
            try {
                bVarA.b(a0Var);
                j.f3695e.h(function1, null, function0);
                bVarA.v(bVarA.n() - 1);
                Object obj3 = this.f3641b;
                Intrinsics.e(obj3);
                d(obj3);
                this.f3641b = obj2;
                this.f3642c = k0Var;
                this.f3643d = i10;
            } catch (Throwable th2) {
                bVarA.v(bVarA.n() - 1);
                throw th2;
            }
        }

        /*  JADX ERROR: Type inference failed
            jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 16991. Try increasing type updates limit count.
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:79)
            */
        public final boolean j(java.util.Set r43) {
            /*
                Method dump skipped, instruction units count: 1699
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.snapshots.SnapshotStateObserver.a.j(java.util.Set):boolean");
        }

        public final void k(Object obj) {
            Object obj2 = this.f3641b;
            Intrinsics.e(obj2);
            int i10 = this.f3643d;
            k0 k0Var = this.f3642c;
            if (k0Var == null) {
                k0Var = new k0(0, 1, null);
                this.f3642c = k0Var;
                this.f3645f.r(obj2, k0Var);
                Unit unit = Unit.f64096a;
            }
            l(obj, i10, obj2, k0Var);
        }

        public final void n(Function1 function1) {
            long[] jArr;
            int i10;
            long[] jArr2;
            int i11;
            long j10;
            int i12;
            long j11;
            int i13;
            n0 n0Var = this.f3645f;
            long[] jArr3 = n0Var.f2035a;
            int length = jArr3.length - 2;
            if (length < 0) {
                return;
            }
            int i14 = 0;
            while (true) {
                long j12 = jArr3[i14];
                long j13 = -9187201950435737472L;
                if ((((~j12) << 7) & j12 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i15 = 8;
                    int i16 = 8 - ((~(i14 - length)) >>> 31);
                    int i17 = 0;
                    while (i17 < i16) {
                        if ((j12 & 255) < 128) {
                            int i18 = (i14 << 3) + i17;
                            Object obj = n0Var.f2036b[i18];
                            k0 k0Var = (k0) n0Var.f2037c[i18];
                            Boolean bool = (Boolean) function1.invoke(obj);
                            if (bool.booleanValue()) {
                                Object[] objArr = k0Var.f2006b;
                                int[] iArr = k0Var.f2007c;
                                long[] jArr4 = k0Var.f2005a;
                                int length2 = jArr4.length - 2;
                                jArr2 = jArr3;
                                if (length2 >= 0) {
                                    i12 = i16;
                                    int i19 = 0;
                                    while (true) {
                                        long j14 = jArr4[i19];
                                        i11 = i14;
                                        j10 = j12;
                                        j11 = -9187201950435737472L;
                                        if ((((~j14) << 7) & j14 & (-9187201950435737472L)) != -9187201950435737472L) {
                                            int i20 = 8 - ((~(i19 - length2)) >>> 31);
                                            for (int i21 = 0; i21 < i20; i21++) {
                                                if ((j14 & 255) < 128) {
                                                    int i22 = (i19 << 3) + i21;
                                                    Object obj2 = objArr[i22];
                                                    int i23 = iArr[i22];
                                                    m(obj, obj2);
                                                }
                                                j14 >>= 8;
                                            }
                                            if (i20 != 8) {
                                                break;
                                            }
                                        }
                                        if (i19 == length2) {
                                            break;
                                        }
                                        i19++;
                                        i14 = i11;
                                        j12 = j10;
                                    }
                                } else {
                                    i11 = i14;
                                    j10 = j12;
                                    i12 = i16;
                                    j11 = -9187201950435737472L;
                                }
                            } else {
                                jArr2 = jArr3;
                                i11 = i14;
                                j10 = j12;
                                i12 = i16;
                                j11 = j13;
                            }
                            if (bool.booleanValue()) {
                                n0Var.p(i18);
                            }
                            i13 = 8;
                        } else {
                            jArr2 = jArr3;
                            i11 = i14;
                            j10 = j12;
                            i12 = i16;
                            j11 = j13;
                            i13 = i15;
                        }
                        j12 = j10 >> i13;
                        i17++;
                        i15 = i13;
                        j13 = j11;
                        jArr3 = jArr2;
                        i16 = i12;
                        i14 = i11;
                    }
                    jArr = jArr3;
                    int i24 = i14;
                    if (i16 != i15) {
                        return;
                    } else {
                        i10 = i24;
                    }
                } else {
                    jArr = jArr3;
                    i10 = i14;
                }
                if (i10 == length) {
                    return;
                }
                i14 = i10 + 1;
                jArr3 = jArr;
            }
        }

        public final void o(androidx.compose.runtime.z zVar) {
            long[] jArr;
            int i10;
            k0 k0Var;
            n0 n0Var = this.f3645f;
            int iF = SnapshotKt.H().f();
            Object objB = this.f3644e.d().b(zVar);
            if (objB == null) {
                return;
            }
            if (!(objB instanceof MutableScatterSet)) {
                k0 k0Var2 = (k0) n0Var.b(objB);
                if (k0Var2 == null) {
                    k0Var2 = new k0(0, 1, null);
                    n0Var.r(objB, k0Var2);
                    Unit unit = Unit.f64096a;
                }
                l(zVar, iF, objB, k0Var2);
                return;
            }
            MutableScatterSet mutableScatterSet = (MutableScatterSet) objB;
            Object[] objArr = mutableScatterSet.f1938b;
            long[] jArr2 = mutableScatterSet.f1937a;
            int length = jArr2.length - 2;
            if (length < 0) {
                return;
            }
            int i11 = 0;
            while (true) {
                long j10 = jArr2[i11];
                if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i12 = 8;
                    int i13 = 8 - ((~(i11 - length)) >>> 31);
                    int i14 = 0;
                    while (i14 < i13) {
                        if ((j10 & 255) < 128) {
                            Object obj = objArr[(i11 << 3) + i14];
                            k0 k0Var3 = (k0) n0Var.b(obj);
                            if (k0Var3 == null) {
                                k0Var = new k0(0, 1, null);
                                n0Var.r(obj, k0Var);
                                Unit unit2 = Unit.f64096a;
                            } else {
                                k0Var = k0Var3;
                            }
                            l(zVar, iF, obj, k0Var);
                            i10 = 8;
                        } else {
                            i10 = i12;
                        }
                        j10 >>= i10;
                        i14++;
                        i12 = i10;
                        jArr2 = jArr2;
                    }
                    jArr = jArr2;
                    if (i13 != i12) {
                        return;
                    }
                } else {
                    jArr = jArr2;
                }
                if (i11 == length) {
                    return;
                }
                i11++;
                jArr2 = jArr;
            }
        }
    }

    public SnapshotStateObserver(Function1 function1) {
        this.f3630a = function1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void i(Set set) {
        Object obj;
        List listB0;
        do {
            obj = this.f3631b.get();
            if (obj == null) {
                listB0 = set;
            } else if (obj instanceof Set) {
                listB0 = CollectionsKt.o(obj, set);
            } else {
                if (!(obj instanceof List)) {
                    q();
                    throw new KotlinNothingValueException();
                }
                listB0 = CollectionsKt.B0((Collection) obj, CollectionsKt.e(set));
            }
        } while (!j0.a(this.f3631b, obj, listB0));
    }

    public final boolean m() {
        boolean z10;
        synchronized (this.f3635f) {
            z10 = this.f3632c;
        }
        if (z10) {
            return false;
        }
        boolean z11 = false;
        while (true) {
            Set setP = p();
            if (setP == null) {
                return z11;
            }
            synchronized (this.f3635f) {
                try {
                    androidx.compose.runtime.collection.b bVar = this.f3635f;
                    int iN = bVar.n();
                    if (iN > 0) {
                        Object[] objArrM = bVar.m();
                        int i10 = 0;
                        do {
                            z11 = ((a) objArrM[i10]).j(setP) || z11;
                            i10++;
                        } while (i10 < iN);
                    }
                    Unit unit = Unit.f64096a;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    private final a n(Function1 function1) {
        Object obj;
        androidx.compose.runtime.collection.b bVar = this.f3635f;
        int iN = bVar.n();
        if (iN <= 0) {
            obj = null;
            break;
        }
        Object[] objArrM = bVar.m();
        int i10 = 0;
        while (true) {
            obj = objArrM[i10];
            if (((a) obj).f() == function1) {
                break;
            }
            i10++;
            if (i10 >= iN) {
                obj = null;
                break;
            }
        }
        a aVar = (a) obj;
        if (aVar != null) {
            return aVar;
        }
        Intrinsics.f(function1, "null cannot be cast to non-null type kotlin.Function1<kotlin.Any, kotlin.Unit>");
        a aVar2 = new a((Function1) TypeIntrinsics.e(function1, 1));
        this.f3635f.b(aVar2);
        return aVar2;
    }

    private final Set p() {
        Object obj;
        Object objSubList;
        Set set;
        do {
            obj = this.f3631b.get();
            objSubList = null;
            if (obj == null) {
                return null;
            }
            if (obj instanceof Set) {
                set = (Set) obj;
            } else {
                if (!(obj instanceof List)) {
                    q();
                    throw new KotlinNothingValueException();
                }
                List list = (List) obj;
                Set set2 = (Set) list.get(0);
                if (list.size() == 2) {
                    objSubList = list.get(1);
                } else if (list.size() > 2) {
                    objSubList = list.subList(1, list.size());
                }
                set = set2;
            }
        } while (!j0.a(this.f3631b, obj, objSubList));
        return set;
    }

    private final Void q() {
        androidx.compose.runtime.k.s("Unexpected notification");
        throw new KotlinNothingValueException();
    }

    public final void r() {
        this.f3630a.invoke(new Function0<Unit>() {
            {
                super(0);
            }

            @Override
            public Object invoke() {
                m99invoke();
                return Unit.f64096a;
            }

            public final void m99invoke() {
                do {
                    androidx.compose.runtime.collection.b bVar = this.this$0.f3635f;
                    SnapshotStateObserver snapshotStateObserver = this.this$0;
                    synchronized (bVar) {
                        try {
                            if (!snapshotStateObserver.f3632c) {
                                snapshotStateObserver.f3632c = true;
                                try {
                                    androidx.compose.runtime.collection.b bVar2 = snapshotStateObserver.f3635f;
                                    int iN = bVar2.n();
                                    if (iN > 0) {
                                        Object[] objArrM = bVar2.m();
                                        int i10 = 0;
                                        do {
                                            ((SnapshotStateObserver.a) objArrM[i10]).h();
                                            i10++;
                                        } while (i10 < iN);
                                    }
                                    snapshotStateObserver.f3632c = false;
                                } catch (Throwable th2) {
                                    snapshotStateObserver.f3632c = false;
                                    throw th2;
                                }
                            }
                            Unit unit = Unit.f64096a;
                        } catch (Throwable th3) {
                            throw th3;
                        }
                    }
                } while (this.this$0.m());
            }
        });
    }

    public final void j() {
        synchronized (this.f3635f) {
            try {
                androidx.compose.runtime.collection.b bVar = this.f3635f;
                int iN = bVar.n();
                if (iN > 0) {
                    Object[] objArrM = bVar.m();
                    int i10 = 0;
                    do {
                        ((a) objArrM[i10]).c();
                        i10++;
                    } while (i10 < iN);
                }
                Unit unit = Unit.f64096a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void k(Object obj) {
        synchronized (this.f3635f) {
            try {
                androidx.compose.runtime.collection.b bVar = this.f3635f;
                int iN = bVar.n();
                int i10 = 0;
                for (int i11 = 0; i11 < iN; i11++) {
                    a aVar = (a) bVar.m()[i11];
                    aVar.e(obj);
                    if (!aVar.g()) {
                        i10++;
                    } else if (i10 > 0) {
                        bVar.m()[i11 - i10] = bVar.m()[i11];
                    }
                }
                int i12 = iN - i10;
                ArraysKt.u(bVar.m(), null, i12, iN);
                bVar.z(i12);
                Unit unit = Unit.f64096a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void l(Function1 function1) {
        synchronized (this.f3635f) {
            try {
                androidx.compose.runtime.collection.b bVar = this.f3635f;
                int iN = bVar.n();
                int i10 = 0;
                for (int i11 = 0; i11 < iN; i11++) {
                    a aVar = (a) bVar.m()[i11];
                    aVar.n(function1);
                    if (!aVar.g()) {
                        i10++;
                    } else if (i10 > 0) {
                        bVar.m()[i11 - i10] = bVar.m()[i11];
                    }
                }
                int i12 = iN - i10;
                ArraysKt.u(bVar.m(), null, i12, iN);
                bVar.z(i12);
                Unit unit = Unit.f64096a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void o(Object obj, Function1 function1, Function0 function0) {
        a aVarN;
        synchronized (this.f3635f) {
            aVarN = n(function1);
        }
        boolean z10 = this.f3637h;
        a aVar = this.f3638i;
        long j10 = this.f3639j;
        if (j10 != -1) {
            if (!(j10 == androidx.compose.runtime.b.a())) {
                o1.a("Detected multithreaded access to SnapshotStateObserver: previousThreadId=" + j10 + "), currentThread={id=" + androidx.compose.runtime.b.a() + ", name=" + androidx.compose.runtime.b.b() + "}. Note that observation on multiple threads in layout/draw is not supported. Make sure your measure/layout/draw for each Owner (AndroidComposeView) is executed on the same thread.");
            }
        }
        try {
            this.f3637h = false;
            this.f3638i = aVarN;
            this.f3639j = androidx.compose.runtime.b.a();
            aVarN.i(obj, this.f3634e, function0);
        } finally {
            this.f3638i = aVar;
            this.f3637h = z10;
            this.f3639j = j10;
        }
    }

    public final void s() {
        this.f3636g = j.f3695e.i(this.f3633d);
    }

    public final void t() {
        e eVar = this.f3636g;
        if (eVar != null) {
            eVar.dispose();
        }
    }
}
