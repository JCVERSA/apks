package androidx.datastore.core;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;

@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"T", "Landroidx/datastore/core/b0;", "", "<anonymous>", "(Landroidx/datastore/core/b0;)V"}, k = 3, mv = {1, 8, 0})
@DebugMetadata(c = "androidx.datastore.core.DataStoreImpl$writeData$2", f = "DataStoreImpl.kt", l = {352, 353}, m = "invokeSuspend")
final class DataStoreImpl$writeData$2 extends SuspendLambda implements Function2<b0, Continuation<? super Unit>, Object> {
    final Object $newData;
    final Ref.IntRef $newVersion;
    final boolean $updateCache;
    private Object L$0;
    Object L$1;
    int label;
    final DataStoreImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DataStoreImpl$writeData$2(Ref.IntRef intRef, DataStoreImpl dataStoreImpl, Object obj, boolean z10, Continuation<? super DataStoreImpl$writeData$2> continuation) {
        super(2, continuation);
        this.$newVersion = intRef;
        this.this$0 = dataStoreImpl;
        this.$newData = obj;
        this.$updateCache = z10;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        DataStoreImpl$writeData$2 dataStoreImpl$writeData$2 = new DataStoreImpl$writeData$2(this.$newVersion, this.this$0, this.$newData, this.$updateCache, continuation);
        dataStoreImpl$writeData$2.L$0 = obj;
        return dataStoreImpl$writeData$2;
    }

    @Override
    public final Object invoke(b0 b0Var, Continuation<? super Unit> continuation) {
        return ((DataStoreImpl$writeData$2) create(b0Var, continuation)).invokeSuspend(Unit.f64096a);
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0061  */
    /* JADX WARN: Code duplicated, block: B:21:0x006d  */
    /* JADX WARN: Code duplicated, block: B:22:0x0072  */
    @Override
    public final Object invokeSuspend(Object obj) {
        Ref.IntRef intRef;
        b0 b0Var;
        Object obj2;
        int iHashCode;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                intRef = (Ref.IntRef) this.L$1;
                b0Var = (b0) this.L$0;
                ResultKt.b(obj);
            } else {
                if (i10 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            if (this.$updateCache) {
                i iVar = this.this$0.f8257h;
                obj2 = this.$newData;
                if (obj2 != null) {
                    iHashCode = obj2.hashCode();
                } else {
                    iHashCode = 0;
                }
                iVar.c(new e(obj2, iHashCode, this.$newVersion.element));
            }
            return Unit.f64096a;
        }
        ResultKt.b(obj);
        b0 b0Var2 = (b0) this.L$0;
        intRef = this.$newVersion;
        m mVarR = this.this$0.r();
        this.L$0 = b0Var2;
        this.L$1 = intRef;
        this.label = 1;
        Object objE = mVarR.e(this);
        if (objE == objF) {
            return objF;
        }
        b0Var = b0Var2;
        obj = objE;
        intRef.element = ((Number) obj).intValue();
        Object obj3 = this.$newData;
        this.L$0 = null;
        this.L$1 = null;
        this.label = 2;
        if (b0Var.a(obj3, this) == objF) {
            return objF;
        }
        if (this.$updateCache) {
            i iVar2 = this.this$0.f8257h;
            obj2 = this.$newData;
            if (obj2 != null) {
                iHashCode = obj2.hashCode();
            } else {
                iHashCode = 0;
            }
            iVar2.c(new e(obj2, iHashCode, this.$newVersion.element));
        }
        return Unit.f64096a;
    }
}
