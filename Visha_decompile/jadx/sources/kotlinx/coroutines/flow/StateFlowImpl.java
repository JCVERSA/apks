package kotlinx.coroutines.flow;

import defpackage.h37;
import defpackage.hx9;
import defpackage.i94;
import defpackage.ix9;
import defpackage.mw6;
import defpackage.nt1;
import defpackage.nz3;
import defpackage.wh1;
import defpackage.x3;
import defpackage.y45;
import defpackage.y7a;
import defpackage.z3;
import defpackage.zfb;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.channels.BufferOverflow;

public final class StateFlowImpl extends x3 implements mw6, nz3, i94 {
    public static final AtomicReferenceFieldUpdater g = AtomicReferenceFieldUpdater.newUpdater(StateFlowImpl.class, Object.class, "_state$volatile");
    private volatile Object _state$volatile;
    public int f;

    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @nt1(c = "kotlinx.coroutines.flow.StateFlowImpl", f = "StateFlow.kt", l = {389, 401, 406}, m = "collect")
    public static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        int label;
        Object result;

        public AnonymousClass1(wh1<? super AnonymousClass1> wh1Var) {
            super(wh1Var);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return StateFlowImpl.this.collect(null, this);
        }
    }

    public StateFlowImpl(Object obj) {
        this._state$volatile = obj;
    }

    @Override
    public boolean a(Object obj, Object obj2) {
        if (obj == null) {
            obj = h37.a;
        }
        if (obj2 == null) {
            obj2 = h37.a;
        }
        return q(obj, obj2);
    }

    @Override
    public void b() {
        throw new UnsupportedOperationException("MutableStateFlow.resetReplayCache is not supported");
    }

    @Override
    public boolean c(Object obj) {
        setValue(obj);
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:34:0x009e A[Catch: all -> 0x0042, TryCatch #0 {all -> 0x0042, blocks: (B:15:0x003e, B:32:0x0094, B:34:0x009e, B:36:0x00a3, B:46:0x00c4, B:48:0x00ca, B:38:0x00a9, B:42:0x00b0, B:22:0x005f), top: B:53:0x0023 }] */
    /* JADX WARN: Code duplicated, block: B:36:0x00a3 A[Catch: all -> 0x0042, TryCatch #0 {all -> 0x0042, blocks: (B:15:0x003e, B:32:0x0094, B:34:0x009e, B:36:0x00a3, B:46:0x00c4, B:48:0x00ca, B:38:0x00a9, B:42:0x00b0, B:22:0x005f), top: B:53:0x0023 }] */
    /* JADX WARN: Code duplicated, block: B:38:0x00a9 A[Catch: all -> 0x0042, TryCatch #0 {all -> 0x0042, blocks: (B:15:0x003e, B:32:0x0094, B:34:0x009e, B:36:0x00a3, B:46:0x00c4, B:48:0x00ca, B:38:0x00a9, B:42:0x00b0, B:22:0x005f), top: B:53:0x0023 }] */
    /* JADX WARN: Code duplicated, block: B:40:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:41:0x00af  */
    /* JADX WARN: Code duplicated, block: B:44:0x00c2 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:45:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:48:0x00ca A[Catch: all -> 0x0042, TRY_LEAVE, TryCatch #0 {all -> 0x0042, blocks: (B:15:0x003e, B:32:0x0094, B:34:0x009e, B:36:0x00a3, B:46:0x00c4, B:48:0x00ca, B:38:0x00a9, B:42:0x00b0, B:22:0x005f), top: B:53:0x0023 }] */
    /* JADX WARN: Code duplicated, block: B:50:0x00dc A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [int] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v15 */
    /* JADX WARN: Type inference failed for: r2v16 */
    /* JADX WARN: Type inference failed for: r2v17 */
    /* JADX WARN: Type inference failed for: r2v18 */
    /* JADX WARN: Type inference failed for: r2v19 */
    /* JADX WARN: Type inference failed for: r2v2, types: [z3] */
    /* JADX WARN: Type inference failed for: r2v20 */
    /* JADX WARN: Type inference failed for: r2v21 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6, types: [ix9, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v7, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v9, types: [ix9] */
    /* JADX WARN: Type inference failed for: r7v1, types: [x3] */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v13 */
    /* JADX WARN: Type inference failed for: r7v14 */
    /* JADX WARN: Type inference failed for: r7v15 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v5, types: [java.lang.Object] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:47:0x00c8 -> B:32:0x0094). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:49:0x00da -> B:32:0x0094). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:34:0x009e
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override
    public java.lang.Object collect(defpackage.oz3 r10, defpackage.wh1 r11) {
        /*
            Method dump skipped, instruction units count: 225
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.StateFlowImpl.collect(oz3, wh1):java.lang.Object");
    }

    @Override
    public nz3 d(d dVar, int i, BufferOverflow bufferOverflow) {
        return hx9.d(this, dVar, i, bufferOverflow);
    }

    @Override
    public Object emit(Object obj, wh1 wh1Var) {
        setValue(obj);
        return zfb.a;
    }

    @Override
    public Object getValue() {
        y7a y7aVar = h37.a;
        Object obj = g.get(this);
        if (obj == y7aVar) {
            return null;
        }
        return obj;
    }

    @Override
    public ix9 i() {
        return new ix9();
    }

    @Override
    public ix9[] j(int i) {
        return new ix9[i];
    }

    public final boolean q(Object obj, Object obj2) {
        int i;
        z3[] z3VarArrM;
        synchronized (this) {
            Object obj3 = g.get(this);
            if (obj != null && !y45.e(obj3, obj)) {
                return false;
            }
            if (y45.e(obj3, obj2)) {
                return true;
            }
            g.set(this, obj2);
            int i2 = this.f;
            if ((i2 & 1) != 0) {
                this.f = i2 + 2;
                return true;
            }
            int i3 = i2 + 1;
            this.f = i3;
            z3[] z3VarArrM2 = m();
            zfb zfbVar = zfb.a;
            while (true) {
                ix9[] ix9VarArr = (ix9[]) z3VarArrM2;
                if (ix9VarArr != null) {
                    for (ix9 ix9Var : ix9VarArr) {
                        if (ix9Var != null) {
                            ix9Var.g();
                        }
                    }
                }
                synchronized (this) {
                    i = this.f;
                    if (i == i3) {
                        this.f = i3 + 1;
                        return true;
                    }
                    z3VarArrM = m();
                    zfb zfbVar2 = zfb.a;
                }
                z3VarArrM2 = z3VarArrM;
                i3 = i;
            }
        }
    }

    @Override
    public void setValue(Object obj) {
        if (obj == null) {
            obj = h37.a;
        }
        q(null, obj);
    }
}
