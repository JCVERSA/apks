package androidx.room;

import androidx.p009lifecycle.LiveData;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public abstract class RoomTrackingLiveData extends LiveData {

    private final RoomDatabase f14214l;

    private final k f14215m;

    private final boolean f14216n;

    private final InvalidationTracker.b f14217o;

    private final AtomicBoolean f14218p;

    private final AtomicBoolean f14219q;

    private final AtomicBoolean f14220r;

    private final CoroutineContext f14221s;

    public static final class a extends InvalidationTracker.b {

        final RoomTrackingLiveData f14222b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(String[] strArr, RoomTrackingLiveData roomTrackingLiveData) {
            super(strArr);
            this.f14222b = roomTrackingLiveData;
        }

        public static final void e(RoomTrackingLiveData roomTrackingLiveData) {
            roomTrackingLiveData.u();
        }

        @Override
        public void c(Set tables) {
            Intrinsics.h(tables, "tables");
            j.c cVarH = j.c.h();
            final RoomTrackingLiveData roomTrackingLiveData = this.f14222b;
            cVarH.b(new Runnable() {
                @Override
                public final void run() {
                    RoomTrackingLiveData.a.e(roomTrackingLiveData);
                }
            });
        }
    }

    public RoomTrackingLiveData(RoomDatabase roomDatabase, k kVar, boolean z10, String[] strArr, DefaultConstructorMarker defaultConstructorMarker) {
        this(roomDatabase, kVar, z10, strArr);
    }

    public final void u() {
        boolean zH = h();
        if (this.f14218p.compareAndSet(false, true) && zH) {
            kotlinx.coroutines.k.d(this.f14214l.x(), this.f14221s, null, new RoomTrackingLiveData$invalidated$1(this, null), 2, null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:26:0x005e  */
    /* JADX WARN: Code duplicated, block: B:29:0x0069 A[Catch: all -> 0x0033, Exception -> 0x0035, TRY_ENTER, TRY_LEAVE, TryCatch #1 {Exception -> 0x0035, blocks: (B:12:0x002c, B:29:0x0069), top: B:49:0x002c, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:32:0x0076 A[LOOP:0: B:27:0x0061->B:32:0x0076, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:36:0x0083 A[Catch: all -> 0x0033, TRY_LEAVE, TryCatch #0 {all -> 0x0033, blocks: (B:12:0x002c, B:27:0x0061, B:29:0x0069, B:36:0x0083, B:33:0x0079, B:34:0x0080), top: B:48:0x0022, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:40:0x0092  */
    /* JADX WARN: Code duplicated, block: B:42:0x0096  */
    /* JADX WARN: Code duplicated, block: B:52:0x0075 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x005e -> B:27:0x0061). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x0092 -> B:41:0x0094). Please report as a decompilation issue!!! */
    public final Object v(Continuation continuation) {
        RoomTrackingLiveData$refresh$1 roomTrackingLiveData$refresh$1;
        RoomTrackingLiveData roomTrackingLiveData;
        RoomTrackingLiveData roomTrackingLiveData2;
        int i10;
        Object obj;
        Object objT;
        if (continuation instanceof RoomTrackingLiveData$refresh$1) {
            roomTrackingLiveData$refresh$1 = (RoomTrackingLiveData$refresh$1) continuation;
            int i11 = roomTrackingLiveData$refresh$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                roomTrackingLiveData$refresh$1.label = i11 - Integer.MIN_VALUE;
            } else {
                roomTrackingLiveData$refresh$1 = new RoomTrackingLiveData$refresh$1(this, continuation);
            }
        } else {
            roomTrackingLiveData$refresh$1 = new RoomTrackingLiveData$refresh$1(this, continuation);
        }
        Object obj2 = roomTrackingLiveData$refresh$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = roomTrackingLiveData$refresh$1.label;
        try {
            if (i12 == 0) {
                ResultKt.b(obj2);
                if (this.f14220r.compareAndSet(false, true)) {
                    this.f14214l.y().k(this.f14217o);
                }
                roomTrackingLiveData2 = this;
                if (roomTrackingLiveData2.f14219q.compareAndSet(false, true)) {
                    obj = null;
                    roomTrackingLiveData = roomTrackingLiveData2;
                    i10 = 0;
                    while (roomTrackingLiveData.f14218p.compareAndSet(true, false)) {
                        roomTrackingLiveData$refresh$1.L$0 = roomTrackingLiveData;
                        roomTrackingLiveData$refresh$1.I$0 = 1;
                        roomTrackingLiveData$refresh$1.label = 1;
                        objT = roomTrackingLiveData.t(roomTrackingLiveData$refresh$1);
                        if (objT == objF) {
                            return objF;
                        }
                        obj = objT;
                        i10 = 1;
                    }
                    if (i10 != 0) {
                        roomTrackingLiveData.n(obj);
                    }
                    roomTrackingLiveData.f14219q.set(false);
                } else {
                    roomTrackingLiveData = roomTrackingLiveData2;
                    i10 = 0;
                }
                if (i10 != 0) {
                }
                return Unit.f64096a;
            }
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            int i13 = roomTrackingLiveData$refresh$1.I$0;
            roomTrackingLiveData = (RoomTrackingLiveData) roomTrackingLiveData$refresh$1.L$0;
            try {
                ResultKt.b(obj2);
                obj = obj2;
                i10 = i13;
                while (roomTrackingLiveData.f14218p.compareAndSet(true, false)) {
                    roomTrackingLiveData$refresh$1.L$0 = roomTrackingLiveData;
                    roomTrackingLiveData$refresh$1.I$0 = 1;
                    roomTrackingLiveData$refresh$1.label = 1;
                    objT = roomTrackingLiveData.t(roomTrackingLiveData$refresh$1);
                    if (objT == objF) {
                        return objF;
                    }
                    obj = objT;
                    i10 = 1;
                }
                if (i10 != 0) {
                    roomTrackingLiveData.n(obj);
                }
                roomTrackingLiveData.f14219q.set(false);
                if (i10 != 0 || !roomTrackingLiveData.f14218p.get()) {
                    return Unit.f64096a;
                }
                roomTrackingLiveData2 = roomTrackingLiveData;
                if (roomTrackingLiveData2.f14219q.compareAndSet(false, true)) {
                    obj = null;
                    roomTrackingLiveData = roomTrackingLiveData2;
                    i10 = 0;
                    while (roomTrackingLiveData.f14218p.compareAndSet(true, false)) {
                        roomTrackingLiveData$refresh$1.L$0 = roomTrackingLiveData;
                        roomTrackingLiveData$refresh$1.I$0 = 1;
                        roomTrackingLiveData$refresh$1.label = 1;
                        objT = roomTrackingLiveData.t(roomTrackingLiveData$refresh$1);
                        if (objT == objF) {
                            return objF;
                        }
                        obj = objT;
                        i10 = 1;
                    }
                    if (i10 != 0) {
                        roomTrackingLiveData.n(obj);
                    }
                    roomTrackingLiveData.f14219q.set(false);
                } else {
                    roomTrackingLiveData = roomTrackingLiveData2;
                    i10 = 0;
                }
                if (i10 != 0) {
                }
                return Unit.f64096a;
            } catch (Exception e10) {
                throw new RuntimeException("Exception while computing database live data.", e10);
            }
        } catch (Throwable th2) {
            roomTrackingLiveData.f14219q.set(false);
            throw th2;
        }
    }

    @Override
    protected void l() {
        super.l();
        this.f14215m.b(this);
        kotlinx.coroutines.k.d(this.f14214l.x(), this.f14221s, null, new RoomTrackingLiveData$onActive$1(this, null), 2, null);
    }

    @Override
    protected void m() {
        super.m();
        this.f14215m.c(this);
    }

    public abstract Object t(Continuation continuation);

    private RoomTrackingLiveData(RoomDatabase roomDatabase, k kVar, boolean z10, String[] strArr) {
        this.f14214l = roomDatabase;
        this.f14215m = kVar;
        this.f14216n = z10;
        this.f14217o = new a(strArr, this);
        this.f14218p = new AtomicBoolean(true);
        this.f14219q = new AtomicBoolean(false);
        this.f14220r = new AtomicBoolean(false);
        this.f14221s = roomDatabase.K() ? z10 ? roomDatabase.H() : roomDatabase.A() : EmptyCoroutineContext.INSTANCE;
    }
}
