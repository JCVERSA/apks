package androidx.compose.runtime;

import androidx.collection.MutableScatterSet;
import androidx.collection.ScatterSet;
import androidx.compose.runtime.collection.ScatterSetWrapper;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.KotlinNothingValueException;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class o implements y, d2, w1 {

    private final m f3524a;

    private final f f3525b;

    private final AtomicReference f3526c;

    private final Object f3527d;

    private final Set f3528e;

    private final j2 f3529f;

    private final androidx.compose.runtime.collection.e f3530g;

    private final MutableScatterSet f3531h;

    private final MutableScatterSet f3532i;

    private final androidx.compose.runtime.collection.e f3533j;

    private final s.a f3534k;

    private final s.a f3535l;

    private final androidx.compose.runtime.collection.e f3536m;

    private androidx.compose.runtime.collection.e f3537n;

    private boolean f3538o;

    private o f3539p;

    private int f3540q;

    private final u f3541r;

    private final ComposerImpl f3542s;

    private final CoroutineContext f3543t;

    private final boolean f3544u;

    private boolean f3545v;

    private Function2 f3546w;

    private static final class a implements a2 {

        private final Set f3547a;

        private MutableScatterSet f3551e;

        private final List f3548b = new ArrayList();

        private final List f3549c = new ArrayList();

        private final List f3550d = new ArrayList();

        private final List f3552f = new ArrayList();

        private final androidx.collection.d0 f3553g = new androidx.collection.d0(0, 1, null);

        private final androidx.collection.d0 f3554h = new androidx.collection.d0(0, 1, null);

        public a(Set set) {
            this.f3547a = set;
        }

        private final void i(int i10) {
            int i11 = 0;
            if (this.f3552f.isEmpty()) {
                return;
            }
            int i12 = 0;
            List listQ = null;
            androidx.collection.d0 d0Var = null;
            androidx.collection.d0 d0Var2 = null;
            while (i12 < this.f3554h.b()) {
                if (i10 <= this.f3554h.a(i12)) {
                    Object objRemove = this.f3552f.remove(i12);
                    int i13 = this.f3554h.i(i12);
                    int i14 = this.f3553g.i(i12);
                    if (listQ == null) {
                        listQ = CollectionsKt.q(objRemove);
                        d0Var2 = new androidx.collection.d0(0, 1, null);
                        d0Var2.e(i13);
                        d0Var = new androidx.collection.d0(0, 1, null);
                        d0Var.e(i14);
                    } else {
                        Intrinsics.f(d0Var, "null cannot be cast to non-null type androidx.collection.MutableIntList");
                        Intrinsics.f(d0Var2, "null cannot be cast to non-null type androidx.collection.MutableIntList");
                        listQ.add(objRemove);
                        d0Var2.e(i13);
                        d0Var.e(i14);
                    }
                } else {
                    i12++;
                }
            }
            if (listQ != null) {
                Intrinsics.f(d0Var, "null cannot be cast to non-null type androidx.collection.MutableIntList");
                Intrinsics.f(d0Var2, "null cannot be cast to non-null type androidx.collection.MutableIntList");
                int size = listQ.size() - 1;
                while (i11 < size) {
                    int i15 = i11 + 1;
                    int size2 = listQ.size();
                    for (int i16 = i15; i16 < size2; i16++) {
                        int iA = d0Var2.a(i11);
                        int iA2 = d0Var2.a(i16);
                        if (iA < iA2 || (iA2 == iA && d0Var.a(i11) < d0Var.a(i16))) {
                            p.g(listQ, i11, i16);
                            p.f(d0Var, i11, i16);
                            p.f(d0Var2, i11, i16);
                        }
                    }
                    i11 = i15;
                }
                this.f3549c.addAll(listQ);
            }
        }

        private final void j(Object obj, int i10, int i11, int i12) {
            i(i10);
            if (i12 < 0 || i12 >= i10) {
                this.f3549c.add(obj);
                return;
            }
            this.f3552f.add(obj);
            this.f3553g.e(i11);
            this.f3554h.e(i12);
        }

        @Override
        public void a(Function0 function0) {
            this.f3550d.add(function0);
        }

        @Override
        public void b(h hVar, int i10, int i11, int i12) {
            MutableScatterSet mutableScatterSetA = this.f3551e;
            if (mutableScatterSetA == null) {
                mutableScatterSetA = androidx.collection.w0.a();
                this.f3551e = mutableScatterSetA;
            }
            mutableScatterSetA.w(hVar);
            j(hVar, i10, i11, i12);
        }

        @Override
        public void c(b2 b2Var) {
            this.f3548b.add(b2Var);
        }

        @Override
        public void d(h hVar, int i10, int i11, int i12) {
            j(hVar, i10, i11, i12);
        }

        @Override
        public void e(b2 b2Var, int i10, int i11, int i12) {
            j(b2Var, i10, i11, i12);
        }

        public final void f() {
            if (this.f3547a.isEmpty()) {
                return;
            }
            Object objA = e3.f3385a.a("Compose:abandons");
            try {
                Iterator it = this.f3547a.iterator();
                while (it.hasNext()) {
                    b2 b2Var = (b2) it.next();
                    it.remove();
                    b2Var.onAbandoned();
                }
                Unit unit = Unit.f64096a;
            } finally {
                e3.f3385a.b(objA);
            }
        }

        public final void g() {
            i(Integer.MIN_VALUE);
            if (!this.f3549c.isEmpty()) {
                Object objA = e3.f3385a.a("Compose:onForgotten");
                try {
                    MutableScatterSet mutableScatterSet = this.f3551e;
                    for (int size = this.f3549c.size() - 1; -1 < size; size--) {
                        Object obj = this.f3549c.get(size);
                        if (obj instanceof b2) {
                            this.f3547a.remove(obj);
                            ((b2) obj).onForgotten();
                        }
                        if (obj instanceof h) {
                            if (mutableScatterSet == null || !mutableScatterSet.a(obj)) {
                                ((h) obj).onDeactivate();
                            } else {
                                ((h) obj).onRelease();
                            }
                        }
                    }
                    Unit unit = Unit.f64096a;
                    e3.f3385a.b(objA);
                } catch (Throwable th2) {
                    e3.f3385a.b(objA);
                    throw th2;
                }
            }
            if (this.f3548b.isEmpty()) {
                return;
            }
            Object objA2 = e3.f3385a.a("Compose:onRemembered");
            try {
                List list = this.f3548b;
                int size2 = list.size();
                for (int i10 = 0; i10 < size2; i10++) {
                    b2 b2Var = (b2) list.get(i10);
                    this.f3547a.remove(b2Var);
                    b2Var.onRemembered();
                }
                Unit unit2 = Unit.f64096a;
            } finally {
                e3.f3385a.b(objA2);
            }
        }

        public final void h() {
            if (this.f3550d.isEmpty()) {
                return;
            }
            Object objA = e3.f3385a.a("Compose:sideeffects");
            try {
                List list = this.f3550d;
                int size = list.size();
                for (int i10 = 0; i10 < size; i10++) {
                    ((Function0) list.get(i10)).invoke();
                }
                this.f3550d.clear();
                Unit unit = Unit.f64096a;
            } finally {
                e3.f3385a.b(objA);
            }
        }
    }

    public o(m mVar, f fVar, CoroutineContext coroutineContext) {
        this.f3524a = mVar;
        this.f3525b = fVar;
        this.f3526c = new AtomicReference(null);
        this.f3527d = new Object();
        Set setL = new MutableScatterSet(0, 1, null).l();
        this.f3528e = setL;
        j2 j2Var = new j2();
        if (mVar.c()) {
            j2Var.i();
        }
        if (mVar.e()) {
            j2Var.j();
        }
        this.f3529f = j2Var;
        this.f3530g = new androidx.compose.runtime.collection.e();
        this.f3531h = new MutableScatterSet(0, 1, null);
        this.f3532i = new MutableScatterSet(0, 1, null);
        this.f3533j = new androidx.compose.runtime.collection.e();
        s.a aVar = new s.a();
        this.f3534k = aVar;
        s.a aVar2 = new s.a();
        this.f3535l = aVar2;
        this.f3536m = new androidx.compose.runtime.collection.e();
        this.f3537n = new androidx.compose.runtime.collection.e();
        this.f3541r = new u(null, false, 3, null);
        ComposerImpl composerImpl = new ComposerImpl(fVar, mVar, j2Var, setL, aVar, aVar2, this);
        mVar.n(composerImpl);
        this.f3542s = composerImpl;
        this.f3543t = coroutineContext;
        this.f3544u = mVar instanceof Recomposer;
        this.f3546w = ComposableSingletons$CompositionKt.f3250a.a();
    }

    private final void A(Function2 function2) {
        if (this.f3545v) {
            o1.b("The composition is disposed");
        }
        this.f3546w = function2;
        this.f3524a.a(this, function2);
    }

    private final void B() {
        Object andSet = this.f3526c.getAndSet(p.f3558a);
        if (andSet != null) {
            if (Intrinsics.c(andSet, p.f3558a)) {
                k.s("pending composition has not been applied");
                throw new KotlinNothingValueException();
            }
            if (andSet instanceof Set) {
                x((Set) andSet, true);
                return;
            }
            if (!(andSet instanceof Object[])) {
                k.s("corrupt pendingModifications drain: " + this.f3526c);
                throw new KotlinNothingValueException();
            }
            for (Set set : (Set[]) andSet) {
                x(set, true);
            }
        }
    }

    private final void C() {
        Object andSet = this.f3526c.getAndSet(null);
        if (Intrinsics.c(andSet, p.f3558a)) {
            return;
        }
        if (andSet instanceof Set) {
            x((Set) andSet, false);
            return;
        }
        if (andSet instanceof Object[]) {
            for (Set set : (Set[]) andSet) {
                x(set, false);
            }
            return;
        }
        if (andSet == null) {
            k.s("calling recordModificationsOf and applyChanges concurrently is not supported");
            throw new KotlinNothingValueException();
        }
        k.s("corrupt pendingModifications drain: " + this.f3526c);
        throw new KotlinNothingValueException();
    }

    private final boolean D() {
        return this.f3542s.z0();
    }

    /* JADX WARN: Code duplicated, block: B:46:0x00a1 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:47:0x00a3 A[Catch: all -> 0x001e, LOOP:0: B:32:0x0064->B:47:0x00a3, LOOP_END, TryCatch #0 {all -> 0x001e, blocks: (B:4:0x000b, B:6:0x0010, B:14:0x0023, B:16:0x0029, B:19:0x002d, B:21:0x0032, B:22:0x003b, B:24:0x003f, B:25:0x0048, B:27:0x0054, B:29:0x0058, B:32:0x0064, B:34:0x0074, B:36:0x0080, B:38:0x008a, B:43:0x0099, B:47:0x00a3, B:48:0x00a6, B:51:0x00ab), top: B:63:0x000b }] */
    /* JADX WARN: Code duplicated, block: B:51:0x00ab A[Catch: all -> 0x001e, EDGE_INSN: B:51:0x00ab->B:52:0x00b0 BREAK  A[LOOP:0: B:32:0x0064->B:47:0x00a3], TRY_LEAVE, TryCatch #0 {all -> 0x001e, blocks: (B:4:0x000b, B:6:0x0010, B:14:0x0023, B:16:0x0029, B:19:0x002d, B:21:0x0032, B:22:0x003b, B:24:0x003f, B:25:0x0048, B:27:0x0054, B:29:0x0058, B:32:0x0064, B:34:0x0074, B:36:0x0080, B:38:0x008a, B:43:0x0099, B:47:0x00a3, B:48:0x00a6, B:51:0x00ab), top: B:63:0x000b }] */
    /* JADX WARN: Code duplicated, block: B:66:0x00ab A[SYNTHETIC] */
    private final InvalidationResult F(RecomposeScopeImpl recomposeScopeImpl, c cVar, Object obj) {
        int i10;
        synchronized (this.f3527d) {
            try {
                o oVar = this.f3539p;
                o oVar2 = null;
                if (oVar != null) {
                    if (!this.f3529f.v(this.f3540q, cVar)) {
                        oVar = null;
                    }
                    oVar2 = oVar;
                }
                if (oVar2 == null) {
                    if (L(recomposeScopeImpl, obj)) {
                        return InvalidationResult.IMMINENT;
                    }
                    H();
                    if (obj != null && (obj instanceof z)) {
                        Object objB = this.f3537n.d().b(recomposeScopeImpl);
                        if (objB != null) {
                            if (!(objB instanceof MutableScatterSet)) {
                                if (objB != f2.f3423a) {
                                    this.f3537n.a(recomposeScopeImpl, obj);
                                    break;
                                }
                            } else {
                                MutableScatterSet mutableScatterSet = (MutableScatterSet) objB;
                                Object[] objArr = mutableScatterSet.f1938b;
                                long[] jArr = mutableScatterSet.f1937a;
                                int length = jArr.length - 2;
                                if (length < 0) {
                                    this.f3537n.a(recomposeScopeImpl, obj);
                                    break;
                                }
                                int i11 = 0;
                                loop0: while (true) {
                                    long j10 = jArr[i11];
                                    if ((((~j10) << 7) & j10 & (-9187201950435737472L)) == -9187201950435737472L) {
                                        if (i11 == length) {
                                            this.f3537n.a(recomposeScopeImpl, obj);
                                            break;
                                        }
                                        i11++;
                                    } else {
                                        int i12 = 8;
                                        int i13 = 8 - ((~(i11 - length)) >>> 31);
                                        int i14 = 0;
                                        while (i14 < i13) {
                                            if ((j10 & 255) >= 128) {
                                                i10 = i12;
                                            } else {
                                                if (objArr[(i11 << 3) + i14] == f2.f3423a) {
                                                    break loop0;
                                                }
                                                i10 = 8;
                                            }
                                            j10 >>= i10;
                                            i14++;
                                            i12 = i10;
                                        }
                                        if (i13 == i12) {
                                            if (i11 == length) {
                                                i11++;
                                            }
                                        }
                                        this.f3537n.a(recomposeScopeImpl, obj);
                                        break;
                                    }
                                }
                            }
                        } else {
                            this.f3537n.a(recomposeScopeImpl, obj);
                            break;
                        }
                    } else {
                        this.f3537n.h(recomposeScopeImpl, f2.f3423a);
                    }
                }
                if (oVar2 != null) {
                    return oVar2.F(recomposeScopeImpl, cVar, obj);
                }
                this.f3524a.k(this);
                return o() ? InvalidationResult.DEFERRED : InvalidationResult.SCHEDULED;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private final void G(Object obj) {
        Object objB = this.f3530g.d().b(obj);
        if (objB == null) {
            return;
        }
        if (!(objB instanceof MutableScatterSet)) {
            RecomposeScopeImpl recomposeScopeImpl = (RecomposeScopeImpl) objB;
            if (recomposeScopeImpl.s(obj) == InvalidationResult.IMMINENT) {
                this.f3536m.a(obj, recomposeScopeImpl);
                return;
            }
            return;
        }
        MutableScatterSet mutableScatterSet = (MutableScatterSet) objB;
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
                    if ((255 & j10) < 128) {
                        RecomposeScopeImpl recomposeScopeImpl2 = (RecomposeScopeImpl) objArr[(i10 << 3) + i12];
                        if (recomposeScopeImpl2.s(obj) == InvalidationResult.IMMINENT) {
                            this.f3536m.a(obj, recomposeScopeImpl2);
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

    private final androidx.compose.runtime.tooling.c H() {
        u uVar = this.f3541r;
        if (uVar.b()) {
            uVar.a();
        } else {
            u uVarI = this.f3524a.i();
            if (uVarI != null) {
                uVarI.a();
            }
            uVar.a();
            if (!Intrinsics.c(null, null)) {
                uVar.c(null);
            }
        }
        return null;
    }

    private final androidx.compose.runtime.collection.e K() {
        androidx.compose.runtime.collection.e eVar = this.f3537n;
        this.f3537n = new androidx.compose.runtime.collection.e();
        return eVar;
    }

    private final boolean L(RecomposeScopeImpl recomposeScopeImpl, Object obj) {
        return o() && this.f3542s.o1(recomposeScopeImpl, obj);
    }

    private final void w(Object obj, boolean z10) {
        Object objB = this.f3530g.d().b(obj);
        if (objB == null) {
            return;
        }
        if (!(objB instanceof MutableScatterSet)) {
            RecomposeScopeImpl recomposeScopeImpl = (RecomposeScopeImpl) objB;
            if (this.f3536m.f(obj, recomposeScopeImpl) || recomposeScopeImpl.s(obj) == InvalidationResult.IGNORED) {
                return;
            }
            if (!recomposeScopeImpl.t() || z10) {
                this.f3531h.h(recomposeScopeImpl);
                return;
            } else {
                this.f3532i.h(recomposeScopeImpl);
                return;
            }
        }
        MutableScatterSet mutableScatterSet = (MutableScatterSet) objB;
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
                    if ((255 & j10) < 128) {
                        RecomposeScopeImpl recomposeScopeImpl2 = (RecomposeScopeImpl) objArr[(i10 << 3) + i12];
                        if (!this.f3536m.f(obj, recomposeScopeImpl2) && recomposeScopeImpl2.s(obj) != InvalidationResult.IGNORED) {
                            if (!recomposeScopeImpl2.t() || z10) {
                                this.f3531h.h(recomposeScopeImpl2);
                            } else {
                                this.f3532i.h(recomposeScopeImpl2);
                            }
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

    /* JADX WARN: Code duplicated, block: B:193:0x00d3 A[EDGE_INSN: B:193:0x00d3->B:37:0x00d3 BREAK  A[LOOP:2: B:24:0x007b->B:35:0x00bf], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:221:0x0111 A[EDGE_INSN: B:221:0x0111->B:216:0x0111 BREAK  A[LOOP:13: B:59:0x0146->B:70:0x0182], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:34:0x00bd A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:35:0x00bf A[LOOP:2: B:24:0x007b->B:35:0x00bf, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:69:0x0180 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:70:0x0182 A[LOOP:13: B:59:0x0146->B:70:0x0182, LOOP_END] */
    private final void x(Set set, boolean z10) {
        long[] jArr;
        String str;
        int i10;
        int i11;
        String str2;
        boolean zA;
        Object[] objArr;
        long[] jArr2;
        Object[] objArr2;
        long[] jArr3;
        String str3;
        long[] jArr4;
        int i12;
        String str4;
        long[] jArr5;
        int i13;
        int i14;
        int i15;
        int i16;
        boolean zD;
        Object[] objArr3;
        long[] jArr6;
        Object[] objArr4;
        long[] jArr7;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        char c10 = 7;
        long j10 = -9187201950435737472L;
        int i23 = 8;
        if (set instanceof ScatterSetWrapper) {
            ScatterSet scatterSetA = ((ScatterSetWrapper) set).a();
            Object[] objArr5 = scatterSetA.f1938b;
            long[] jArr8 = scatterSetA.f1937a;
            int length = jArr8.length - 2;
            if (length >= 0) {
                int i24 = 0;
                while (true) {
                    long j11 = jArr8[i24];
                    if ((((~j11) << c10) & j11 & j10) != j10) {
                        int i25 = 8 - ((~(i24 - length)) >>> 31);
                        int i26 = 0;
                        while (i26 < i25) {
                            if ((j11 & 255) < 128) {
                                Object obj = objArr5[(i24 << 3) + i26];
                                if (obj instanceof RecomposeScopeImpl) {
                                    ((RecomposeScopeImpl) obj).s(null);
                                } else {
                                    w(obj, z10);
                                    Object objB = this.f3533j.d().b(obj);
                                    if (objB != null) {
                                        if (objB instanceof MutableScatterSet) {
                                            MutableScatterSet mutableScatterSet = (MutableScatterSet) objB;
                                            Object[] objArr6 = mutableScatterSet.f1938b;
                                            long[] jArr9 = mutableScatterSet.f1937a;
                                            int length2 = jArr9.length - 2;
                                            if (length2 >= 0) {
                                                i20 = length;
                                                i21 = i24;
                                                int i27 = 0;
                                                while (true) {
                                                    long j12 = jArr9[i27];
                                                    i18 = i25;
                                                    i19 = i26;
                                                    if ((((~j12) << c10) & j12 & (-9187201950435737472L)) == -9187201950435737472L) {
                                                        if (i27 != length2) {
                                                            break;
                                                            break;
                                                        }
                                                        i27++;
                                                        i25 = i18;
                                                        i26 = i19;
                                                        c10 = 7;
                                                    } else {
                                                        int i28 = 8 - ((~(i27 - length2)) >>> 31);
                                                        for (int i29 = 0; i29 < i28; i29++) {
                                                            if ((j12 & 255) < 128) {
                                                                w((z) objArr6[(i27 << 3) + i29], z10);
                                                            }
                                                            j12 >>= 8;
                                                        }
                                                        if (i28 != 8) {
                                                            break;
                                                        }
                                                        if (i27 != length2) {
                                                            break;
                                                        }
                                                        i27++;
                                                        i25 = i18;
                                                        i26 = i19;
                                                        c10 = 7;
                                                    }
                                                }
                                            }
                                        } else {
                                            i18 = i25;
                                            i19 = i26;
                                            i20 = length;
                                            i21 = i24;
                                            w((z) objB, z10);
                                        }
                                    }
                                    i22 = 8;
                                }
                                i18 = i25;
                                i19 = i26;
                                i20 = length;
                                i21 = i24;
                                i22 = 8;
                            } else {
                                i18 = i25;
                                i19 = i26;
                                i20 = length;
                                i21 = i24;
                                i22 = i23;
                            }
                            j11 >>= i22;
                            i26 = i19 + 1;
                            length = i20;
                            i23 = i22;
                            i24 = i21;
                            i25 = i18;
                            c10 = 7;
                        }
                        int i30 = length;
                        i17 = i24;
                        if (i25 != i23) {
                            break;
                        } else {
                            length = i30;
                        }
                    } else {
                        i17 = i24;
                    }
                    if (i17 == length) {
                        break;
                    }
                    i24 = i17 + 1;
                    c10 = 7;
                    j10 = -9187201950435737472L;
                    i23 = 8;
                }
            }
        } else {
            for (Object obj2 : set) {
                if (obj2 instanceof RecomposeScopeImpl) {
                    ((RecomposeScopeImpl) obj2).s(null);
                } else {
                    w(obj2, z10);
                    Object objB2 = this.f3533j.d().b(obj2);
                    if (objB2 != null) {
                        if (objB2 instanceof MutableScatterSet) {
                            MutableScatterSet mutableScatterSet2 = (MutableScatterSet) objB2;
                            Object[] objArr7 = mutableScatterSet2.f1938b;
                            long[] jArr10 = mutableScatterSet2.f1937a;
                            int length3 = jArr10.length - 2;
                            if (length3 >= 0) {
                                int i31 = 0;
                                while (true) {
                                    long j13 = jArr10[i31];
                                    if ((((~j13) << 7) & j13 & (-9187201950435737472L)) == -9187201950435737472L) {
                                        if (i31 != length3) {
                                            break;
                                            break;
                                        }
                                        i31++;
                                    } else {
                                        int i32 = 8 - ((~(i31 - length3)) >>> 31);
                                        for (int i33 = 0; i33 < i32; i33++) {
                                            if ((j13 & 255) < 128) {
                                                w((z) objArr7[(i31 << 3) + i33], z10);
                                            }
                                            j13 >>= 8;
                                        }
                                        if (i32 != 8) {
                                            break;
                                        } else if (i31 != length3) {
                                            break;
                                        } else {
                                            i31++;
                                        }
                                    }
                                }
                            }
                        } else {
                            w((z) objB2, z10);
                        }
                    }
                }
            }
        }
        MutableScatterSet mutableScatterSet3 = this.f3532i;
        MutableScatterSet mutableScatterSet4 = this.f3531h;
        String str5 = "null cannot be cast to non-null type androidx.collection.MutableScatterSet<Scope of androidx.compose.runtime.collection.ScopeMap.removeScopeIf$lambda$2>";
        if (!z10 || !mutableScatterSet3.e()) {
            String str6 = "null cannot be cast to non-null type androidx.collection.MutableScatterSet<Scope of androidx.compose.runtime.collection.ScopeMap.removeScopeIf$lambda$2>";
            if (mutableScatterSet4.e()) {
                androidx.collection.n0 n0VarD = this.f3530g.d();
                long[] jArr11 = n0VarD.f2035a;
                int length4 = jArr11.length - 2;
                if (length4 >= 0) {
                    int i34 = 0;
                    while (true) {
                        long j14 = jArr11[i34];
                        if ((((~j14) << 7) & j14 & (-9187201950435737472L)) != -9187201950435737472L) {
                            int i35 = 8 - ((~(i34 - length4)) >>> 31);
                            int i36 = 0;
                            while (i36 < i35) {
                                if ((j14 & 255) < 128) {
                                    int i37 = (i34 << 3) + i36;
                                    Object obj3 = n0VarD.f2036b[i37];
                                    Object obj4 = n0VarD.f2037c[i37];
                                    if (obj4 instanceof MutableScatterSet) {
                                        String str7 = str6;
                                        Intrinsics.f(obj4, str7);
                                        MutableScatterSet mutableScatterSet5 = (MutableScatterSet) obj4;
                                        Object[] objArr8 = mutableScatterSet5.f1938b;
                                        long[] jArr12 = mutableScatterSet5.f1937a;
                                        int length5 = jArr12.length - 2;
                                        if (length5 >= 0) {
                                            int i38 = 0;
                                            while (true) {
                                                long j15 = jArr12[i38];
                                                str2 = str7;
                                                i11 = i35;
                                                if ((((~j15) << 7) & j15 & (-9187201950435737472L)) != -9187201950435737472L) {
                                                    int i39 = 8 - ((~(i38 - length5)) >>> 31);
                                                    int i40 = 0;
                                                    while (i40 < i39) {
                                                        if ((j15 & 255) < 128) {
                                                            jArr3 = jArr12;
                                                            int i41 = (i38 << 3) + i40;
                                                            objArr2 = objArr8;
                                                            if (mutableScatterSet4.a((RecomposeScopeImpl) objArr8[i41])) {
                                                                mutableScatterSet5.y(i41);
                                                            }
                                                        } else {
                                                            objArr2 = objArr8;
                                                            jArr3 = jArr12;
                                                        }
                                                        j15 >>= 8;
                                                        i40++;
                                                        jArr12 = jArr3;
                                                        objArr8 = objArr2;
                                                    }
                                                    objArr = objArr8;
                                                    jArr2 = jArr12;
                                                    if (i39 != 8) {
                                                        break;
                                                    }
                                                } else {
                                                    objArr = objArr8;
                                                    jArr2 = jArr12;
                                                }
                                                if (i38 == length5) {
                                                    break;
                                                }
                                                i38++;
                                                i35 = i11;
                                                str7 = str2;
                                                jArr12 = jArr2;
                                                objArr8 = objArr;
                                            }
                                        } else {
                                            str2 = str7;
                                            i11 = i35;
                                        }
                                        zA = mutableScatterSet5.d();
                                    } else {
                                        i11 = i35;
                                        str2 = str6;
                                        Intrinsics.f(obj4, "null cannot be cast to non-null type Scope of androidx.compose.runtime.collection.ScopeMap.removeScopeIf$lambda$2");
                                        zA = mutableScatterSet4.a((RecomposeScopeImpl) obj4);
                                    }
                                    if (zA) {
                                        n0VarD.p(i37);
                                    }
                                } else {
                                    jArr11 = jArr11;
                                    length4 = length4;
                                    i11 = i35;
                                    str2 = str6;
                                    i34 = i34;
                                }
                                j14 >>= 8;
                                i36++;
                                length4 = length4;
                                jArr11 = jArr11;
                                i34 = i34;
                                i35 = i11;
                                str6 = str2;
                            }
                            jArr = jArr11;
                            int i42 = length4;
                            str = str6;
                            int i43 = i34;
                            if (i35 != 8) {
                                break;
                            }
                            length4 = i42;
                            i10 = i43;
                        } else {
                            jArr = jArr11;
                            str = str6;
                            i10 = i34;
                        }
                        if (i10 == length4) {
                            break;
                        }
                        i34 = i10 + 1;
                        jArr11 = jArr;
                        str6 = str;
                    }
                }
                z();
                mutableScatterSet4.m();
                return;
            }
            return;
        }
        androidx.collection.n0 n0VarD2 = this.f3530g.d();
        long[] jArr13 = n0VarD2.f2035a;
        int length6 = jArr13.length - 2;
        if (length6 >= 0) {
            int i44 = 0;
            while (true) {
                long j16 = jArr13[i44];
                if ((((~j16) << 7) & j16 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i45 = 8 - ((~(i44 - length6)) >>> 31);
                    int i46 = 0;
                    while (i46 < i45) {
                        if ((j16 & 255) < 128) {
                            int i47 = (i44 << 3) + i46;
                            Object obj5 = n0VarD2.f2036b[i47];
                            Object obj6 = n0VarD2.f2037c[i47];
                            if (obj6 instanceof MutableScatterSet) {
                                Intrinsics.f(obj6, str5);
                                MutableScatterSet mutableScatterSet6 = (MutableScatterSet) obj6;
                                Object[] objArr9 = mutableScatterSet6.f1938b;
                                jArr5 = jArr13;
                                long[] jArr14 = mutableScatterSet6.f1937a;
                                str4 = str5;
                                int length7 = jArr14.length - 2;
                                i13 = length6;
                                i14 = i44;
                                if (length7 >= 0) {
                                    int i48 = 0;
                                    while (true) {
                                        long j17 = jArr14[i48];
                                        i15 = i45;
                                        i16 = i46;
                                        if ((((~j17) << 7) & j17 & (-9187201950435737472L)) != -9187201950435737472L) {
                                            int i49 = 8 - ((~(i48 - length7)) >>> 31);
                                            int i50 = 0;
                                            while (i50 < i49) {
                                                if ((j17 & 255) < 128) {
                                                    jArr7 = jArr14;
                                                    int i51 = (i48 << 3) + i50;
                                                    objArr4 = objArr9;
                                                    RecomposeScopeImpl recomposeScopeImpl = (RecomposeScopeImpl) objArr9[i51];
                                                    if (mutableScatterSet3.a(recomposeScopeImpl) || mutableScatterSet4.a(recomposeScopeImpl)) {
                                                        mutableScatterSet6.y(i51);
                                                    }
                                                } else {
                                                    objArr4 = objArr9;
                                                    jArr7 = jArr14;
                                                }
                                                j17 >>= 8;
                                                i50++;
                                                jArr14 = jArr7;
                                                objArr9 = objArr4;
                                            }
                                            objArr3 = objArr9;
                                            jArr6 = jArr14;
                                            if (i49 != 8) {
                                                break;
                                            }
                                        } else {
                                            objArr3 = objArr9;
                                            jArr6 = jArr14;
                                        }
                                        if (i48 == length7) {
                                            break;
                                        }
                                        i48++;
                                        i45 = i15;
                                        i46 = i16;
                                        jArr14 = jArr6;
                                        objArr9 = objArr3;
                                    }
                                } else {
                                    i15 = i45;
                                    i16 = i46;
                                }
                                zD = mutableScatterSet6.d();
                            } else {
                                str4 = str5;
                                jArr5 = jArr13;
                                i13 = length6;
                                i14 = i44;
                                i15 = i45;
                                i16 = i46;
                                Intrinsics.f(obj6, "null cannot be cast to non-null type Scope of androidx.compose.runtime.collection.ScopeMap.removeScopeIf$lambda$2");
                                RecomposeScopeImpl recomposeScopeImpl2 = (RecomposeScopeImpl) obj6;
                                zD = mutableScatterSet3.a(recomposeScopeImpl2) || mutableScatterSet4.a(recomposeScopeImpl2);
                            }
                            if (zD) {
                                n0VarD2.p(i47);
                            }
                        } else {
                            str4 = str5;
                            jArr5 = jArr13;
                            i13 = length6;
                            i14 = i44;
                            i15 = i45;
                            i16 = i46;
                        }
                        j16 >>= 8;
                        i46 = i16 + 1;
                        length6 = i13;
                        jArr13 = jArr5;
                        str5 = str4;
                        i44 = i14;
                        i45 = i15;
                    }
                    str3 = str5;
                    jArr4 = jArr13;
                    int i52 = length6;
                    int i53 = i44;
                    if (i45 != 8) {
                        break;
                    }
                    length6 = i52;
                    i12 = i53;
                } else {
                    str3 = str5;
                    jArr4 = jArr13;
                    i12 = i44;
                }
                if (i12 == length6) {
                    break;
                }
                i44 = i12 + 1;
                jArr13 = jArr4;
                str5 = str3;
            }
        }
        mutableScatterSet3.m();
        z();
    }

    /* JADX WARN: Code duplicated, block: B:100:0x01e3  */
    private final void y(s.a aVar) throws Throwable {
        a aVar2;
        boolean z10;
        long[] jArr;
        int i10;
        a aVar3;
        long[] jArr2;
        int i11;
        int i12;
        char c10;
        long j10;
        int i13;
        boolean zD;
        long[] jArr3;
        long[] jArr4;
        o oVar = this;
        boolean z11 = true;
        a aVar4 = new a(oVar.f3528e);
        try {
            if (aVar.c()) {
                if (oVar.f3535l.c()) {
                    aVar4.f();
                    return;
                }
                return;
            }
            e3 e3Var = e3.f3385a;
            Object objA = e3Var.a("Compose:applyChanges");
            oVar.f3525b.h();
            m2 m2VarX = oVar.f3529f.x();
            int i14 = 0;
            try {
                aVar.b(oVar.f3525b, m2VarX, aVar4);
                Unit unit = Unit.f64096a;
                m2VarX.L(true);
                oVar.f3525b.e();
                e3Var.b(objA);
                aVar4.g();
                aVar4.h();
                if (oVar.f3538o) {
                    try {
                        try {
                            Object objA2 = e3Var.a("Compose:unobserve");
                            try {
                                oVar.f3538o = false;
                                androidx.collection.n0 n0VarD = oVar.f3530g.d();
                                long[] jArr5 = n0VarD.f2035a;
                                int length = jArr5.length - 2;
                                if (length >= 0) {
                                    int i15 = 0;
                                    while (true) {
                                        long j11 = jArr5[i15];
                                        char c11 = 7;
                                        long j12 = -9187201950435737472L;
                                        if ((((~j11) << 7) & j11 & (-9187201950435737472L)) != -9187201950435737472L) {
                                            int i16 = 8;
                                            int i17 = 8 - ((~(i15 - length)) >>> 31);
                                            while (i14 < i17) {
                                                if ((j11 & 255) < 128) {
                                                    int i18 = (i15 << 3) + i14;
                                                    Object obj = n0VarD.f2036b[i18];
                                                    Object obj2 = n0VarD.f2037c[i18];
                                                    if (obj2 instanceof MutableScatterSet) {
                                                        Intrinsics.f(obj2, "null cannot be cast to non-null type androidx.collection.MutableScatterSet<Scope of androidx.compose.runtime.collection.ScopeMap.removeScopeIf$lambda$2>");
                                                        MutableScatterSet mutableScatterSet = (MutableScatterSet) obj2;
                                                        Object[] objArr = mutableScatterSet.f1938b;
                                                        long[] jArr6 = mutableScatterSet.f1937a;
                                                        int length2 = jArr6.length - 2;
                                                        aVar3 = aVar4;
                                                        jArr2 = jArr5;
                                                        if (length2 >= 0) {
                                                            int i19 = 0;
                                                            while (true) {
                                                                try {
                                                                    long j13 = jArr6[i19];
                                                                    i11 = length;
                                                                    i12 = i15;
                                                                    c10 = 7;
                                                                    j10 = -9187201950435737472L;
                                                                    if ((((~j13) << 7) & j13 & (-9187201950435737472L)) != -9187201950435737472L) {
                                                                        int i20 = 8 - ((~(i19 - length2)) >>> 31);
                                                                        int i21 = 0;
                                                                        while (i21 < i20) {
                                                                            if ((j13 & 255) < 128) {
                                                                                jArr4 = jArr6;
                                                                                int i22 = (i19 << 3) + i21;
                                                                                if (!((RecomposeScopeImpl) objArr[i22]).r()) {
                                                                                    mutableScatterSet.y(i22);
                                                                                }
                                                                            } else {
                                                                                jArr4 = jArr6;
                                                                            }
                                                                            j13 >>= 8;
                                                                            i21++;
                                                                            jArr6 = jArr4;
                                                                        }
                                                                        jArr3 = jArr6;
                                                                        if (i20 != 8) {
                                                                            break;
                                                                        }
                                                                    } else {
                                                                        jArr3 = jArr6;
                                                                    }
                                                                    if (i19 == length2) {
                                                                        break;
                                                                    }
                                                                    i19++;
                                                                    length = i11;
                                                                    i15 = i12;
                                                                    jArr6 = jArr3;
                                                                } catch (Throwable th2) {
                                                                    th = th2;
                                                                    e3.f3385a.b(objA2);
                                                                    throw th;
                                                                }
                                                            }
                                                        } else {
                                                            i11 = length;
                                                            i12 = i15;
                                                            c10 = 7;
                                                            j10 = -9187201950435737472L;
                                                        }
                                                        zD = mutableScatterSet.d();
                                                    } else {
                                                        aVar3 = aVar4;
                                                        jArr2 = jArr5;
                                                        i11 = length;
                                                        i12 = i15;
                                                        c10 = c11;
                                                        j10 = -9187201950435737472L;
                                                        Intrinsics.f(obj2, "null cannot be cast to non-null type Scope of androidx.compose.runtime.collection.ScopeMap.removeScopeIf$lambda$2");
                                                        zD = !((RecomposeScopeImpl) obj2).r();
                                                    }
                                                    if (zD) {
                                                        n0VarD.p(i18);
                                                    }
                                                    i13 = 8;
                                                } else {
                                                    aVar3 = aVar4;
                                                    jArr2 = jArr5;
                                                    i11 = length;
                                                    i12 = i15;
                                                    c10 = c11;
                                                    j10 = j12;
                                                    i13 = i16;
                                                }
                                                j11 >>= i13;
                                                i14++;
                                                i16 = i13;
                                                z11 = true;
                                                c11 = c10;
                                                j12 = j10;
                                                jArr5 = jArr2;
                                                aVar4 = aVar3;
                                                length = i11;
                                                i15 = i12;
                                            }
                                            z10 = z11;
                                            aVar2 = aVar4;
                                            jArr = jArr5;
                                            int i23 = length;
                                            int i24 = i15;
                                            if (i17 != i16) {
                                                break;
                                            }
                                            length = i23;
                                            i10 = i24;
                                        } else {
                                            z10 = z11;
                                            aVar2 = aVar4;
                                            jArr = jArr5;
                                            i10 = i15;
                                        }
                                        if (i10 == length) {
                                            break;
                                        }
                                        i15 = i10 + 1;
                                        z11 = z10;
                                        jArr5 = jArr;
                                        aVar4 = aVar2;
                                        i14 = 0;
                                    }
                                } else {
                                    aVar2 = aVar4;
                                }
                                z();
                                Unit unit2 = Unit.f64096a;
                                e3.f3385a.b(objA2);
                            } catch (Throwable th3) {
                                th = th3;
                            }
                        } catch (Throwable th4) {
                            th = th4;
                            aVar4 = aVar4;
                            oVar = this;
                            if (oVar.f3535l.c()) {
                                aVar4.f();
                            }
                            throw th;
                        }
                    } catch (Throwable th5) {
                        th = th5;
                        oVar = this;
                        if (oVar.f3535l.c()) {
                            aVar4.f();
                        }
                        throw th;
                    }
                } else {
                    aVar2 = aVar4;
                }
                if (this.f3535l.c()) {
                    aVar2.f();
                    return;
                }
                return;
            } catch (Throwable th6) {
                try {
                    m2VarX.L(false);
                    throw th6;
                } catch (Throwable th7) {
                    th = th7;
                    try {
                        e3.f3385a.b(objA);
                        throw th;
                    } catch (Throwable th8) {
                        th = th8;
                    }
                }
            }
        } catch (Throwable th9) {
            th = th9;
            aVar4 = aVar4;
        }
        if (oVar.f3535l.c()) {
            aVar4.f();
        }
        throw th;
    }

    private final void z() {
        long[] jArr;
        int i10;
        long[] jArr2;
        int i11;
        int i12;
        int i13;
        boolean zD;
        Object[] objArr;
        long[] jArr3;
        long[] jArr4;
        androidx.collection.n0 n0VarD = this.f3533j.d();
        long[] jArr5 = n0VarD.f2035a;
        int length = jArr5.length - 2;
        char c10 = 7;
        long j10 = -9187201950435737472L;
        int i14 = 8;
        if (length >= 0) {
            int i15 = 0;
            while (true) {
                long j11 = jArr5[i15];
                if ((((~j11) << c10) & j11 & j10) != j10) {
                    int i16 = 8 - ((~(i15 - length)) >>> 31);
                    int i17 = 0;
                    while (i17 < i16) {
                        if ((j11 & 255) < 128) {
                            int i18 = (i15 << 3) + i17;
                            Object obj = n0VarD.f2036b[i18];
                            Object obj2 = n0VarD.f2037c[i18];
                            if (obj2 instanceof MutableScatterSet) {
                                Intrinsics.f(obj2, "null cannot be cast to non-null type androidx.collection.MutableScatterSet<Scope of androidx.compose.runtime.collection.ScopeMap.removeScopeIf$lambda$2>");
                                MutableScatterSet mutableScatterSet = (MutableScatterSet) obj2;
                                Object[] objArr2 = mutableScatterSet.f1938b;
                                long[] jArr6 = mutableScatterSet.f1937a;
                                int length2 = jArr6.length - 2;
                                jArr2 = jArr5;
                                i11 = length;
                                if (length2 >= 0) {
                                    int i19 = 0;
                                    while (true) {
                                        long j12 = jArr6[i19];
                                        i12 = i15;
                                        Object[] objArr3 = objArr2;
                                        if ((((~j12) << c10) & j12 & (-9187201950435737472L)) != -9187201950435737472L) {
                                            int i20 = 8 - ((~(i19 - length2)) >>> 31);
                                            int i21 = 0;
                                            while (i21 < i20) {
                                                int i22 = i21;
                                                Object[] objArr4 = objArr3;
                                                if ((j12 & 255) < 128) {
                                                    int i23 = (i19 << 3) + i22;
                                                    jArr4 = jArr6;
                                                    if (!this.f3530g.c((z) objArr4[i23])) {
                                                        mutableScatterSet.y(i23);
                                                    }
                                                } else {
                                                    jArr4 = jArr6;
                                                }
                                                j12 >>= 8;
                                                i21 = i22 + 1;
                                                jArr6 = jArr4;
                                                objArr3 = objArr4;
                                            }
                                            objArr = objArr3;
                                            jArr3 = jArr6;
                                            if (i20 != 8) {
                                                break;
                                            }
                                        } else {
                                            objArr = objArr3;
                                            jArr3 = jArr6;
                                        }
                                        if (i19 == length2) {
                                            break;
                                        }
                                        i19++;
                                        jArr6 = jArr3;
                                        objArr2 = objArr;
                                        i15 = i12;
                                        c10 = 7;
                                    }
                                } else {
                                    i12 = i15;
                                }
                                zD = mutableScatterSet.d();
                            } else {
                                jArr2 = jArr5;
                                i11 = length;
                                i12 = i15;
                                Intrinsics.f(obj2, "null cannot be cast to non-null type Scope of androidx.compose.runtime.collection.ScopeMap.removeScopeIf$lambda$2");
                                zD = !this.f3530g.c((z) obj2);
                            }
                            if (zD) {
                                n0VarD.p(i18);
                            }
                            i13 = 8;
                        } else {
                            jArr2 = jArr5;
                            i11 = length;
                            i12 = i15;
                            i13 = i14;
                        }
                        j11 >>= i13;
                        i17++;
                        i14 = i13;
                        jArr5 = jArr2;
                        length = i11;
                        i15 = i12;
                        c10 = 7;
                    }
                    jArr = jArr5;
                    int i24 = length;
                    int i25 = i15;
                    if (i16 != i14) {
                        break;
                    }
                    length = i24;
                    i10 = i25;
                } else {
                    jArr = jArr5;
                    i10 = i15;
                }
                if (i10 == length) {
                    break;
                }
                i15 = i10 + 1;
                jArr5 = jArr;
                c10 = 7;
                j10 = -9187201950435737472L;
                i14 = 8;
            }
        }
        if (!this.f3532i.e()) {
            return;
        }
        MutableScatterSet mutableScatterSet2 = this.f3532i;
        Object[] objArr5 = mutableScatterSet2.f1938b;
        long[] jArr7 = mutableScatterSet2.f1937a;
        int length3 = jArr7.length - 2;
        if (length3 < 0) {
            return;
        }
        int i26 = 0;
        while (true) {
            long j13 = jArr7[i26];
            if ((((~j13) << 7) & j13 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i27 = 8 - ((~(i26 - length3)) >>> 31);
                for (int i28 = 0; i28 < i27; i28++) {
                    if ((j13 & 255) < 128) {
                        int i29 = (i26 << 3) + i28;
                        if (!((RecomposeScopeImpl) objArr5[i29]).t()) {
                            mutableScatterSet2.y(i29);
                        }
                    }
                    j13 >>= 8;
                }
                if (i27 != 8) {
                    return;
                }
            }
            if (i26 == length3) {
                return;
            } else {
                i26++;
            }
        }
    }

    public final u E() {
        return this.f3541r;
    }

    public final void I(z zVar) {
        if (this.f3530g.c(zVar)) {
            return;
        }
        this.f3533j.g(zVar);
    }

    public final void J(Object obj, RecomposeScopeImpl recomposeScopeImpl) {
        this.f3530g.f(obj, recomposeScopeImpl);
    }

    @Override
    public void a(Object obj) {
        RecomposeScopeImpl recomposeScopeImplB0;
        long[] jArr;
        int i10;
        if (D() || (recomposeScopeImplB0 = this.f3542s.B0()) == null) {
            return;
        }
        recomposeScopeImplB0.H(true);
        if (recomposeScopeImplB0.w(obj)) {
            return;
        }
        if (obj instanceof androidx.compose.runtime.snapshots.d0) {
            ((androidx.compose.runtime.snapshots.d0) obj).m101recordReadInh_f27i8$runtime_release(androidx.compose.runtime.snapshots.f.a(1));
        }
        this.f3530g.a(obj, recomposeScopeImplB0);
        if (obj instanceof z) {
            z zVar = (z) obj;
            z.a aVarB = zVar.b();
            this.f3533j.g(obj);
            androidx.collection.p0 p0VarB = aVarB.b();
            Object[] objArr = p0VarB.f2006b;
            long[] jArr2 = p0VarB.f2005a;
            int length = jArr2.length - 2;
            if (length >= 0) {
                int i11 = 0;
                while (true) {
                    long j10 = jArr2[i11];
                    if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                        int i12 = 8;
                        int i13 = 8 - ((~(i11 - length)) >>> 31);
                        int i14 = 0;
                        while (i14 < i13) {
                            if ((j10 & 255) < 128) {
                                androidx.compose.runtime.snapshots.c0 c0Var = (androidx.compose.runtime.snapshots.c0) objArr[(i11 << 3) + i14];
                                if (c0Var instanceof androidx.compose.runtime.snapshots.d0) {
                                    ((androidx.compose.runtime.snapshots.d0) c0Var).m101recordReadInh_f27i8$runtime_release(androidx.compose.runtime.snapshots.f.a(1));
                                }
                                this.f3533j.a(c0Var, obj);
                                i10 = 8;
                            } else {
                                jArr2 = jArr2;
                                i10 = i12;
                            }
                            j10 >>= i10;
                            i14++;
                            i12 = i10;
                            jArr2 = jArr2;
                        }
                        jArr = jArr2;
                        if (i13 != i12) {
                            break;
                        }
                    } else {
                        jArr = jArr2;
                    }
                    if (i11 == length) {
                        break;
                    }
                    i11++;
                    jArr2 = jArr;
                }
            }
            recomposeScopeImplB0.v(zVar, aVarB.a());
        }
    }

    @Override
    public void b(Function2 function2) throws Exception {
        try {
            synchronized (this.f3527d) {
                B();
                androidx.compose.runtime.collection.e eVarK = K();
                try {
                    H();
                    this.f3542s.g0(eVarK, function2);
                } catch (Exception e10) {
                    this.f3537n = eVarK;
                    throw e10;
                }
            }
        } catch (Throwable th2) {
            try {
                if (!this.f3528e.isEmpty()) {
                    new a(this.f3528e).f();
                }
                throw th2;
            } catch (Exception e11) {
                s();
                throw e11;
            }
        }
    }

    @Override
    public void c() {
        synchronized (this.f3527d) {
            try {
                if (this.f3535l.d()) {
                    y(this.f3535l);
                }
                Unit unit = Unit.f64096a;
            } catch (Throwable th2) {
                try {
                    try {
                        if (!this.f3528e.isEmpty()) {
                            new a(this.f3528e).f();
                        }
                        throw th2;
                    } catch (Exception e10) {
                        s();
                        throw e10;
                    }
                } catch (Throwable th3) {
                    throw th3;
                }
            }
        }
    }

    @Override
    public void d(Function2 function2) {
        A(function2);
    }

    @Override
    public void deactivate() {
        synchronized (this.f3527d) {
            try {
                boolean z10 = this.f3529f.p() > 0;
                if (z10 || !this.f3528e.isEmpty()) {
                    e3 e3Var = e3.f3385a;
                    Object objA = e3Var.a("Compose:deactivate");
                    try {
                        a aVar = new a(this.f3528e);
                        if (z10) {
                            this.f3525b.h();
                            m2 m2VarX = this.f3529f.x();
                            try {
                                k.t(m2VarX, aVar);
                                Unit unit = Unit.f64096a;
                                m2VarX.L(true);
                                this.f3525b.e();
                                aVar.g();
                            } catch (Throwable th2) {
                                m2VarX.L(false);
                                throw th2;
                            }
                        }
                        aVar.f();
                        Unit unit2 = Unit.f64096a;
                        e3Var.b(objA);
                    } catch (Throwable th3) {
                        e3.f3385a.b(objA);
                        throw th3;
                    }
                }
                this.f3530g.b();
                this.f3533j.b();
                this.f3537n.b();
                this.f3534k.a();
                this.f3535l.a();
                this.f3542s.l0();
                Unit unit3 = Unit.f64096a;
            } catch (Throwable th4) {
                throw th4;
            }
        }
    }

    @Override
    public void dispose() {
        synchronized (this.f3527d) {
            try {
                if (this.f3542s.K0()) {
                    o1.b("Composition is disposed while composing. If dispose is triggered by a call in @Composable function, consider wrapping it with SideEffect block.");
                }
                if (!this.f3545v) {
                    this.f3545v = true;
                    this.f3546w = ComposableSingletons$CompositionKt.f3250a.b();
                    s.a aVarC0 = this.f3542s.C0();
                    if (aVarC0 != null) {
                        y(aVarC0);
                    }
                    boolean z10 = this.f3529f.p() > 0;
                    if (z10 || !this.f3528e.isEmpty()) {
                        a aVar = new a(this.f3528e);
                        if (z10) {
                            this.f3525b.h();
                            m2 m2VarX = this.f3529f.x();
                            try {
                                k.K(m2VarX, aVar);
                                Unit unit = Unit.f64096a;
                                m2VarX.L(true);
                                this.f3525b.clear();
                                this.f3525b.e();
                                aVar.g();
                            } catch (Throwable th2) {
                                m2VarX.L(false);
                                throw th2;
                            }
                        }
                        aVar.f();
                    }
                    this.f3542s.m0();
                }
                Unit unit2 = Unit.f64096a;
            } catch (Throwable th3) {
                throw th3;
            }
        }
        this.f3524a.r(this);
    }

    @Override
    public void e(x0 x0Var) {
        a aVar = new a(this.f3528e);
        m2 m2VarX = x0Var.a().x();
        try {
            k.K(m2VarX, aVar);
            Unit unit = Unit.f64096a;
            m2VarX.L(true);
            aVar.g();
        } catch (Throwable th2) {
            m2VarX.L(false);
            throw th2;
        }
    }

    @Override
    public void f(List list) throws Exception {
        boolean z10 = true;
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (!Intrinsics.c(((y0) ((Pair) list.get(i10)).getFirst()).b(), this)) {
                z10 = false;
                break;
            }
        }
        k.O(z10);
        try {
            this.f3542s.H0(list);
            Unit unit = Unit.f64096a;
        } catch (Throwable th2) {
            try {
                if (!this.f3528e.isEmpty()) {
                    new a(this.f3528e).f();
                }
                throw th2;
            } catch (Exception e10) {
                s();
                throw e10;
            }
        }
    }

    @Override
    public Object g(y yVar, int i10, Function0 function0) {
        if (yVar == null || Intrinsics.c(yVar, this) || i10 < 0) {
            return function0.invoke();
        }
        this.f3539p = (o) yVar;
        this.f3540q = i10;
        try {
            return function0.invoke();
        } finally {
            this.f3539p = null;
            this.f3540q = 0;
        }
    }

    @Override
    public void h(RecomposeScopeImpl recomposeScopeImpl) {
        this.f3538o = true;
    }

    @Override
    public boolean i() {
        boolean zR0;
        synchronized (this.f3527d) {
            try {
                B();
                try {
                    androidx.compose.runtime.collection.e eVarK = K();
                    try {
                        H();
                        zR0 = this.f3542s.R0(eVarK);
                        if (!zR0) {
                            C();
                        }
                    } catch (Exception e10) {
                        this.f3537n = eVarK;
                        throw e10;
                    }
                } catch (Throwable th2) {
                    try {
                        if (!this.f3528e.isEmpty()) {
                            new a(this.f3528e).f();
                        }
                        throw th2;
                    } catch (Exception e11) {
                        s();
                        throw e11;
                    }
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
        return zR0;
    }

    @Override
    public boolean isDisposed() {
        return this.f3545v;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0057 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:21:0x0059 A[LOOP:0: B:7:0x0016->B:21:0x0059, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:34:0x007d A[SYNTHETIC] */
    @Override
    public boolean j(Set set) {
        if (set instanceof ScatterSetWrapper) {
            ScatterSet scatterSetA = ((ScatterSetWrapper) set).a();
            Object[] objArr = scatterSetA.f1938b;
            long[] jArr = scatterSetA.f1937a;
            int length = jArr.length - 2;
            if (length >= 0) {
                int i10 = 0;
                loop0: while (true) {
                    long j10 = jArr[i10];
                    if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                        int i11 = 8 - ((~(i10 - length)) >>> 31);
                        for (int i12 = 0; i12 < i11; i12++) {
                            if ((255 & j10) < 128) {
                                Object obj = objArr[(i10 << 3) + i12];
                                if (this.f3530g.c(obj) || this.f3533j.c(obj)) {
                                    break loop0;
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
                return true;
            }
        } else {
            for (Object obj2 : set) {
                if (this.f3530g.c(obj2) || this.f3533j.c(obj2)) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override
    public InvalidationResult k(RecomposeScopeImpl recomposeScopeImpl, Object obj) {
        o oVar;
        if (recomposeScopeImpl.k()) {
            recomposeScopeImpl.C(true);
        }
        c cVarI = recomposeScopeImpl.i();
        if (cVarI == null || !cVarI.b()) {
            return InvalidationResult.IGNORED;
        }
        if (this.f3529f.y(cVarI)) {
            return !recomposeScopeImpl.j() ? InvalidationResult.IGNORED : F(recomposeScopeImpl, cVarI, obj);
        }
        synchronized (this.f3527d) {
            oVar = this.f3539p;
        }
        return (oVar == null || !oVar.L(recomposeScopeImpl, obj)) ? InvalidationResult.IGNORED : InvalidationResult.IMMINENT;
    }

    @Override
    public void l(Function0 function0) {
        this.f3542s.P0(function0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void m(Set set) {
        Object obj;
        Object objC;
        do {
            obj = this.f3526c.get();
            if (obj == null ? true : Intrinsics.c(obj, p.f3558a)) {
                objC = set;
            } else if (obj instanceof Set) {
                objC = new Set[]{obj, set};
            } else {
                if (!(obj instanceof Object[])) {
                    throw new IllegalStateException(("corrupt pendingModifications: " + this.f3526c).toString());
                }
                Intrinsics.f(obj, "null cannot be cast to non-null type kotlin.Array<kotlin.collections.Set<kotlin.Any>>");
                objC = ArraysKt.C((Set[]) obj, set);
            }
        } while (!androidx.compose.animation.core.j0.a(this.f3526c, obj, objC));
        if (obj == null) {
            synchronized (this.f3527d) {
                C();
                Unit unit = Unit.f64096a;
            }
        }
    }

    @Override
    public void n() {
        synchronized (this.f3527d) {
            try {
                y(this.f3534k);
                C();
                Unit unit = Unit.f64096a;
            } catch (Throwable th2) {
                try {
                    try {
                        if (!this.f3528e.isEmpty()) {
                            new a(this.f3528e).f();
                        }
                        throw th2;
                    } catch (Exception e10) {
                        s();
                        throw e10;
                    }
                } catch (Throwable th3) {
                    throw th3;
                }
            }
        }
    }

    @Override
    public boolean o() {
        return this.f3542s.K0();
    }

    @Override
    public void p(Function2 function2) {
        this.f3542s.m1();
        A(function2);
        this.f3542s.s0();
    }

    /* JADX WARN: Code duplicated, block: B:22:0x005b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:23:0x005d A[Catch: all -> 0x0053, LOOP:0: B:11:0x0023->B:23:0x005d, LOOP_END, TryCatch #0 {all -> 0x0053, blocks: (B:4:0x0003, B:6:0x0012, B:8:0x0016, B:11:0x0023, B:13:0x0033, B:15:0x003f, B:17:0x0048, B:20:0x0055, B:23:0x005d, B:24:0x0060, B:25:0x0065), top: B:30:0x0003 }] */
    /* JADX WARN: Code duplicated, block: B:33:0x0065 A[EDGE_INSN: B:33:0x0065->B:25:0x0065 BREAK  A[LOOP:0: B:11:0x0023->B:23:0x005d], SYNTHETIC] */
    @Override
    public void q(Object obj) {
        synchronized (this.f3527d) {
            try {
                G(obj);
                Object objB = this.f3533j.d().b(obj);
                if (objB != null) {
                    if (objB instanceof MutableScatterSet) {
                        MutableScatterSet mutableScatterSet = (MutableScatterSet) objB;
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
                                            G((z) objArr[(i10 << 3) + i12]);
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
                    } else {
                        G((z) objB);
                    }
                }
                Unit unit = Unit.f64096a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public boolean r() {
        boolean z10;
        synchronized (this.f3527d) {
            z10 = this.f3537n.e() > 0;
        }
        return z10;
    }

    @Override
    public void s() {
        this.f3526c.set(null);
        this.f3534k.a();
        this.f3535l.a();
        if (this.f3528e.isEmpty()) {
            return;
        }
        new a(this.f3528e).f();
    }

    @Override
    public void t() {
        synchronized (this.f3527d) {
            try {
                this.f3542s.d0();
                if (!this.f3528e.isEmpty()) {
                    new a(this.f3528e).f();
                }
                Unit unit = Unit.f64096a;
            } catch (Throwable th2) {
                try {
                    try {
                        if (!this.f3528e.isEmpty()) {
                            new a(this.f3528e).f();
                        }
                        throw th2;
                    } catch (Exception e10) {
                        s();
                        throw e10;
                    }
                } catch (Throwable th3) {
                    throw th3;
                }
            }
        }
    }

    @Override
    public void u() {
        synchronized (this.f3527d) {
            try {
                for (Object obj : this.f3529f.q()) {
                    RecomposeScopeImpl recomposeScopeImpl = obj instanceof RecomposeScopeImpl ? (RecomposeScopeImpl) obj : null;
                    if (recomposeScopeImpl != null) {
                        recomposeScopeImpl.invalidate();
                    }
                }
                Unit unit = Unit.f64096a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public o(m mVar, f fVar, CoroutineContext coroutineContext, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(mVar, fVar, (i10 & 4) != 0 ? null : coroutineContext);
    }
}
