package androidx.compose.runtime.snapshots;

import androidx.collection.MutableScatterSet;
import androidx.collection.w0;
import androidx.compose.runtime.o1;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.KotlinNothingValueException;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public class b extends j {

    private static final a f3653p = new a(null);

    public static final int f3654q = 8;

    private static final int[] f3655r = new int[0];

    private final Function1 f3656g;

    private final Function1 f3657h;

    private int f3658i;

    private MutableScatterSet f3659j;

    private List f3660k;

    private SnapshotIdSet f3661l;

    private int[] f3662m;

    private int f3663n;

    private boolean f3664o;

    private static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public b(int i10, SnapshotIdSet snapshotIdSet, Function1 function1, Function1 function2) {
        super(i10, snapshotIdSet, null);
        this.f3656g = function1;
        this.f3657h = function2;
        this.f3661l = SnapshotIdSet.f3607e.a();
        this.f3662m = f3655r;
        this.f3663n = 1;
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0072 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:24:0x0074 A[LOOP:0: B:7:0x001c->B:24:0x0074, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:28:0x0077 A[EDGE_INSN: B:28:0x0077->B:25:0x0077 BREAK  A[LOOP:0: B:7:0x001c->B:24:0x0074], SYNTHETIC] */
    private final void A() {
        MutableScatterSet mutableScatterSetE = E();
        if (mutableScatterSetE != null) {
            R();
            P(null);
            int iF = f();
            Object[] objArr = mutableScatterSetE.f1938b;
            long[] jArr = mutableScatterSetE.f1937a;
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
                                for (e0 firstStateRecord = ((c0) objArr[(i10 << 3) + i12]).getFirstStateRecord(); firstStateRecord != null; firstStateRecord = firstStateRecord.e()) {
                                    if (firstStateRecord.f() == iF || CollectionsKt.b0(this.f3661l, Integer.valueOf(firstStateRecord.f()))) {
                                        firstStateRecord.h(0);
                                    }
                                }
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
        b();
    }

    private final void N() {
        int length = this.f3662m.length;
        for (int i10 = 0; i10 < length; i10++) {
            SnapshotKt.Y(this.f3662m[i10]);
        }
    }

    private final void R() {
        if (this.f3664o) {
            o1.b("Unsupported operation on a snapshot that has been applied");
        }
    }

    private final void S() {
        if (!this.f3664o || ((j) this).f3700d >= 0) {
            return;
        }
        o1.b("Unsupported operation on a disposed or applied snapshot");
    }

    public final void B() {
        J(f());
        Unit unit = Unit.f64096a;
        if (D() || e()) {
            return;
        }
        int iF = f();
        synchronized (SnapshotKt.I()) {
            int i10 = SnapshotKt.f3617e;
            SnapshotKt.f3617e = i10 + 1;
            u(i10);
            SnapshotKt.f3616d = SnapshotKt.f3616d.p(f());
        }
        v(SnapshotKt.z(g(), iF + 1, f()));
    }

    public k C() throws Throwable {
        MutableScatterSet mutableScatterSetE;
        int i10;
        MutableScatterSet mutableScatterSetE2 = E();
        Map mapR = mutableScatterSetE2 != null ? SnapshotKt.R((b) SnapshotKt.f3622j.get(), this, SnapshotKt.f3616d.l(((GlobalSnapshot) SnapshotKt.f3622j.get()).f())) : null;
        List listL = CollectionsKt.l();
        synchronized (SnapshotKt.I()) {
            try {
                SnapshotKt.g0(this);
                if (mutableScatterSetE2 == null || mutableScatterSetE2.c() == 0) {
                    c();
                    GlobalSnapshot globalSnapshot = (GlobalSnapshot) SnapshotKt.f3622j.get();
                    SnapshotKt.a0(globalSnapshot, SnapshotKt.f3613a);
                    mutableScatterSetE = globalSnapshot.E();
                    if (mutableScatterSetE == null || !mutableScatterSetE.e()) {
                        mutableScatterSetE = null;
                    } else {
                        listL = SnapshotKt.f3620h;
                    }
                } else {
                    GlobalSnapshot globalSnapshot2 = (GlobalSnapshot) SnapshotKt.f3622j.get();
                    k kVarI = I(SnapshotKt.f3617e, mapR, SnapshotKt.f3616d.l(globalSnapshot2.f()));
                    if (!Intrinsics.c(kVarI, k.b.f3702a)) {
                        return kVarI;
                    }
                    c();
                    SnapshotKt.a0(globalSnapshot2, SnapshotKt.f3613a);
                    mutableScatterSetE = globalSnapshot2.E();
                    P(null);
                    globalSnapshot2.P(null);
                    listL = SnapshotKt.f3620h;
                }
                Unit unit = Unit.f64096a;
                this.f3664o = true;
                if (mutableScatterSetE != null) {
                    Set setA = androidx.compose.runtime.collection.d.a(mutableScatterSetE);
                    if (!setA.isEmpty()) {
                        int size = listL.size();
                        for (int i11 = 0; i11 < size; i11++) {
                            ((Function2) listL.get(i11)).invoke(setA, this);
                        }
                    }
                }
                if (mutableScatterSetE2 != null && mutableScatterSetE2.e()) {
                    Set setA2 = androidx.compose.runtime.collection.d.a(mutableScatterSetE2);
                    int size2 = listL.size();
                    for (int i12 = 0; i12 < size2; i12++) {
                        ((Function2) listL.get(i12)).invoke(setA2, this);
                    }
                }
                synchronized (SnapshotKt.I()) {
                    try {
                        r();
                        SnapshotKt.C();
                        if (mutableScatterSetE != null) {
                            try {
                                Object[] objArr = mutableScatterSetE.f1938b;
                                long[] jArr = mutableScatterSetE.f1937a;
                                int length = jArr.length - 2;
                                if (length >= 0) {
                                    int i13 = 0;
                                    while (true) {
                                        long j10 = jArr[i13];
                                        if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                                            int i14 = 8 - ((~(i13 - length)) >>> 31);
                                            for (int i15 = 0; i15 < i14; i15++) {
                                                if ((j10 & 255) < 128) {
                                                    SnapshotKt.U((c0) objArr[(i13 << 3) + i15]);
                                                }
                                                j10 >>= 8;
                                            }
                                            if (i14 != 8) {
                                                break;
                                            }
                                        }
                                        if (i13 == length) {
                                            break;
                                        }
                                        i13++;
                                    }
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                throw th;
                            }
                        }
                        if (mutableScatterSetE2 != null) {
                            Object[] objArr2 = mutableScatterSetE2.f1938b;
                            long[] jArr2 = mutableScatterSetE2.f1937a;
                            int length2 = jArr2.length - 2;
                            if (length2 >= 0) {
                                int i16 = 0;
                                while (true) {
                                    long j11 = jArr2[i16];
                                    if ((((~j11) << 7) & j11 & (-9187201950435737472L)) != -9187201950435737472L) {
                                        int i17 = 8 - ((~(i16 - length2)) >>> 31);
                                        for (int i18 = 0; i18 < i17; i18++) {
                                            if ((j11 & 255) < 128) {
                                                SnapshotKt.U((c0) objArr2[(i16 << 3) + i18]);
                                            }
                                            j11 >>= 8;
                                        }
                                        i10 = 1;
                                        if (i17 != 8) {
                                            break;
                                        }
                                    } else {
                                        i10 = 1;
                                    }
                                    if (i16 == length2) {
                                        break;
                                    }
                                    i16 += i10;
                                }
                            }
                        }
                        List list = this.f3660k;
                        if (list != null) {
                            int size3 = list.size();
                            for (int i19 = 0; i19 < size3; i19++) {
                                SnapshotKt.U((c0) list.get(i19));
                            }
                        }
                        this.f3660k = null;
                        Unit unit2 = Unit.f64096a;
                        return k.b.f3702a;
                    } catch (Throwable th3) {
                        th = th3;
                    }
                }
            } catch (Throwable th4) {
                throw th4;
            }
        }
    }

    public final boolean D() {
        return this.f3664o;
    }

    public MutableScatterSet E() {
        return this.f3659j;
    }

    public final SnapshotIdSet F() {
        return this.f3661l;
    }

    public final int[] G() {
        return this.f3662m;
    }

    @Override
    public Function1 h() {
        return this.f3656g;
    }

    public final k I(int i10, Map map, SnapshotIdSet snapshotIdSet) {
        MutableScatterSet mutableScatterSet;
        List listB0;
        SnapshotIdSet snapshotIdSet2;
        Object[] objArr;
        long[] jArr;
        int i11;
        SnapshotIdSet snapshotIdSet3;
        int i12;
        e0 e0VarW;
        e0 e0VarMergeRecords;
        SnapshotIdSet snapshotIdSetO = g().p(f()).o(this.f3661l);
        MutableScatterSet mutableScatterSetE = E();
        Intrinsics.e(mutableScatterSetE);
        Object[] objArr2 = mutableScatterSetE.f1938b;
        long[] jArr2 = mutableScatterSetE.f1937a;
        int length = jArr2.length - 2;
        ArrayList arrayList = null;
        if (length >= 0) {
            listB0 = null;
            int i13 = 0;
            while (true) {
                long j10 = jArr2[i13];
                if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i14 = 8;
                    int i15 = 8 - ((~(i13 - length)) >>> 31);
                    int i16 = 0;
                    while (i16 < i15) {
                        if ((j10 & 255) < 128) {
                            c0 c0Var = (c0) objArr2[(i13 << 3) + i16];
                            e0 firstStateRecord = c0Var.getFirstStateRecord();
                            e0 e0VarW2 = SnapshotKt.W(firstStateRecord, i10, snapshotIdSet);
                            if (e0VarW2 == null || (e0VarW = SnapshotKt.W(firstStateRecord, f(), snapshotIdSetO)) == null) {
                                snapshotIdSet3 = snapshotIdSetO;
                            } else {
                                snapshotIdSet3 = snapshotIdSetO;
                                if (e0VarW.f() != 1 && !Intrinsics.c(e0VarW2, e0VarW)) {
                                    e0 e0VarW3 = SnapshotKt.W(firstStateRecord, f(), g());
                                    if (e0VarW3 == null) {
                                        SnapshotKt.V();
                                        throw new KotlinNothingValueException();
                                    }
                                    if (map == null || (e0VarMergeRecords = (e0) map.get(e0VarW2)) == null) {
                                        e0VarMergeRecords = c0Var.mergeRecords(e0VarW, e0VarW2, e0VarW3);
                                    }
                                    if (e0VarMergeRecords == null) {
                                        return new k.a(this);
                                    }
                                    if (!Intrinsics.c(e0VarMergeRecords, e0VarW3)) {
                                        if (Intrinsics.c(e0VarMergeRecords, e0VarW2)) {
                                            if (arrayList == null) {
                                                arrayList = new ArrayList();
                                            }
                                            arrayList.add(TuplesKt.a(c0Var, e0VarW2.d()));
                                            if (listB0 == null) {
                                                listB0 = new ArrayList();
                                            }
                                            listB0.add(c0Var);
                                        } else {
                                            if (arrayList == null) {
                                                arrayList = new ArrayList();
                                            }
                                            arrayList.add(!Intrinsics.c(e0VarMergeRecords, e0VarW) ? TuplesKt.a(c0Var, e0VarMergeRecords) : TuplesKt.a(c0Var, e0VarW.d()));
                                        }
                                    }
                                }
                            }
                            i12 = 8;
                        } else {
                            snapshotIdSet3 = snapshotIdSetO;
                            i12 = i14;
                        }
                        j10 >>= i12;
                        i16++;
                        i14 = i12;
                        objArr2 = objArr2;
                        jArr2 = jArr2;
                        mutableScatterSetE = mutableScatterSetE;
                        snapshotIdSetO = snapshotIdSet3;
                    }
                    snapshotIdSet2 = snapshotIdSetO;
                    mutableScatterSet = mutableScatterSetE;
                    objArr = objArr2;
                    jArr = jArr2;
                    i11 = 1;
                    if (i15 != i14) {
                        break;
                    }
                } else {
                    snapshotIdSet2 = snapshotIdSetO;
                    mutableScatterSet = mutableScatterSetE;
                    objArr = objArr2;
                    jArr = jArr2;
                    i11 = 1;
                }
                if (i13 == length) {
                    break;
                }
                i13 += i11;
                objArr2 = objArr;
                jArr2 = jArr;
                mutableScatterSetE = mutableScatterSet;
                snapshotIdSetO = snapshotIdSet2;
            }
        } else {
            mutableScatterSet = mutableScatterSetE;
            listB0 = null;
        }
        if (arrayList != null) {
            B();
            int size = arrayList.size();
            for (int i17 = 0; i17 < size; i17++) {
                Pair pair = (Pair) arrayList.get(i17);
                c0 c0Var2 = (c0) pair.component1();
                e0 e0Var = (e0) pair.component2();
                e0Var.h(f());
                synchronized (SnapshotKt.I()) {
                    e0Var.g(c0Var2.getFirstStateRecord());
                    c0Var2.prependStateRecord(e0Var);
                    Unit unit = Unit.f64096a;
                }
            }
        }
        if (listB0 != null) {
            int size2 = listB0.size();
            for (int i18 = 0; i18 < size2; i18++) {
                mutableScatterSet.x((c0) listB0.get(i18));
            }
            List list = this.f3660k;
            if (list != null) {
                listB0 = CollectionsKt.B0(list, listB0);
            }
            this.f3660k = listB0;
        }
        return k.b.f3702a;
    }

    public final void J(int i10) {
        synchronized (SnapshotKt.I()) {
            this.f3661l = this.f3661l.p(i10);
            Unit unit = Unit.f64096a;
        }
    }

    public final void K(SnapshotIdSet snapshotIdSet) {
        synchronized (SnapshotKt.I()) {
            this.f3661l = this.f3661l.o(snapshotIdSet);
            Unit unit = Unit.f64096a;
        }
    }

    public final void L(int i10) {
        if (i10 >= 0) {
            this.f3662m = ArraysKt.A(this.f3662m, i10);
        }
    }

    public final void M(int[] iArr) {
        if (iArr.length == 0) {
            return;
        }
        int[] iArr2 = this.f3662m;
        if (iArr2.length != 0) {
            iArr = ArraysKt.B(iArr2, iArr);
        }
        this.f3662m = iArr;
    }

    public final void O(boolean z10) {
        this.f3664o = z10;
    }

    public void P(MutableScatterSet mutableScatterSet) {
        this.f3659j = mutableScatterSet;
    }

    public b Q(Function1 function1, Function1 function2) {
        c cVar;
        z();
        S();
        J(f());
        synchronized (SnapshotKt.I()) {
            int i10 = SnapshotKt.f3617e;
            SnapshotKt.f3617e = i10 + 1;
            SnapshotKt.f3616d = SnapshotKt.f3616d.p(i10);
            SnapshotIdSet snapshotIdSetG = g();
            v(snapshotIdSetG.p(i10));
            cVar = new c(i10, SnapshotKt.z(snapshotIdSetG, f() + 1, i10), SnapshotKt.L(function1, h(), false, 4, null), SnapshotKt.M(function2, k()), this);
        }
        if (!D() && !e()) {
            int iF = f();
            synchronized (SnapshotKt.I()) {
                int i11 = SnapshotKt.f3617e;
                SnapshotKt.f3617e = i11 + 1;
                u(i11);
                SnapshotKt.f3616d = SnapshotKt.f3616d.p(f());
                Unit unit = Unit.f64096a;
            }
            v(SnapshotKt.z(g(), iF + 1, f()));
        }
        return cVar;
    }

    @Override
    public void c() {
        SnapshotKt.f3616d = SnapshotKt.f3616d.l(f()).j(this.f3661l);
    }

    @Override
    public void d() {
        if (e()) {
            return;
        }
        super.d();
        n(this);
    }

    @Override
    public boolean i() {
        return false;
    }

    @Override
    public int j() {
        return this.f3658i;
    }

    @Override
    public Function1 k() {
        return this.f3657h;
    }

    @Override
    public void m(j jVar) {
        this.f3663n++;
    }

    @Override
    public void n(j jVar) {
        if (!(this.f3663n > 0)) {
            o1.a("no pending nested snapshots");
        }
        int i10 = this.f3663n - 1;
        this.f3663n = i10;
        if (i10 != 0 || this.f3664o) {
            return;
        }
        A();
    }

    @Override
    public void o() {
        if (this.f3664o || e()) {
            return;
        }
        B();
    }

    @Override
    public void p(c0 c0Var) {
        MutableScatterSet mutableScatterSetE = E();
        if (mutableScatterSetE == null) {
            mutableScatterSetE = w0.a();
            P(mutableScatterSetE);
        }
        mutableScatterSetE.h(c0Var);
    }

    @Override
    public void r() {
        N();
        super.r();
    }

    @Override
    public void w(int i10) {
        this.f3658i = i10;
    }

    @Override
    public j x(Function1 function1) {
        d dVar;
        z();
        S();
        int iF = f();
        J(f());
        synchronized (SnapshotKt.I()) {
            int i10 = SnapshotKt.f3617e;
            SnapshotKt.f3617e = i10 + 1;
            SnapshotKt.f3616d = SnapshotKt.f3616d.p(i10);
            dVar = new d(i10, SnapshotKt.z(g(), iF + 1, i10), SnapshotKt.L(function1, h(), false, 4, null), this);
        }
        if (!D() && !e()) {
            int iF2 = f();
            synchronized (SnapshotKt.I()) {
                int i11 = SnapshotKt.f3617e;
                SnapshotKt.f3617e = i11 + 1;
                u(i11);
                SnapshotKt.f3616d = SnapshotKt.f3616d.p(f());
                Unit unit = Unit.f64096a;
            }
            v(SnapshotKt.z(g(), iF2 + 1, f()));
        }
        return dVar;
    }
}
