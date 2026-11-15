package androidx.datastore.core;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref;

@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002H\u008a@"}, d2 = {"<anonymous>", "", "T"}, k = 3, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "androidx.datastore.core.DataStoreImpl$readDataOrHandleCorruption$3", f = "DataStoreImpl.kt", l = {387, 388, 390}, m = "invokeSuspend")
final class DataStoreImpl$readDataOrHandleCorruption$3 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
    final Ref.ObjectRef<Object> $newData;
    final Ref.IntRef $version;
    Object L$0;
    int label;
    final DataStoreImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DataStoreImpl$readDataOrHandleCorruption$3(Ref.ObjectRef<Object> objectRef, DataStoreImpl dataStoreImpl, Ref.IntRef intRef, Continuation<? super DataStoreImpl$readDataOrHandleCorruption$3> continuation) {
        super(1, continuation);
        this.$newData = objectRef;
        this.this$0 = dataStoreImpl;
        this.$version = intRef;
    }

    @Override
    public final Continuation<Unit> create(Continuation<?> continuation) {
        return new DataStoreImpl$readDataOrHandleCorruption$3(this.$newData, this.this$0, this.$version, continuation);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final Object invokeSuspend(Object obj) {
        Ref.IntRef intRef;
        Object obj2;
        Ref.ObjectRef<Object> objectRef;
        T t10;
        Ref.IntRef intRef2;
        Object obj3;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        try {
            if (i10 != 0) {
                if (i10 == 1) {
                    objectRef = (Ref.ObjectRef) this.L$0;
                    ResultKt.b(obj);
                    t10 = obj;
                } else {
                    if (i10 != 2) {
                        if (i10 != 3) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        intRef = (Ref.IntRef) this.L$0;
                        ResultKt.b(obj);
                        obj2 = obj;
                        intRef.element = ((Number) obj2).intValue();
                        return Unit.f64096a;
                    }
                    intRef2 = (Ref.IntRef) this.L$0;
                    ResultKt.b(obj);
                    obj3 = obj;
                }
                intRef2.element = ((Number) obj3).intValue();
                return Unit.f64096a;
            }
            ResultKt.b(obj);
            objectRef = this.$newData;
            DataStoreImpl dataStoreImpl = this.this$0;
            this.L$0 = objectRef;
            this.label = 1;
            Object objX = dataStoreImpl.x(this);
            t10 = objX;
            if (objX == objF) {
                return objF;
            }
            objectRef.element = t10;
            intRef2 = this.$version;
            m mVarR = this.this$0.r();
            this.L$0 = intRef2;
            this.label = 2;
            Object objA = mVarR.a(this);
            obj3 = objA;
            if (objA == objF) {
                return objF;
            }
            intRef2.element = ((Number) obj3).intValue();
        } catch (CorruptionException unused) {
            Ref.IntRef intRef3 = this.$version;
            DataStoreImpl dataStoreImpl2 = this.this$0;
            Object obj4 = this.$newData.element;
            this.L$0 = intRef3;
            this.label = 3;
            Object objB = dataStoreImpl2.B(obj4, true, this);
            if (objB == objF) {
                return objF;
            }
            intRef = intRef3;
            obj2 = objB;
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(Continuation<? super Unit> continuation) {
        return ((DataStoreImpl$readDataOrHandleCorruption$3) create(continuation)).invokeSuspend(Unit.f64096a);
    }
}
