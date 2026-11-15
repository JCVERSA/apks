package androidx.compose.runtime.snapshots;

import androidx.collection.MutableScatterSet;
import androidx.compose.runtime.AtomicInt;
import androidx.compose.runtime.h3;
import androidx.compose.runtime.v2;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.KotlinNothingValueException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

public abstract class SnapshotKt {

    private static final Function1 f3613a = new Function1<SnapshotIdSet, Unit>() {
        public final void invoke(SnapshotIdSet snapshotIdSet) {
        }

        @Override
        public Object invoke(Object obj) {
            invoke((SnapshotIdSet) obj);
            return Unit.f64096a;
        }
    };

    private static final v2 f3614b = new v2();

    private static final Object f3615c = new Object();

    private static SnapshotIdSet f3616d;

    private static int f3617e;

    private static final l f3618f;

    private static final v f3619g;

    private static List f3620h;

    private static List f3621i;

    private static final AtomicReference f3622j;

    private static final j f3623k;

    private static AtomicInt f3624l;

    static {
        SnapshotIdSet.a aVar = SnapshotIdSet.f3607e;
        f3616d = aVar.a();
        f3617e = 2;
        f3618f = new l();
        f3619g = new v();
        f3620h = CollectionsKt.l();
        f3621i = CollectionsKt.l();
        int i10 = f3617e;
        f3617e = i10 + 1;
        GlobalSnapshot globalSnapshot = new GlobalSnapshot(i10, aVar.a());
        f3616d = f3616d.p(globalSnapshot.f());
        AtomicReference atomicReference = new AtomicReference(globalSnapshot);
        f3622j = atomicReference;
        f3623k = (j) atomicReference.get();
        f3624l = new AtomicInt(0);
    }

    /* JADX WARN: Code duplicated, block: B:41:0x00a6 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:42:0x00a8 A[Catch: all -> 0x009f, LOOP:1: B:30:0x006f->B:42:0x00a8, LOOP_END, TryCatch #2 {all -> 0x009f, blocks: (B:25:0x0060, B:27:0x0065, B:30:0x006f, B:32:0x007f, B:34:0x008b, B:36:0x0094, B:39:0x00a1, B:42:0x00a8, B:43:0x00aa), top: B:54:0x0060 }] */
    /* JADX WARN: Code duplicated, block: B:58:0x00aa A[EDGE_INSN: B:58:0x00aa->B:43:0x00aa BREAK  A[LOOP:1: B:30:0x006f->B:42:0x00a8], SYNTHETIC] */
    public static final Object A(Function1 function1) {
        Object obj;
        MutableScatterSet mutableScatterSetE;
        Object objA0;
        j jVar = f3623k;
        Intrinsics.f(jVar, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.GlobalSnapshot");
        synchronized (I()) {
            try {
                obj = f3622j.get();
                mutableScatterSetE = ((GlobalSnapshot) obj).E();
                if (mutableScatterSetE != null) {
                    f3624l.add(1);
                }
                objA0 = a0((j) obj, function1);
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (mutableScatterSetE != null) {
            try {
                List list = f3620h;
                int size = list.size();
                for (int i10 = 0; i10 < size; i10++) {
                    ((Function2) list.get(i10)).invoke(androidx.compose.runtime.collection.d.a(mutableScatterSetE), obj);
                }
                f3624l.add(-1);
            } catch (Throwable th3) {
                f3624l.add(-1);
                throw th3;
            }
        }
        synchronized (I()) {
            try {
                C();
                if (mutableScatterSetE != null) {
                    Object[] objArr = mutableScatterSetE.f1938b;
                    long[] jArr = mutableScatterSetE.f1937a;
                    int length = jArr.length - 2;
                    if (length >= 0) {
                        int i11 = 0;
                        while (true) {
                            long j10 = jArr[i11];
                            if ((((~j10) << 7) & j10 & (-9187201950435737472L)) == -9187201950435737472L) {
                                if (i11 != length) {
                                    break;
                                    break;
                                }
                                i11++;
                            } else {
                                int i12 = 8 - ((~(i11 - length)) >>> 31);
                                for (int i13 = 0; i13 < i12; i13++) {
                                    if ((255 & j10) < 128) {
                                        U((c0) objArr[(i11 << 3) + i13]);
                                    }
                                    j10 >>= 8;
                                }
                                if (i12 != 8) {
                                    break;
                                }
                                if (i11 != length) {
                                    break;
                                }
                                i11++;
                            }
                        }
                    }
                    Unit unit = Unit.f64096a;
                }
            } catch (Throwable th4) {
                throw th4;
            }
        }
        return objA0;
    }

    public static final void B() {
        A(new Function1<SnapshotIdSet, Unit>() {
            public final void invoke(SnapshotIdSet snapshotIdSet) {
            }

            @Override
            public Object invoke(Object obj) {
                invoke((SnapshotIdSet) obj);
                return Unit.f64096a;
            }
        });
    }

    public static final void C() {
        v vVar = f3619g;
        int iE = vVar.e();
        int i10 = 0;
        int i11 = 0;
        while (true) {
            if (i10 >= iE) {
                break;
            }
            h3 h3Var = vVar.f()[i10];
            Object obj = h3Var != null ? h3Var.get() : null;
            if (obj != null && T((c0) obj)) {
                if (i11 != i10) {
                    vVar.f()[i11] = h3Var;
                    vVar.d()[i11] = vVar.d()[i10];
                }
                i11++;
            }
            i10++;
        }
        for (int i12 = i11; i12 < iE; i12++) {
            vVar.f()[i12] = null;
            vVar.d()[i12] = 0;
        }
        if (i11 != iE) {
            vVar.g(i11);
        }
    }

    public static final j D(j jVar, Function1 function1, boolean z10) {
        boolean z11 = jVar instanceof b;
        if (z11 || jVar == null) {
            return new g0(z11 ? (b) jVar : null, function1, null, false, z10);
        }
        return new h0(jVar, function1, false, z10);
    }

    static j E(j jVar, Function1 function1, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            function1 = null;
        }
        if ((i10 & 4) != 0) {
            z10 = false;
        }
        return D(jVar, function1, z10);
    }

    public static final e0 F(e0 e0Var) {
        e0 e0VarW;
        j.a aVar = j.f3695e;
        j jVarC = aVar.c();
        e0 e0VarW2 = W(e0Var, jVarC.f(), jVarC.g());
        if (e0VarW2 != null) {
            return e0VarW2;
        }
        synchronized (I()) {
            j jVarC2 = aVar.c();
            e0VarW = W(e0Var, jVarC2.f(), jVarC2.g());
        }
        if (e0VarW != null) {
            return e0VarW;
        }
        V();
        throw new KotlinNothingValueException();
    }

    public static final e0 G(e0 e0Var, j jVar) {
        e0 e0VarW = W(e0Var, jVar.f(), jVar.g());
        if (e0VarW != null) {
            return e0VarW;
        }
        V();
        throw new KotlinNothingValueException();
    }

    public static final j H() {
        j jVar = (j) f3614b.a();
        return jVar == null ? (j) f3622j.get() : jVar;
    }

    public static final Object I() {
        return f3615c;
    }

    public static final j J() {
        return f3623k;
    }

    public static final Function1 K(final Function1 function1, final Function1 function2, boolean z10) {
        if (!z10) {
            function2 = null;
        }
        if (function1 == null || function2 == null || function1 == function2) {
            return function1 == null ? function2 : function1;
        }
        return new Function1<Object, Unit>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                m96invoke(obj);
                return Unit.f64096a;
            }

            public final void m96invoke(Object obj) {
                function1.invoke(obj);
                function2.invoke(obj);
            }
        };
    }

    static Function1 L(Function1 function1, Function1 function2, boolean z10, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            z10 = true;
        }
        return K(function1, function2, z10);
    }

    public static final Function1 M(final Function1 function1, final Function1 function2) {
        if (function1 == null || function2 == null || function1 == function2) {
            return function1 == null ? function2 : function1;
        }
        return new Function1<Object, Unit>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                m97invoke(obj);
                return Unit.f64096a;
            }

            public final void m97invoke(Object obj) {
                function1.invoke(obj);
                function2.invoke(obj);
            }
        };
    }

    public static final e0 N(e0 e0Var, c0 c0Var) {
        e0 e0VarD0 = d0(c0Var);
        if (e0VarD0 != null) {
            e0VarD0.h(Integer.MAX_VALUE);
            return e0VarD0;
        }
        e0 e0VarD = e0Var.d();
        e0VarD.h(Integer.MAX_VALUE);
        e0VarD.g(c0Var.getFirstStateRecord());
        Intrinsics.f(e0VarD, "null cannot be cast to non-null type T of androidx.compose.runtime.snapshots.SnapshotKt.newOverwritableRecordLocked$lambda$16");
        c0Var.prependStateRecord(e0VarD);
        Intrinsics.f(e0VarD, "null cannot be cast to non-null type T of androidx.compose.runtime.snapshots.SnapshotKt.newOverwritableRecordLocked");
        return e0VarD;
    }

    public static final e0 O(e0 e0Var, c0 c0Var, j jVar) {
        e0 e0VarP;
        synchronized (I()) {
            e0VarP = P(e0Var, c0Var, jVar);
        }
        return e0VarP;
    }

    private static final e0 P(e0 e0Var, c0 c0Var, j jVar) {
        e0 e0VarN = N(e0Var, c0Var);
        e0VarN.c(e0Var);
        e0VarN.h(jVar.f());
        return e0VarN;
    }

    public static final void Q(j jVar, c0 c0Var) {
        jVar.w(jVar.j() + 1);
        Function1 function1K = jVar.k();
        if (function1K != null) {
            function1K.invoke(c0Var);
        }
    }

    public static final Map R(b bVar, b bVar2, SnapshotIdSet snapshotIdSet) {
        long[] jArr;
        int i10;
        HashMap map;
        HashMap map2;
        int i11;
        e0 e0VarW;
        MutableScatterSet mutableScatterSetE = bVar2.E();
        int iF = bVar.f();
        HashMap map3 = null;
        if (mutableScatterSetE == null) {
            return null;
        }
        SnapshotIdSet snapshotIdSetO = bVar2.g().p(bVar2.f()).o(bVar2.F());
        Object[] objArr = mutableScatterSetE.f1938b;
        long[] jArr2 = mutableScatterSetE.f1937a;
        int length = jArr2.length - 2;
        if (length >= 0) {
            HashMap map4 = null;
            int i12 = 0;
            while (true) {
                long j10 = jArr2[i12];
                if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i13 = 8;
                    int i14 = 8 - ((~(i12 - length)) >>> 31);
                    int i15 = 0;
                    while (i15 < i14) {
                        if ((255 & j10) < 128) {
                            c0 c0Var = (c0) objArr[(i12 << 3) + i15];
                            e0 firstStateRecord = c0Var.getFirstStateRecord();
                            e0 e0VarW2 = W(firstStateRecord, iF, snapshotIdSet);
                            if (e0VarW2 != null && (e0VarW = W(firstStateRecord, iF, snapshotIdSetO)) != null && !Intrinsics.c(e0VarW2, e0VarW)) {
                                e0 e0VarW3 = W(firstStateRecord, bVar2.f(), bVar2.g());
                                if (e0VarW3 == null) {
                                    V();
                                    throw new KotlinNothingValueException();
                                }
                                e0 e0VarMergeRecords = c0Var.mergeRecords(e0VarW, e0VarW2, e0VarW3);
                                if (e0VarMergeRecords == null) {
                                    return null;
                                }
                                if (map4 == null) {
                                    map4 = new HashMap();
                                }
                                map4.put(e0VarW2, e0VarMergeRecords);
                                map4 = map4;
                            }
                            map2 = null;
                            i11 = 8;
                        } else {
                            jArr2 = jArr2;
                            iF = iF;
                            map2 = map3;
                            i11 = i13;
                        }
                        j10 >>= i11;
                        i15++;
                        map3 = map2;
                        i13 = i11;
                        jArr2 = jArr2;
                        iF = iF;
                    }
                    jArr = jArr2;
                    i10 = iF;
                    map = map3;
                    if (i14 != i13) {
                        return map4;
                    }
                } else {
                    jArr = jArr2;
                    i10 = iF;
                    map = map3;
                }
                if (i12 != length) {
                    i12++;
                    map3 = map;
                    jArr2 = jArr;
                    iF = i10;
                } else {
                    map3 = map4;
                }
            }
        }
        return map3;
    }

    public static final e0 S(e0 e0Var, c0 c0Var, j jVar, e0 e0Var2) {
        e0 e0VarN;
        if (jVar.i()) {
            jVar.p(c0Var);
        }
        int iF = jVar.f();
        if (e0Var2.f() == iF) {
            return e0Var2;
        }
        synchronized (I()) {
            e0VarN = N(e0Var, c0Var);
        }
        e0VarN.h(iF);
        if (e0Var2.f() != 1) {
            jVar.p(c0Var);
        }
        return e0VarN;
    }

    private static final boolean T(c0 c0Var) {
        e0 e0Var;
        int iE = f3618f.e(f3617e);
        e0 e0Var2 = null;
        e0 firstStateRecord = null;
        int i10 = 0;
        for (e0 firstStateRecord2 = c0Var.getFirstStateRecord(); firstStateRecord2 != null; firstStateRecord2 = firstStateRecord2.e()) {
            int iF = firstStateRecord2.f();
            if (iF != 0) {
                if (iF >= iE) {
                    i10++;
                } else if (e0Var2 == null) {
                    i10++;
                    e0Var2 = firstStateRecord2;
                } else {
                    if (firstStateRecord2.f() < e0Var2.f()) {
                        e0Var = e0Var2;
                        e0Var2 = firstStateRecord2;
                    } else {
                        e0Var = firstStateRecord2;
                    }
                    if (firstStateRecord == null) {
                        firstStateRecord = c0Var.getFirstStateRecord();
                        e0 e0Var3 = firstStateRecord;
                        while (true) {
                            if (firstStateRecord == null) {
                                firstStateRecord = e0Var3;
                                break;
                            }
                            if (firstStateRecord.f() >= iE) {
                                break;
                            }
                            if (e0Var3.f() < firstStateRecord.f()) {
                                e0Var3 = firstStateRecord;
                            }
                            firstStateRecord = firstStateRecord.e();
                        }
                    }
                    e0Var2.h(0);
                    e0Var2.c(firstStateRecord);
                    e0Var2 = e0Var;
                }
            }
        }
        return i10 > 1;
    }

    public static final void U(c0 c0Var) {
        if (T(c0Var)) {
            f3619g.a(c0Var);
        }
    }

    public static final Void V() {
        throw new IllegalStateException("Reading a state that was created after the snapshot was taken or in a snapshot that has not yet been applied");
    }

    public static final e0 W(e0 e0Var, int i10, SnapshotIdSet snapshotIdSet) {
        e0 e0Var2 = null;
        while (e0Var != null) {
            if (f0(e0Var, i10, snapshotIdSet) && (e0Var2 == null || e0Var2.f() < e0Var.f())) {
                e0Var2 = e0Var;
            }
            e0Var = e0Var.e();
        }
        if (e0Var2 != null) {
            return e0Var2;
        }
        return null;
    }

    public static final e0 X(e0 e0Var, c0 c0Var) {
        e0 e0VarW;
        j.a aVar = j.f3695e;
        j jVarC = aVar.c();
        Function1 function1H = jVarC.h();
        if (function1H != null) {
            function1H.invoke(c0Var);
        }
        e0 e0VarW2 = W(e0Var, jVarC.f(), jVarC.g());
        if (e0VarW2 != null) {
            return e0VarW2;
        }
        synchronized (I()) {
            j jVarC2 = aVar.c();
            e0 firstStateRecord = c0Var.getFirstStateRecord();
            Intrinsics.f(firstStateRecord, "null cannot be cast to non-null type T of androidx.compose.runtime.snapshots.SnapshotKt.readable$lambda$9");
            e0VarW = W(firstStateRecord, jVarC2.f(), jVarC2.g());
            if (e0VarW == null) {
                V();
                throw new KotlinNothingValueException();
            }
        }
        return e0VarW;
    }

    public static final void Y(int i10) {
        f3618f.f(i10);
    }

    public static final Void Z() {
        throw new IllegalStateException("Cannot modify a state object in a read-only snapshot");
    }

    public static final Object a0(j jVar, Function1 function1) {
        Object objInvoke = function1.invoke(f3616d.l(jVar.f()));
        synchronized (I()) {
            int i10 = f3617e;
            f3617e = i10 + 1;
            f3616d = f3616d.l(jVar.f());
            f3622j.set(new GlobalSnapshot(i10, f3616d));
            jVar.d();
            f3616d = f3616d.p(i10);
            Unit unit = Unit.f64096a;
        }
        return objInvoke;
    }

    public static final j b0(final Function1 function1) {
        return (j) A(new Function1<SnapshotIdSet, j>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override
            public final j invoke(SnapshotIdSet snapshotIdSet) {
                j jVar = (j) function1.invoke(snapshotIdSet);
                synchronized (SnapshotKt.I()) {
                    SnapshotKt.f3616d = SnapshotKt.f3616d.p(jVar.f());
                    Unit unit = Unit.f64096a;
                }
                return jVar;
            }
        });
    }

    public static final int c0(int i10, SnapshotIdSet snapshotIdSet) {
        int iA;
        int iN = snapshotIdSet.n(i10);
        synchronized (I()) {
            iA = f3618f.a(iN);
        }
        return iA;
    }

    private static final e0 d0(c0 c0Var) {
        int iE = f3618f.e(f3617e) - 1;
        SnapshotIdSet snapshotIdSetA = SnapshotIdSet.f3607e.a();
        e0 e0Var = null;
        for (e0 firstStateRecord = c0Var.getFirstStateRecord(); firstStateRecord != null; firstStateRecord = firstStateRecord.e()) {
            if (firstStateRecord.f() == 0) {
                return firstStateRecord;
            }
            if (f0(firstStateRecord, iE, snapshotIdSetA)) {
                if (e0Var != null) {
                    return firstStateRecord.f() < e0Var.f() ? firstStateRecord : e0Var;
                }
                e0Var = firstStateRecord;
            }
        }
        return null;
    }

    private static final boolean e0(int i10, int i11, SnapshotIdSet snapshotIdSet) {
        return (i11 == 0 || i11 > i10 || snapshotIdSet.m(i11)) ? false : true;
    }

    private static final boolean f0(e0 e0Var, int i10, SnapshotIdSet snapshotIdSet) {
        return e0(i10, e0Var.f(), snapshotIdSet);
    }

    public static final void g0(j jVar) {
        int iE;
        if (f3616d.m(jVar.f())) {
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Snapshot is not open: id=");
        sb2.append(jVar.f());
        sb2.append(", disposed=");
        sb2.append(jVar.e());
        sb2.append(", applied=");
        b bVar = jVar instanceof b ? (b) jVar : null;
        sb2.append(bVar != null ? Boolean.valueOf(bVar.D()) : "read-only");
        sb2.append(", lowestPin=");
        synchronized (I()) {
            iE = f3618f.e(-1);
        }
        sb2.append(iE);
        throw new IllegalStateException(sb2.toString().toString());
    }

    public static final e0 h0(e0 e0Var, c0 c0Var, j jVar) {
        e0 e0VarW;
        if (jVar.i()) {
            jVar.p(c0Var);
        }
        int iF = jVar.f();
        e0 e0VarW2 = W(e0Var, iF, jVar.g());
        if (e0VarW2 == null) {
            V();
            throw new KotlinNothingValueException();
        }
        if (e0VarW2.f() == jVar.f()) {
            return e0VarW2;
        }
        synchronized (I()) {
            e0VarW = W(c0Var.getFirstStateRecord(), iF, jVar.g());
            if (e0VarW == null) {
                V();
                throw new KotlinNothingValueException();
            }
            if (e0VarW.f() != iF) {
                e0VarW = P(e0VarW, c0Var, jVar);
            }
        }
        Intrinsics.f(e0VarW, "null cannot be cast to non-null type T of androidx.compose.runtime.snapshots.SnapshotKt.writableRecord");
        if (e0VarW2.f() != 1) {
            jVar.p(c0Var);
        }
        return e0VarW;
    }

    public static final SnapshotIdSet z(SnapshotIdSet snapshotIdSet, int i10, int i11) {
        while (i10 < i11) {
            snapshotIdSet = snapshotIdSet.p(i10);
            i10++;
        }
        return snapshotIdSet;
    }
}
