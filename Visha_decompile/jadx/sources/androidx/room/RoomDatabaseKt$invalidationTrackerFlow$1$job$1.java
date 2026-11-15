package androidx.room;

import defpackage.gh8;
import defpackage.hi;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.s74;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlinx.coroutines.DelayKt;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {1, 8, 0})
@nt1(c = "androidx.room.RoomDatabaseKt$invalidationTrackerFlow$1$job$1", f = "RoomDatabaseExt.kt", l = {230}, m = "invokeSuspend")
public final class RoomDatabaseKt$invalidationTrackerFlow$1$job$1 extends SuspendLambda implements s74 {
    final gh8 $$this$callbackFlow;
    final boolean $emitInitialState;
    final AtomicBoolean $ignoreInvalidation;
    final RoomDatabaseKt$invalidationTrackerFlow$1$observer$1 $observer;
    final String[] $tables;
    final RoomDatabase $this_invalidationTrackerFlow;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RoomDatabaseKt$invalidationTrackerFlow$1$job$1(RoomDatabase roomDatabase, RoomDatabaseKt$invalidationTrackerFlow$1$observer$1 roomDatabaseKt$invalidationTrackerFlow$1$observer$1, boolean z, gh8 gh8Var, String[] strArr, AtomicBoolean atomicBoolean, wh1<? super RoomDatabaseKt$invalidationTrackerFlow$1$job$1> wh1Var) {
        super(2, wh1Var);
        this.$this_invalidationTrackerFlow = roomDatabase;
        this.$observer = roomDatabaseKt$invalidationTrackerFlow$1$observer$1;
        this.$emitInitialState = z;
        this.$$this$callbackFlow = gh8Var;
        this.$tables = strArr;
        this.$ignoreInvalidation = atomicBoolean;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        return new RoomDatabaseKt$invalidationTrackerFlow$1$job$1(this.$this_invalidationTrackerFlow, this.$observer, this.$emitInitialState, this.$$this$callbackFlow, this.$tables, this.$ignoreInvalidation, wh1Var);
    }

    @Override
    public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
        return ((RoomDatabaseKt$invalidationTrackerFlow$1$job$1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = z45.f();
        int i = this.label;
        try {
            if (i == 0) {
                c.b(obj);
                this.$this_invalidationTrackerFlow.getInvalidationTracker().addObserver(this.$observer);
                if (this.$emitInitialState) {
                    this.$$this$callbackFlow.f(hi.p1(this.$tables));
                }
                this.$ignoreInvalidation.set(false);
                this.label = 1;
                if (DelayKt.a(this) == objF) {
                    return objF;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                c.b(obj);
            }
            throw new KotlinNothingValueException();
        } catch (Throwable th) {
            this.$this_invalidationTrackerFlow.getInvalidationTracker().removeObserver(this.$observer);
            throw th;
        }
    }
}
