package kotlinx.coroutines.flow;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.channels.BufferOverflow;

final class StateFlowImpl extends kotlinx.coroutines.flow.internal.a implements x0, a, kotlinx.coroutines.flow.internal.j {

    private static final AtomicReferenceFieldUpdater f64803f = AtomicReferenceFieldUpdater.newUpdater(StateFlowImpl.class, Object.class, "_state$volatile");
    private volatile Object _state$volatile;

    private int f64804e;

    public StateFlowImpl(Object obj) {
        this._state$volatile = obj;
    }

    private final boolean r(Object obj, Object obj2) {
        int i10;
        kotlinx.coroutines.flow.internal.c[] cVarArrN;
        synchronized (this) {
            Object obj3 = f64803f.get(this);
            if (obj != null && !Intrinsics.c(obj3, obj)) {
                return false;
            }
            if (Intrinsics.c(obj3, obj2)) {
                return true;
            }
            f64803f.set(this, obj2);
            int i11 = this.f64804e;
            if ((i11 & 1) != 0) {
                this.f64804e = i11 + 2;
                return true;
            }
            int i12 = i11 + 1;
            this.f64804e = i12;
            kotlinx.coroutines.flow.internal.c[] cVarArrN2 = n();
            Unit unit = Unit.f64096a;
            while (true) {
                j1[] j1VarArr = (j1[]) cVarArrN2;
                if (j1VarArr != null) {
                    for (j1 j1Var : j1VarArr) {
                        if (j1Var != null) {
                            j1Var.g();
                        }
                    }
                }
                synchronized (this) {
                    i10 = this.f64804e;
                    if (i10 == i12) {
                        this.f64804e = i12 + 1;
                        return true;
                    }
                    cVarArrN = n();
                    Unit unit2 = Unit.f64096a;
                }
                cVarArrN2 = cVarArrN;
                i12 = i10;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0099 A[Catch: all -> 0x0042, TryCatch #0 {all -> 0x0042, blocks: (B:15:0x003e, B:29:0x008f, B:31:0x0099, B:33:0x009e, B:43:0x00bf, B:45:0x00c5, B:35:0x00a4, B:39:0x00ab, B:22:0x005f, B:25:0x0071, B:28:0x0080), top: B:50:0x0023 }] */
    /* JADX WARN: Code duplicated, block: B:33:0x009e A[Catch: all -> 0x0042, TryCatch #0 {all -> 0x0042, blocks: (B:15:0x003e, B:29:0x008f, B:31:0x0099, B:33:0x009e, B:43:0x00bf, B:45:0x00c5, B:35:0x00a4, B:39:0x00ab, B:22:0x005f, B:25:0x0071, B:28:0x0080), top: B:50:0x0023 }] */
    /* JADX WARN: Code duplicated, block: B:35:0x00a4 A[Catch: all -> 0x0042, TryCatch #0 {all -> 0x0042, blocks: (B:15:0x003e, B:29:0x008f, B:31:0x0099, B:33:0x009e, B:43:0x00bf, B:45:0x00c5, B:35:0x00a4, B:39:0x00ab, B:22:0x005f, B:25:0x0071, B:28:0x0080), top: B:50:0x0023 }] */
    /* JADX WARN: Code duplicated, block: B:37:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:38:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:41:0x00bd A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:42:0x00be  */
    /* JADX WARN: Code duplicated, block: B:45:0x00c5 A[Catch: all -> 0x0042, TRY_LEAVE, TryCatch #0 {all -> 0x0042, blocks: (B:15:0x003e, B:29:0x008f, B:31:0x0099, B:33:0x009e, B:43:0x00bf, B:45:0x00c5, B:35:0x00a4, B:39:0x00ab, B:22:0x005f, B:25:0x0071, B:28:0x0080), top: B:50:0x0023 }] */
    /* JADX WARN: Code duplicated, block: B:47:0x00d7 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x00c3 -> B:29:0x008f). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x00d5 -> B:29:0x008f). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:42:0x00be
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override
    public java.lang.Object a(kotlinx.coroutines.flow.b r11, kotlin.coroutines.Continuation r12) {
        /*
            Method dump skipped, instruction units count: 220
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.StateFlowImpl.a(kotlinx.coroutines.flow.b, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override
    public boolean b(Object obj) {
        setValue(obj);
        return true;
    }

    @Override
    public a d(CoroutineContext coroutineContext, int i10, BufferOverflow bufferOverflow) {
        return i1.d(this, coroutineContext, i10, bufferOverflow);
    }

    @Override
    public boolean e(Object obj, Object obj2) {
        if (obj == null) {
            obj = kotlinx.coroutines.flow.internal.m.f64844a;
        }
        if (obj2 == null) {
            obj2 = kotlinx.coroutines.flow.internal.m.f64844a;
        }
        return r(obj, obj2);
    }

    @Override
    public Object emit(Object obj, Continuation continuation) {
        setValue(obj);
        return Unit.f64096a;
    }

    @Override
    public void f() {
        throw new UnsupportedOperationException("MutableStateFlow.resetReplayCache is not supported");
    }

    @Override
    public Object getValue() {
        kotlinx.coroutines.internal.z zVar = kotlinx.coroutines.flow.internal.m.f64844a;
        Object obj = f64803f.get(this);
        if (obj == zVar) {
            return null;
        }
        return obj;
    }

    @Override
    public j1 j() {
        return new j1();
    }

    @Override
    public j1[] k(int i10) {
        return new j1[i10];
    }

    @Override
    public void setValue(Object obj) {
        if (obj == null) {
            obj = kotlinx.coroutines.flow.internal.m.f64844a;
        }
        r(null, obj);
    }
}
