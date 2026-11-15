package androidx.compose.runtime;

import androidx.collection.MutableScatterSet;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.ExceptionsKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuationImpl;

public final class Recomposer extends m {

    private long f3327a;

    private final BroadcastFrameClock f3328b;

    private final Object f3329c;

    private kotlinx.coroutines.t1 f3330d;

    private Throwable f3331e;

    private final List f3332f;

    private List f3333g;

    private MutableScatterSet f3334h;

    private final androidx.compose.runtime.collection.b f3335i;

    private final List f3336j;

    private final List f3337k;

    private final Map f3338l;

    private final Map f3339m;

    private List f3340n;

    private Set f3341o;

    private kotlinx.coroutines.n f3342p;

    private int f3343q;

    private boolean f3344r;

    private b f3345s;

    private boolean f3346t;

    private final kotlinx.coroutines.flow.x0 f3347u;

    private final kotlinx.coroutines.z f3348v;

    private final CoroutineContext f3349w;

    private final c f3350x;

    public static final a f3325y = new a(null);

    public static final int f3326z = 8;
    private static final kotlinx.coroutines.flow.x0 A = kotlinx.coroutines.flow.i1.a(t.a.c());
    private static final AtomicReference B = new AtomicReference(Boolean.FALSE);

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\b\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Landroidx/compose/runtime/Recomposer$State;", "", "(Ljava/lang/String;I)V", "ShutDown", "ShuttingDown", "Inactive", "InactivePendingWork", "Idle", "PendingWork", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public enum State {
        ShutDown,
        ShuttingDown,
        Inactive,
        InactivePendingWork,
        Idle,
        PendingWork
    }

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void c(c cVar) {
            t.h hVar;
            t.h hVarAdd;
            do {
                hVar = (t.h) Recomposer.A.getValue();
                hVarAdd = hVar.add((Object) cVar);
                if (hVar == hVarAdd) {
                    return;
                }
            } while (!Recomposer.A.e(hVar, hVarAdd));
        }

        public final void d(c cVar) {
            t.h hVar;
            t.h hVarRemove;
            do {
                hVar = (t.h) Recomposer.A.getValue();
                hVarRemove = hVar.remove((Object) cVar);
                if (hVar == hVarRemove) {
                    return;
                }
            } while (!Recomposer.A.e(hVar, hVarRemove));
        }

        private a() {
        }
    }

    private static final class b {

        private final boolean f3351a;

        private final Exception f3352b;

        public b(boolean z10, Exception exc) {
            this.f3351a = z10;
            this.f3352b = exc;
        }

        public Exception a() {
            return this.f3352b;
        }
    }

    final class c {
        public c() {
        }
    }

    public Recomposer(CoroutineContext coroutineContext) {
        BroadcastFrameClock broadcastFrameClock = new BroadcastFrameClock(new Function0<Unit>() {
            {
                super(0);
            }

            @Override
            public Object invoke() {
                m85invoke();
                return Unit.f64096a;
            }

            public final void m85invoke() {
                kotlinx.coroutines.n nVarA0;
                Object obj = this.this$0.f3329c;
                Recomposer recomposer = this.this$0;
                synchronized (obj) {
                    nVarA0 = recomposer.a0();
                    if (((Recomposer.State) recomposer.f3347u.getValue()).compareTo(Recomposer.State.ShuttingDown) <= 0) {
                        throw kotlinx.coroutines.i1.a("Recomposer shutdown; frame clock awaiter will never resume", recomposer.f3331e);
                    }
                }
                if (nVarA0 != null) {
                    Result.Companion companion = Result.INSTANCE;
                    nVarA0.resumeWith(Result.m453constructorimpl(Unit.f64096a));
                }
            }
        });
        this.f3328b = broadcastFrameClock;
        this.f3329c = new Object();
        this.f3332f = new ArrayList();
        this.f3334h = new MutableScatterSet(0, 1, null);
        this.f3335i = new androidx.compose.runtime.collection.b(new y[16], 0);
        this.f3336j = new ArrayList();
        this.f3337k = new ArrayList();
        this.f3338l = new LinkedHashMap();
        this.f3339m = new LinkedHashMap();
        this.f3347u = kotlinx.coroutines.flow.i1.a(State.Inactive);
        kotlinx.coroutines.z zVarA = kotlinx.coroutines.v1.a((kotlinx.coroutines.t1) coroutineContext.get(kotlinx.coroutines.t1.f65027m1));
        zVarA.invokeOnCompletion(new Function1<Throwable, Unit>() {
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((Throwable) obj);
                return Unit.f64096a;
            }

            public final void invoke(final Throwable th2) {
                kotlinx.coroutines.n nVar;
                kotlinx.coroutines.n nVar2;
                CancellationException cancellationExceptionA = kotlinx.coroutines.i1.a("Recomposer effect job completed", th2);
                Object obj = this.this$0.f3329c;
                final Recomposer recomposer = this.this$0;
                synchronized (obj) {
                    try {
                        kotlinx.coroutines.t1 t1Var = recomposer.f3330d;
                        nVar = null;
                        if (t1Var != null) {
                            recomposer.f3347u.setValue(Recomposer.State.ShuttingDown);
                            if (recomposer.f3344r) {
                                if (recomposer.f3342p != null) {
                                    nVar2 = recomposer.f3342p;
                                }
                                recomposer.f3342p = null;
                                t1Var.invokeOnCompletion(new Function1<Throwable, Unit>() {
                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    {
                                        super(1);
                                    }

                                    @Override
                                    public Object invoke(Object obj2) {
                                        invoke((Throwable) obj2);
                                        return Unit.f64096a;
                                    }

                                    public final void invoke(Throwable th3) {
                                        Object obj2 = recomposer.f3329c;
                                        Recomposer recomposer2 = recomposer;
                                        Throwable th4 = th2;
                                        synchronized (obj2) {
                                            if (th4 == null) {
                                                th4 = null;
                                            } else if (th3 != null) {
                                                try {
                                                    if (th3 instanceof CancellationException) {
                                                        th3 = null;
                                                    }
                                                    if (th3 != null) {
                                                        ExceptionsKt.a(th4, th3);
                                                    }
                                                } catch (Throwable th5) {
                                                    throw th5;
                                                }
                                            }
                                            recomposer2.f3331e = th4;
                                            recomposer2.f3347u.setValue(Recomposer.State.ShutDown);
                                            Unit unit = Unit.f64096a;
                                        }
                                    }
                                });
                                nVar = nVar2;
                            } else {
                                t1Var.cancel(cancellationExceptionA);
                            }
                            nVar2 = null;
                            recomposer.f3342p = null;
                            t1Var.invokeOnCompletion(new Function1<Throwable, Unit>() {
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(1);
                                }

                                @Override
                                public Object invoke(Object obj2) {
                                    invoke((Throwable) obj2);
                                    return Unit.f64096a;
                                }

                                public final void invoke(Throwable th3) {
                                    Object obj2 = recomposer.f3329c;
                                    Recomposer recomposer2 = recomposer;
                                    Throwable th4 = th2;
                                    synchronized (obj2) {
                                        if (th4 == null) {
                                            th4 = null;
                                        } else if (th3 != null) {
                                            try {
                                                if (th3 instanceof CancellationException) {
                                                    th3 = null;
                                                }
                                                if (th3 != null) {
                                                    ExceptionsKt.a(th4, th3);
                                                }
                                            } catch (Throwable th5) {
                                                throw th5;
                                            }
                                        }
                                        recomposer2.f3331e = th4;
                                        recomposer2.f3347u.setValue(Recomposer.State.ShutDown);
                                        Unit unit = Unit.f64096a;
                                    }
                                }
                            });
                            nVar = nVar2;
                        } else {
                            recomposer.f3331e = cancellationExceptionA;
                            recomposer.f3347u.setValue(Recomposer.State.ShutDown);
                            Unit unit = Unit.f64096a;
                        }
                    } catch (Throwable th3) {
                        throw th3;
                    }
                }
                if (nVar != null) {
                    Result.Companion companion = Result.INSTANCE;
                    nVar.resumeWith(Result.m453constructorimpl(Unit.f64096a));
                }
            }
        });
        this.f3348v = zVarA;
        this.f3349w = coroutineContext.plus(broadcastFrameClock).plus(zVarA);
        this.f3350x = new c();
    }

    private final Function1 A0(final y yVar, final MutableScatterSet mutableScatterSet) {
        return new Function1<Object, Unit>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                m88invoke(obj);
                return Unit.f64096a;
            }

            public final void m88invoke(Object obj) {
                yVar.q(obj);
                MutableScatterSet mutableScatterSet2 = mutableScatterSet;
                if (mutableScatterSet2 != null) {
                    mutableScatterSet2.h(obj);
                }
            }
        };
    }

    private final void V(y yVar) {
        this.f3332f.add(yVar);
        this.f3333g = null;
    }

    private final void W(androidx.compose.runtime.snapshots.b bVar) {
        try {
            if (bVar.C() instanceof androidx.compose.runtime.snapshots.k.a) {
                throw new IllegalStateException("Unsupported concurrent change during composition. A state object was modified by composition as well as being modified outside composition.");
            }
            bVar.d();
        } catch (Throwable th2) {
            bVar.d();
            throw th2;
        }
    }

    public final Object X(Continuation continuation) {
        CancellableContinuationImpl cancellableContinuationImpl;
        if (h0()) {
            return Unit.f64096a;
        }
        CancellableContinuationImpl cancellableContinuationImpl2 = new CancellableContinuationImpl(IntrinsicsKt.c(continuation), 1);
        cancellableContinuationImpl2.initCancellability();
        synchronized (this.f3329c) {
            if (h0()) {
                cancellableContinuationImpl = cancellableContinuationImpl2;
            } else {
                this.f3342p = cancellableContinuationImpl2;
                cancellableContinuationImpl = null;
            }
        }
        if (cancellableContinuationImpl != null) {
            Result.Companion companion = Result.INSTANCE;
            cancellableContinuationImpl.resumeWith(Result.m453constructorimpl(Unit.f64096a));
        }
        Object result = cancellableContinuationImpl2.getResult();
        if (result == IntrinsicsKt.f()) {
            DebugProbesKt.c(continuation);
        }
        return result == IntrinsicsKt.f() ? result : Unit.f64096a;
    }

    private final void Z() {
        this.f3332f.clear();
        this.f3333g = CollectionsKt.l();
    }

    public final kotlinx.coroutines.n a0() {
        State state;
        if (((State) this.f3347u.getValue()).compareTo(State.ShuttingDown) <= 0) {
            Z();
            this.f3334h = new MutableScatterSet(0, 1, null);
            this.f3335i.h();
            this.f3336j.clear();
            this.f3337k.clear();
            this.f3340n = null;
            kotlinx.coroutines.n nVar = this.f3342p;
            if (nVar != null) {
                kotlinx.coroutines.n.a.a(nVar, null, 1, null);
            }
            this.f3342p = null;
            this.f3345s = null;
            return null;
        }
        if (this.f3345s != null) {
            state = State.Inactive;
        } else if (this.f3330d == null) {
            this.f3334h = new MutableScatterSet(0, 1, null);
            this.f3335i.h();
            state = f0() ? State.InactivePendingWork : State.Inactive;
        } else {
            state = (this.f3335i.q() || this.f3334h.e() || !this.f3336j.isEmpty() || !this.f3337k.isEmpty() || this.f3343q > 0 || f0()) ? State.PendingWork : State.Idle;
        }
        this.f3347u.setValue(state);
        if (state != State.PendingWork) {
            return null;
        }
        kotlinx.coroutines.n nVar2 = this.f3342p;
        this.f3342p = null;
        return nVar2;
    }

    public final void b0() {
        int i10;
        List listL;
        synchronized (this.f3329c) {
            try {
                if (this.f3338l.isEmpty()) {
                    listL = CollectionsKt.l();
                } else {
                    List listX = CollectionsKt.x(this.f3338l.values());
                    this.f3338l.clear();
                    listL = new ArrayList(listX.size());
                    int size = listX.size();
                    for (int i11 = 0; i11 < size; i11++) {
                        y0 y0Var = (y0) listX.get(i11);
                        listL.add(TuplesKt.a(y0Var, this.f3339m.get(y0Var)));
                    }
                    this.f3339m.clear();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        int size2 = listL.size();
        for (i10 = 0; i10 < size2; i10++) {
            Pair pair = (Pair) listL.get(i10);
        }
    }

    public final boolean e0() {
        boolean zF0;
        synchronized (this.f3329c) {
            zF0 = f0();
        }
        return zF0;
    }

    private final boolean f0() {
        return !this.f3346t && this.f3328b.q();
    }

    private final boolean g0() {
        return this.f3335i.q() || f0();
    }

    public final boolean h0() {
        boolean z10;
        synchronized (this.f3329c) {
            z10 = this.f3334h.e() || this.f3335i.q() || f0();
        }
        return z10;
    }

    public final List i0() {
        List listL = this.f3333g;
        if (listL == null) {
            List list = this.f3332f;
            listL = list.isEmpty() ? CollectionsKt.l() : new ArrayList(list);
            this.f3333g = listL;
        }
        return listL;
    }

    public final boolean j0() {
        boolean z10;
        synchronized (this.f3329c) {
            z10 = this.f3344r;
        }
        if (z10) {
            Iterator f64466a = this.f3348v.getChildren().getF64466a();
            while (f64466a.hasNext()) {
                if (((kotlinx.coroutines.t1) f64466a.next()).isActive()) {
                }
            }
            return false;
        }
        return true;
    }

    private final void m0(y yVar) {
        synchronized (this.f3329c) {
            List list = this.f3337k;
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                if (Intrinsics.c(((y0) list.get(i10)).b(), yVar)) {
                    Unit unit = Unit.f64096a;
                    ArrayList arrayList = new ArrayList();
                    n0(arrayList, this, yVar);
                    while (!arrayList.isEmpty()) {
                        o0(arrayList, null);
                        n0(arrayList, this, yVar);
                    }
                    return;
                }
            }
        }
    }

    private static final void n0(List list, Recomposer recomposer, y yVar) {
        list.clear();
        synchronized (recomposer.f3329c) {
            try {
                Iterator it = recomposer.f3337k.iterator();
                while (it.hasNext()) {
                    y0 y0Var = (y0) it.next();
                    if (Intrinsics.c(y0Var.b(), yVar)) {
                        list.add(y0Var);
                        it.remove();
                    }
                }
                Unit unit = Unit.f64096a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final List o0(List list, MutableScatterSet mutableScatterSet) {
        ArrayList arrayList;
        HashMap map = new HashMap(list.size());
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            Object obj = list.get(i10);
            y yVarB = ((y0) obj).b();
            Object arrayList2 = map.get(yVarB);
            if (arrayList2 == null) {
                arrayList2 = new ArrayList();
                map.put(yVarB, arrayList2);
            }
            ((ArrayList) arrayList2).add(obj);
        }
        for (Map.Entry entry : map.entrySet()) {
            y yVar = (y) entry.getKey();
            List list2 = (List) entry.getValue();
            k.O(!yVar.o());
            androidx.compose.runtime.snapshots.b bVarO = androidx.compose.runtime.snapshots.j.f3695e.o(s0(yVar), A0(yVar, mutableScatterSet));
            try {
                androidx.compose.runtime.snapshots.j jVarL = bVarO.l();
                try {
                    synchronized (this.f3329c) {
                        arrayList = new ArrayList(list2.size());
                        int size2 = list2.size();
                        for (int i11 = 0; i11 < size2; i11++) {
                            y0 y0Var = (y0) list2.get(i11);
                            Map map2 = this.f3338l;
                            y0Var.c();
                            arrayList.add(TuplesKt.a(y0Var, x1.a(map2, null)));
                        }
                    }
                    int size3 = arrayList.size();
                    for (int i12 = 0; i12 < size3; i12++) {
                        if (((Pair) arrayList.get(i12)).getSecond() != null) {
                            int size4 = arrayList.size();
                            for (int i13 = 0; i13 < size4; i13++) {
                                if (((Pair) arrayList.get(i13)).getSecond() == null) {
                                    ArrayList arrayList3 = new ArrayList(arrayList.size());
                                    int size5 = arrayList.size();
                                    for (int i14 = 0; i14 < size5; i14++) {
                                        Pair pair = (Pair) arrayList.get(i14);
                                        y0 y0Var2 = pair.getSecond() == null ? (y0) pair.getFirst() : null;
                                        if (y0Var2 != null) {
                                            arrayList3.add(y0Var2);
                                        }
                                    }
                                    synchronized (this.f3329c) {
                                        CollectionsKt.B(this.f3337k, arrayList3);
                                        Unit unit = Unit.f64096a;
                                    }
                                    ArrayList arrayList4 = new ArrayList(arrayList.size());
                                    int size6 = arrayList.size();
                                    for (int i15 = 0; i15 < size6; i15++) {
                                        Object obj2 = arrayList.get(i15);
                                        if (((Pair) obj2).getSecond() != null) {
                                            arrayList4.add(obj2);
                                        }
                                    }
                                    arrayList = arrayList4;
                                    break;
                                }
                            }
                            break;
                        }
                    }
                    yVar.f(arrayList);
                    Unit unit2 = Unit.f64096a;
                    bVarO.s(jVarL);
                    W(bVarO);
                } catch (Throwable th2) {
                    bVarO.s(jVarL);
                    throw th2;
                }
            } catch (Throwable th3) {
                W(bVarO);
                throw th3;
            }
        }
        return CollectionsKt.R0(map.keySet());
    }

    public final y p0(final y yVar, final MutableScatterSet mutableScatterSet) {
        Set set;
        if (yVar.o() || yVar.isDisposed() || ((set = this.f3341o) != null && set.contains(yVar))) {
            return null;
        }
        androidx.compose.runtime.snapshots.b bVarO = androidx.compose.runtime.snapshots.j.f3695e.o(s0(yVar), A0(yVar, mutableScatterSet));
        try {
            androidx.compose.runtime.snapshots.j jVarL = bVarO.l();
            if (mutableScatterSet != null) {
                try {
                    if (mutableScatterSet.e()) {
                        yVar.l(new Function0<Unit>() {
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(0);
                            }

                            @Override
                            public Object invoke() {
                                m86invoke();
                                return Unit.f64096a;
                            }

                            public final void m86invoke() {
                                MutableScatterSet mutableScatterSet2 = mutableScatterSet;
                                y yVar2 = yVar;
                                Object[] objArr = mutableScatterSet2.f1938b;
                                long[] jArr = mutableScatterSet2.f1937a;
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
                                                yVar2.q(objArr[(i10 << 3) + i12]);
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
                        });
                    }
                } catch (Throwable th2) {
                    bVarO.s(jVarL);
                    throw th2;
                }
            }
            boolean zI = yVar.i();
            bVarO.s(jVarL);
            W(bVarO);
            if (zI) {
                return yVar;
            }
            return null;
        } catch (Throwable th3) {
            W(bVarO);
            throw th3;
        }
    }

    private final void q0(Exception exc, y yVar, boolean z10) throws Exception {
        if (!((Boolean) B.get()).booleanValue() || (exc instanceof ComposeRuntimeError)) {
            synchronized (this.f3329c) {
                b bVar = this.f3345s;
                if (bVar != null) {
                    throw bVar.a();
                }
                this.f3345s = new b(false, exc);
                Unit unit = Unit.f64096a;
            }
            throw exc;
        }
        synchronized (this.f3329c) {
            try {
                ActualAndroid_androidKt.e("Error was captured in composition while live edit was enabled.", exc);
                this.f3336j.clear();
                this.f3335i.h();
                this.f3334h = new MutableScatterSet(0, 1, null);
                this.f3337k.clear();
                this.f3338l.clear();
                this.f3339m.clear();
                this.f3345s = new b(z10, exc);
                if (yVar != null) {
                    v0(yVar);
                }
                a0();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    static void r0(Recomposer recomposer, Exception exc, y yVar, boolean z10, int i10, Object obj) throws Exception {
        if ((i10 & 2) != 0) {
            yVar = null;
        }
        if ((i10 & 4) != 0) {
            z10 = false;
        }
        recomposer.q0(exc, yVar, z10);
    }

    private final Function1 s0(final y yVar) {
        return new Function1<Object, Unit>() {
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                m87invoke(obj);
                return Unit.f64096a;
            }

            public final void m87invoke(Object obj) {
                yVar.a(obj);
            }
        };
    }

    private final Object t0(Function3 function3, Continuation continuation) {
        Object objG = kotlinx.coroutines.i.g(this.f3328b, new Recomposer$recompositionRunner$2(this, function3, v0.a(continuation.getContext()), null), continuation);
        return objG == IntrinsicsKt.f() ? objG : Unit.f64096a;
    }

    public final boolean u0() {
        List listI0;
        boolean zG0;
        synchronized (this.f3329c) {
            if (this.f3334h.d()) {
                return g0();
            }
            Set setA = androidx.compose.runtime.collection.d.a(this.f3334h);
            this.f3334h = new MutableScatterSet(0, 1, null);
            synchronized (this.f3329c) {
                listI0 = i0();
            }
            try {
                int size = listI0.size();
                for (int i10 = 0; i10 < size; i10++) {
                    ((y) listI0.get(i10)).m(setA);
                    if (((State) this.f3347u.getValue()).compareTo(State.ShuttingDown) <= 0) {
                        break;
                    }
                }
                synchronized (this.f3329c) {
                    this.f3334h = new MutableScatterSet(0, 1, null);
                    Unit unit = Unit.f64096a;
                }
                synchronized (this.f3329c) {
                    if (a0() != null) {
                        throw new IllegalStateException("called outside of runRecomposeAndApplyChanges");
                    }
                    zG0 = g0();
                }
                return zG0;
            } catch (Throwable th2) {
                synchronized (this.f3329c) {
                    this.f3334h.j(setA);
                    throw th2;
                }
            }
        }
    }

    public final void v0(y yVar) {
        List arrayList = this.f3340n;
        if (arrayList == null) {
            arrayList = new ArrayList();
            this.f3340n = arrayList;
        }
        if (!arrayList.contains(yVar)) {
            arrayList.add(yVar);
        }
        x0(yVar);
    }

    public final void w0(kotlinx.coroutines.t1 t1Var) {
        synchronized (this.f3329c) {
            Throwable th2 = this.f3331e;
            if (th2 != null) {
                throw th2;
            }
            if (((State) this.f3347u.getValue()).compareTo(State.ShuttingDown) <= 0) {
                throw new IllegalStateException("Recomposer shut down");
            }
            if (this.f3330d != null) {
                throw new IllegalStateException("Recomposer already running");
            }
            this.f3330d = t1Var;
            a0();
        }
    }

    private final void x0(y yVar) {
        this.f3332f.remove(yVar);
        this.f3333g = null;
    }

    public final void Y() {
        synchronized (this.f3329c) {
            try {
                if (((State) this.f3347u.getValue()).compareTo(State.Idle) >= 0) {
                    this.f3347u.setValue(State.ShuttingDown);
                }
                Unit unit = Unit.f64096a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        kotlinx.coroutines.t1.a.b(this.f3348v, null, 1, null);
    }

    @Override
    public void a(y yVar, Function2 function2) throws Exception {
        boolean zO = yVar.o();
        try {
            androidx.compose.runtime.snapshots.j.a aVar = androidx.compose.runtime.snapshots.j.f3695e;
            androidx.compose.runtime.snapshots.b bVarO = aVar.o(s0(yVar), A0(yVar, null));
            try {
                androidx.compose.runtime.snapshots.j jVarL = bVarO.l();
                try {
                    yVar.b(function2);
                    Unit unit = Unit.f64096a;
                    bVarO.s(jVarL);
                    W(bVarO);
                    if (!zO) {
                        aVar.g();
                    }
                    synchronized (this.f3329c) {
                        if (((State) this.f3347u.getValue()).compareTo(State.ShuttingDown) > 0 && !i0().contains(yVar)) {
                            V(yVar);
                        }
                    }
                    try {
                        m0(yVar);
                        try {
                            yVar.n();
                            yVar.c();
                            if (zO) {
                                return;
                            }
                            aVar.g();
                        } catch (Exception e10) {
                            r0(this, e10, null, false, 6, null);
                        }
                    } catch (Exception e11) {
                        q0(e11, yVar, true);
                    }
                } catch (Throwable th2) {
                    bVarO.s(jVarL);
                    throw th2;
                }
            } catch (Throwable th3) {
                W(bVarO);
                throw th3;
            }
        } catch (Exception e12) {
            q0(e12, yVar, true);
        }
    }

    @Override
    public boolean c() {
        return ((Boolean) B.get()).booleanValue();
    }

    public final long c0() {
        return this.f3327a;
    }

    @Override
    public boolean d() {
        return false;
    }

    public final kotlinx.coroutines.flow.h1 d0() {
        return this.f3347u;
    }

    @Override
    public boolean e() {
        return false;
    }

    @Override
    public int g() {
        return 1000;
    }

    @Override
    public CoroutineContext h() {
        return this.f3349w;
    }

    @Override
    public void j(y0 y0Var) {
        kotlinx.coroutines.n nVarA0;
        synchronized (this.f3329c) {
            this.f3337k.add(y0Var);
            nVarA0 = a0();
        }
        if (nVarA0 != null) {
            Result.Companion companion = Result.INSTANCE;
            nVarA0.resumeWith(Result.m453constructorimpl(Unit.f64096a));
        }
    }

    @Override
    public void k(y yVar) {
        kotlinx.coroutines.n nVarA0;
        synchronized (this.f3329c) {
            if (this.f3335i.i(yVar)) {
                nVarA0 = null;
            } else {
                this.f3335i.b(yVar);
                nVarA0 = a0();
            }
        }
        if (nVarA0 != null) {
            Result.Companion companion = Result.INSTANCE;
            nVarA0.resumeWith(Result.m453constructorimpl(Unit.f64096a));
        }
    }

    public final Object k0(Continuation continuation) {
        Object objP = kotlinx.coroutines.flow.c.p(d0(), new Recomposer$join$2(null), continuation);
        return objP == IntrinsicsKt.f() ? objP : Unit.f64096a;
    }

    @Override
    public x0 l(y0 y0Var) {
        x0 x0Var;
        synchronized (this.f3329c) {
            x0Var = (x0) this.f3339m.remove(y0Var);
        }
        return x0Var;
    }

    public final void l0() {
        synchronized (this.f3329c) {
            this.f3346t = true;
            Unit unit = Unit.f64096a;
        }
    }

    @Override
    public void o(y yVar) {
        synchronized (this.f3329c) {
            try {
                Set linkedHashSet = this.f3341o;
                if (linkedHashSet == null) {
                    linkedHashSet = new LinkedHashSet();
                    this.f3341o = linkedHashSet;
                }
                linkedHashSet.add(yVar);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public void r(y yVar) {
        synchronized (this.f3329c) {
            x0(yVar);
            this.f3335i.t(yVar);
            this.f3336j.remove(yVar);
            Unit unit = Unit.f64096a;
        }
    }

    public final void y0() {
        kotlinx.coroutines.n nVarA0;
        synchronized (this.f3329c) {
            if (this.f3346t) {
                this.f3346t = false;
                nVarA0 = a0();
            } else {
                nVarA0 = null;
            }
        }
        if (nVarA0 != null) {
            Result.Companion companion = Result.INSTANCE;
            nVarA0.resumeWith(Result.m453constructorimpl(Unit.f64096a));
        }
    }

    public final Object z0(Continuation continuation) {
        Object objT0 = t0(new Recomposer$runRecomposeAndApplyChanges$2(this, null), continuation);
        return objT0 == IntrinsicsKt.f() ? objT0 : Unit.f64096a;
    }

    @Override
    public void m(Set set) {
    }
}
