package androidx.datastore.core;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"T", "", "locked", "Landroidx/datastore/core/e;", "<anonymous>", "(Z)Landroidx/datastore/core/e;"}, k = 3, mv = {1, 8, 0})
@DebugMetadata(c = "androidx.datastore.core.DataStoreImpl$readDataOrHandleCorruption$2", f = "DataStoreImpl.kt", l = {370, 371}, m = "invokeSuspend")
final class DataStoreImpl$readDataOrHandleCorruption$2 extends SuspendLambda implements Function2<Boolean, Continuation<? super e>, Object> {
    final int $preLockVersion;
    Object L$0;
    boolean Z$0;
    int label;
    final DataStoreImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DataStoreImpl$readDataOrHandleCorruption$2(DataStoreImpl dataStoreImpl, int i10, Continuation<? super DataStoreImpl$readDataOrHandleCorruption$2> continuation) {
        super(2, continuation);
        this.this$0 = dataStoreImpl;
        this.$preLockVersion = i10;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        DataStoreImpl$readDataOrHandleCorruption$2 dataStoreImpl$readDataOrHandleCorruption$2 = new DataStoreImpl$readDataOrHandleCorruption$2(this.this$0, this.$preLockVersion, continuation);
        dataStoreImpl$readDataOrHandleCorruption$2.Z$0 = ((Boolean) obj).booleanValue();
        return dataStoreImpl$readDataOrHandleCorruption$2;
    }

    @Override
    public Object invoke(Object obj, Object obj2) {
        return invoke(((Boolean) obj).booleanValue(), (Continuation<? super e>) obj2);
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0059  */
    /* JADX WARN: Code duplicated, block: B:23:0x005e  */
    @Override
    public final Object invokeSuspend(Object obj) {
        boolean z10;
        Object obj2;
        int iIntValue;
        int iHashCode;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                z10 = this.Z$0;
                ResultKt.b(obj);
            } else {
                if (i10 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                obj2 = this.L$0;
                ResultKt.b(obj);
            }
            iIntValue = ((Number) obj).intValue();
            if (obj2 != null) {
                iHashCode = obj2.hashCode();
            } else {
                iHashCode = 0;
            }
            return new e(obj2, iHashCode, iIntValue);
        }
        ResultKt.b(obj);
        z10 = this.Z$0;
        DataStoreImpl dataStoreImpl = this.this$0;
        this.Z$0 = z10;
        this.label = 1;
        obj = dataStoreImpl.x(this);
        if (obj == objF) {
            return objF;
        }
        if (z10) {
            m mVarR = this.this$0.r();
            this.L$0 = obj;
            this.label = 2;
            Object objA = mVarR.a(this);
            if (objA == objF) {
                return objF;
            }
            obj2 = obj;
            obj = objA;
            iIntValue = ((Number) obj).intValue();
        } else {
            obj2 = obj;
            iIntValue = this.$preLockVersion;
        }
        if (obj2 != null) {
            iHashCode = obj2.hashCode();
        } else {
            iHashCode = 0;
        }
        return new e(obj2, iHashCode, iIntValue);
    }

    public final Object invoke(boolean z10, Continuation<? super e> continuation) {
        return ((DataStoreImpl$readDataOrHandleCorruption$2) create(Boolean.valueOf(z10), continuation)).invokeSuspend(Unit.f64096a);
    }
}
