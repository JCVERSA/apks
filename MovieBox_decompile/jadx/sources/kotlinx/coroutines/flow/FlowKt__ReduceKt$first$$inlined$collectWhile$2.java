package kotlinx.coroutines.flow;

import com.vungle.ads.internal.protos.Sdk$SDKError;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.flow.internal.AbortFlowException;

public final class FlowKt__ReduceKt$first$$inlined$collectWhile$2 implements b {

    final Function2 f64777a;

    final Ref.ObjectRef f64778b;

    @Metadata(k = 3, mv = {2, 0, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ReduceKt$first$$inlined$collectWhile$2", f = "Reduce.kt", l = {Sdk$SDKError.Reason.MRAID_JS_WRITE_FAILED_VALUE}, m = "emit")
    public static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        Object result;

        public AnonymousClass1(Continuation continuation) {
            super(continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FlowKt__ReduceKt$first$$inlined$collectWhile$2.this.emit(null, this);
        }
    }

    public FlowKt__ReduceKt$first$$inlined$collectWhile$2(Function2 function2, Ref.ObjectRef objectRef) {
        this.f64777a = function2;
        this.f64778b = objectRef;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object emit(Object obj, Continuation continuation) {
        AnonymousClass1 anonymousClass1;
        FlowKt__ReduceKt$first$$inlined$collectWhile$2 flowKt__ReduceKt$first$$inlined$collectWhile$2;
        T t10;
        if (continuation instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) continuation;
            int i10 = anonymousClass1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label = i10 - Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(continuation);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(continuation);
        }
        Object objInvoke = anonymousClass1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = anonymousClass1.label;
        if (i11 == 0) {
            ResultKt.b(objInvoke);
            Function2 function2 = this.f64777a;
            anonymousClass1.L$0 = this;
            anonymousClass1.L$1 = obj;
            anonymousClass1.label = 1;
            InlineMarker.c(6);
            objInvoke = function2.invoke(obj, anonymousClass1);
            InlineMarker.c(7);
            if (objInvoke == objF) {
                return objF;
            }
            flowKt__ReduceKt$first$$inlined$collectWhile$2 = this;
            t10 = obj;
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            Object obj2 = anonymousClass1.L$1;
            flowKt__ReduceKt$first$$inlined$collectWhile$2 = (FlowKt__ReduceKt$first$$inlined$collectWhile$2) anonymousClass1.L$0;
            ResultKt.b(objInvoke);
            t10 = obj2;
        }
        if (!((Boolean) objInvoke).booleanValue()) {
            return Unit.f64096a;
        }
        flowKt__ReduceKt$first$$inlined$collectWhile$2.f64778b.element = t10;
        throw new AbortFlowException(flowKt__ReduceKt$first$$inlined$collectWhile$2);
    }
}
