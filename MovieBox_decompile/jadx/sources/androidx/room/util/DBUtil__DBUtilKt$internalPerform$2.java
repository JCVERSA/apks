package androidx.room.util;

import androidx.room.InvalidationTracker;
import androidx.room.RoomDatabase;
import androidx.room.Transactor;
import androidx.room.r;
import com.google.android.gms.fido.u2f.api.common.RegisterRequest;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.InlineMarker;

@Metadata(d1 = {"\u0000\b\n\u0002\b\u0003\n\u0002\u0018\u0002\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "R", "transactor", "Landroidx/room/Transactor;"}, k = 3, mv = {2, 0, 0}, xi = 176)
@DebugMetadata(c = "androidx.room.util.DBUtil__DBUtilKt$internalPerform$2", f = "DBUtil.kt", l = {Sdk$SDKMetric.SDKMetricType.AD_VISIBILITY_VALUE, 57, 59, 60, RegisterRequest.U2F_V1_CHALLENGE_BYTE_LENGTH}, m = "invokeSuspend")
public final class DBUtil__DBUtilKt$internalPerform$2 extends SuspendLambda implements Function2<Transactor, Continuation<Object>, Object> {
    final Function2<r, Continuation<Object>, Object> $block;
    final boolean $inTransaction;
    final boolean $isReadOnly;
    final RoomDatabase $this_internalPerform;
    Object L$0;
    Object L$1;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public DBUtil__DBUtilKt$internalPerform$2(boolean z10, boolean z11, RoomDatabase roomDatabase, Function2<? super r, ? super Continuation<Object>, ? extends Object> function2, Continuation<? super DBUtil__DBUtilKt$internalPerform$2> continuation) {
        super(2, continuation);
        this.$inTransaction = z10;
        this.$isReadOnly = z11;
        this.$this_internalPerform = roomDatabase;
        this.$block = function2;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        DBUtil__DBUtilKt$internalPerform$2 dBUtil__DBUtilKt$internalPerform$2 = new DBUtil__DBUtilKt$internalPerform$2(this.$inTransaction, this.$isReadOnly, this.$this_internalPerform, this.$block, continuation);
        dBUtil__DBUtilKt$internalPerform$2.L$0 = obj;
        return dBUtil__DBUtilKt$internalPerform$2;
    }

    @Override
    public final Object invoke(Transactor transactor, Continuation<Object> continuation) {
        return ((DBUtil__DBUtilKt$internalPerform$2) create(transactor, continuation)).invokeSuspend(Unit.f64096a);
    }

    /* JADX WARN: Code duplicated, block: B:36:0x00a7 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:39:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:41:0x00b6 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:42:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:45:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:51:? A[RETURN, SYNTHETIC] */
    @Override
    public final Object invokeSuspend(Object obj) {
        Transactor.SQLiteTransactionType sQLiteTransactionType;
        Transactor transactor;
        Transactor transactor2;
        Transactor.SQLiteTransactionType sQLiteTransactionType2;
        Object objB;
        Object obj2;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            Transactor transactor3 = (Transactor) this.L$0;
            if (!this.$inTransaction) {
                Function2<r, Continuation<Object>, Object> function2 = this.$block;
                this.label = 5;
                Object objInvoke = function2.invoke(transactor3, this);
                return objInvoke == objF ? objF : objInvoke;
            }
            boolean z10 = this.$isReadOnly;
            sQLiteTransactionType = z10 ? Transactor.SQLiteTransactionType.DEFERRED : Transactor.SQLiteTransactionType.IMMEDIATE;
            if (z10) {
                transactor = transactor3;
            } else {
                this.L$0 = transactor3;
                this.L$1 = sQLiteTransactionType;
                this.label = 1;
                Object objB2 = transactor3.b(this);
                if (objB2 == objF) {
                    return objF;
                }
                Transactor.SQLiteTransactionType sQLiteTransactionType3 = sQLiteTransactionType;
                transactor2 = transactor3;
                obj = objB2;
                sQLiteTransactionType2 = sQLiteTransactionType3;
            }
            DBUtil__DBUtilKt$internalPerform$2$result$1 dBUtil__DBUtilKt$internalPerform$2$result$1 = new DBUtil__DBUtilKt$internalPerform$2$result$1(this.$block, null);
            this.L$0 = transactor;
            this.L$1 = null;
            this.label = 3;
            obj = transactor.a(sQLiteTransactionType, dBUtil__DBUtilKt$internalPerform$2$result$1, this);
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
            transactor2 = (Transactor) this.L$0;
            ResultKt.b(obj);
            Transactor transactor4 = transactor2;
            sQLiteTransactionType = sQLiteTransactionType2;
            transactor = transactor4;
            DBUtil__DBUtilKt$internalPerform$2$result$1 dBUtil__DBUtilKt$internalPerform$2$result$2 = new DBUtil__DBUtilKt$internalPerform$2$result$1(this.$block, null);
            this.L$0 = transactor;
            this.L$1 = null;
            this.label = 3;
            obj = transactor.a(sQLiteTransactionType, dBUtil__DBUtilKt$internalPerform$2$result$2, this);
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
                if (i10 != 5) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
                return obj;
            }
            obj2 = this.L$0;
            ResultKt.b(obj);
        }
        if (!((Boolean) obj).booleanValue()) {
            this.$this_internalPerform.y().w();
        }
        return obj2;
        if (!((Boolean) obj).booleanValue()) {
            InvalidationTracker invalidationTrackerY = this.$this_internalPerform.y();
            this.L$0 = transactor2;
            this.L$1 = sQLiteTransactionType2;
            this.label = 2;
            if (invalidationTrackerY.C(this) == objF) {
                return objF;
            }
        }
        Transactor transactor5 = transactor2;
        sQLiteTransactionType = sQLiteTransactionType2;
        transactor = transactor5;
        DBUtil__DBUtilKt$internalPerform$2$result$1 dBUtil__DBUtilKt$internalPerform$2$result$3 = new DBUtil__DBUtilKt$internalPerform$2$result$1(this.$block, null);
        this.L$0 = transactor;
        this.L$1 = null;
        this.label = 3;
        obj = transactor.a(sQLiteTransactionType, dBUtil__DBUtilKt$internalPerform$2$result$3, this);
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

    public final Object invokeSuspend$$forInline(Object obj) throws Throwable {
        Transactor transactor = (Transactor) this.L$0;
        if (!this.$inTransaction) {
            return this.$block.invoke(transactor, this);
        }
        boolean z10 = this.$isReadOnly;
        Transactor.SQLiteTransactionType sQLiteTransactionType = z10 ? Transactor.SQLiteTransactionType.DEFERRED : Transactor.SQLiteTransactionType.IMMEDIATE;
        if (!z10) {
            InlineMarker.c(0);
            Object objB = transactor.b(this);
            InlineMarker.c(1);
            if (!((Boolean) objB).booleanValue()) {
                InvalidationTracker invalidationTrackerY = this.$this_internalPerform.y();
                InlineMarker.c(0);
                invalidationTrackerY.C(this);
                InlineMarker.c(1);
            }
        }
        DBUtil__DBUtilKt$internalPerform$2$result$1 dBUtil__DBUtilKt$internalPerform$2$result$1 = new DBUtil__DBUtilKt$internalPerform$2$result$1(this.$block, null);
        InlineMarker.c(0);
        Object objA = transactor.a(sQLiteTransactionType, dBUtil__DBUtilKt$internalPerform$2$result$1, this);
        InlineMarker.c(1);
        if (this.$isReadOnly) {
            return objA;
        }
        InlineMarker.c(0);
        Object objB2 = transactor.b(this);
        InlineMarker.c(1);
        if (((Boolean) objB2).booleanValue()) {
            return objA;
        }
        this.$this_internalPerform.y().w();
        return objA;
    }
}
