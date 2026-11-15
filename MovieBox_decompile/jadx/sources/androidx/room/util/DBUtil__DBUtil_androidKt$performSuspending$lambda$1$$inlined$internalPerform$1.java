package androidx.room.util;

import androidx.room.InvalidationTracker;
import androidx.room.RoomDatabase;
import androidx.room.Transactor;
import androidx.room.p0;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000\n\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¨\u0006\u0004"}, d2 = {"<anonymous>", "R", "transactor", "Landroidx/room/Transactor;", "androidx/room/util/DBUtil__DBUtilKt$internalPerform$2"}, k = 3, mv = {2, 0, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "androidx.room.util.DBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1", f = "DBUtil.android.kt", l = {Sdk$SDKMetric.SDKMetricType.AD_VISIBILITY_VALUE, 57, 59, 60}, m = "invokeSuspend")
@SourceDebugExtension
public final class DBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1 extends SuspendLambda implements Function2<Transactor, Continuation<Object>, Object> {
    final Function1 $block$inlined;
    final boolean $inTransaction;
    final boolean $isReadOnly;
    final RoomDatabase $this_internalPerform;
    Object L$0;
    Object L$1;
    int label;

    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\n¨\u0006\u0002"}, d2 = {"R", "Landroidx/room/p0;", "androidx/room/util/DBUtil__DBUtilKt$internalPerform$2$result$1", "<anonymous>"}, k = 3, mv = {2, 0, 0})
    @DebugMetadata(c = "androidx.room.util.DBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1$1", f = "DBUtil.android.kt", l = {}, m = "invokeSuspend")
    @SourceDebugExtension
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<p0, Continuation<Object>, Object> {
        final Function1 $block$inlined;
        private Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Continuation continuation, Function1 function1) {
            super(2, continuation);
            this.$block$inlined = function1;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(continuation, this.$block$inlined);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override
        public final Object invoke(p0 p0Var, Continuation<Object> continuation) {
            return ((AnonymousClass1) create(p0Var, continuation)).invokeSuspend(Unit.f64096a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            p0 p0Var = (p0) this.L$0;
            Intrinsics.f(p0Var, "null cannot be cast to non-null type androidx.room.coroutines.RawConnectionAccessor");
            return this.$block$inlined.invoke(((androidx.room.coroutines.k) p0Var).c());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1(boolean z10, boolean z11, RoomDatabase roomDatabase, Continuation continuation, Function1 function1) {
        super(2, continuation);
        this.$inTransaction = z10;
        this.$isReadOnly = z11;
        this.$this_internalPerform = roomDatabase;
        this.$block$inlined = function1;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        DBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1 dBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1 = new DBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1(this.$inTransaction, this.$isReadOnly, this.$this_internalPerform, continuation, this.$block$inlined);
        dBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1.L$0 = obj;
        return dBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1;
    }

    @Override
    public final Object invoke(Transactor transactor, Continuation<Object> continuation) {
        return ((DBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1) create(transactor, continuation)).invokeSuspend(Unit.f64096a);
    }

    /* JADX WARN: Code duplicated, block: B:36:0x00a1 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:39:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:41:0x00b0 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:42:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:45:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:49:? A[RETURN, SYNTHETIC] */
    @Override
    public final Object invokeSuspend(Object obj) {
        Transactor.SQLiteTransactionType sQLiteTransactionType;
        Transactor transactor;
        Transactor transactor2;
        Transactor.SQLiteTransactionType sQLiteTransactionType2;
        Transactor transactor3;
        Object objB;
        Object obj2;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            Transactor transactor4 = (Transactor) this.L$0;
            if (!this.$inTransaction) {
                Intrinsics.f(transactor4, "null cannot be cast to non-null type androidx.room.coroutines.RawConnectionAccessor");
                return this.$block$inlined.invoke(((androidx.room.coroutines.k) transactor4).c());
            }
            boolean z10 = this.$isReadOnly;
            sQLiteTransactionType = z10 ? Transactor.SQLiteTransactionType.DEFERRED : Transactor.SQLiteTransactionType.IMMEDIATE;
            if (z10) {
                transactor = transactor4;
            } else {
                this.L$0 = transactor4;
                this.L$1 = sQLiteTransactionType;
                this.label = 1;
                Object objB2 = transactor4.b(this);
                if (objB2 == objF) {
                    return objF;
                }
                transactor2 = transactor4;
                obj = objB2;
                sQLiteTransactionType2 = sQLiteTransactionType;
            }
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(null, this.$block$inlined);
            this.L$0 = transactor;
            this.L$1 = null;
            this.label = 3;
            obj = transactor.a(sQLiteTransactionType, anonymousClass1, this);
            if (obj == objF) {
                return objF;
            }
            if (!this.$isReadOnly) {
                return obj;
            }
            this.L$0 = obj;
            this.label = 4;
            objB = transactor.b(this);
            if (objB == objF) {
                return objF;
            }
            obj2 = obj;
            obj = objB;
            if (!((Boolean) obj).booleanValue()) {
                this.$this_internalPerform.y().w();
            }
            return obj2;
        }
        if (i10 == 1) {
            sQLiteTransactionType2 = (Transactor.SQLiteTransactionType) this.L$1;
            transactor2 = (Transactor) this.L$0;
            ResultKt.b(obj);
        } else if (i10 == 2) {
            sQLiteTransactionType2 = (Transactor.SQLiteTransactionType) this.L$1;
            transactor3 = (Transactor) this.L$0;
            ResultKt.b(obj);
            sQLiteTransactionType = sQLiteTransactionType2;
            transactor = transactor3;
            AnonymousClass1 anonymousClass2 = new AnonymousClass1(null, this.$block$inlined);
            this.L$0 = transactor;
            this.L$1 = null;
            this.label = 3;
            obj = transactor.a(sQLiteTransactionType, anonymousClass2, this);
            if (obj == objF) {
                return objF;
            }
            if (!this.$isReadOnly) {
                return obj;
            }
            this.L$0 = obj;
            this.label = 4;
            objB = transactor.b(this);
            if (objB == objF) {
                return objF;
            }
            obj2 = obj;
            obj = objB;
        } else if (i10 == 3) {
            transactor = (Transactor) this.L$0;
            ResultKt.b(obj);
            if (!this.$isReadOnly) {
                return obj;
            }
            this.L$0 = obj;
            this.label = 4;
            objB = transactor.b(this);
            if (objB == objF) {
                return objF;
            }
            obj2 = obj;
            obj = objB;
        } else {
            if (i10 != 4) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            obj2 = this.L$0;
            ResultKt.b(obj);
        }
        if (!((Boolean) obj).booleanValue()) {
            this.$this_internalPerform.y().w();
        }
        return obj2;
        if (((Boolean) obj).booleanValue()) {
            sQLiteTransactionType = sQLiteTransactionType2;
            transactor = transactor2;
        } else {
            InvalidationTracker invalidationTrackerY = this.$this_internalPerform.y();
            this.L$0 = transactor2;
            this.L$1 = sQLiteTransactionType2;
            this.label = 2;
            if (invalidationTrackerY.C(this) == objF) {
                return objF;
            }
            transactor3 = transactor2;
            sQLiteTransactionType = sQLiteTransactionType2;
            transactor = transactor3;
        }
        AnonymousClass1 anonymousClass3 = new AnonymousClass1(null, this.$block$inlined);
        this.L$0 = transactor;
        this.L$1 = null;
        this.label = 3;
        obj = transactor.a(sQLiteTransactionType, anonymousClass3, this);
        if (obj == objF) {
            return objF;
        }
        if (!this.$isReadOnly) {
            return obj;
        }
        this.L$0 = obj;
        this.label = 4;
        objB = transactor.b(this);
        if (objB == objF) {
            return objF;
        }
        obj2 = obj;
        obj = objB;
        if (!((Boolean) obj).booleanValue()) {
            this.$this_internalPerform.y().w();
        }
        return obj2;
    }
}
