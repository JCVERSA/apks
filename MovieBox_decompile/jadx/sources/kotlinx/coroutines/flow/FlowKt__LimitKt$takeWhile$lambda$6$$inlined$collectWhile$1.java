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
import kotlinx.coroutines.flow.internal.AbortFlowException;

public final class FlowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$1 implements b {

    final Function2 f64772a;

    final b f64773b;

    @Metadata(k = 3, mv = {2, 0, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$1", f = "Limit.kt", l = {Sdk$SDKError.Reason.MRAID_JS_WRITE_FAILED_VALUE, Sdk$SDKError.Reason.OMSDK_DOWNLOAD_JS_ERROR_VALUE}, m = "emit")
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
            return FlowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$1.this.emit(null, this);
        }
    }

    public FlowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$1(Function2 function2, b bVar) {
        this.f64772a = function2;
        this.f64773b = bVar;
    }

    /* JADX WARN: Code duplicated, block: B:27:0x007e  */
    /* JADX WARN: Code duplicated, block: B:29:0x0081  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override
    public Object emit(Object obj, Continuation continuation) {
        AnonymousClass1 anonymousClass1;
        Object obj2;
        Object obj3;
        FlowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$1 flowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$1;
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
        Object obj4 = anonymousClass1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = anonymousClass1.label;
        boolean z10 = true;
        if (i11 != 0) {
            if (i11 == 1) {
                Object obj5 = anonymousClass1.L$1;
                FlowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$1 flowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$2 = (FlowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$1) anonymousClass1.L$0;
                ResultKt.b(obj4);
                obj3 = obj5;
                flowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$1 = flowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$2;
                obj2 = obj4;
            } else {
                if (i11 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                flowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$1 = (FlowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$1) anonymousClass1.L$0;
                ResultKt.b(obj4);
            }
            if (z10) {
                return Unit.f64096a;
            }
            throw new AbortFlowException(flowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$1);
        }
        ResultKt.b(obj4);
        Function2 function2 = this.f64772a;
        anonymousClass1.L$0 = this;
        anonymousClass1.L$1 = obj;
        anonymousClass1.label = 1;
        InlineMarker.c(6);
        Object objInvoke = function2.invoke(obj, anonymousClass1);
        InlineMarker.c(7);
        if (objInvoke == objF) {
            return objF;
        }
        obj2 = objInvoke;
        obj3 = obj;
        flowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$1 = this;
        if (((Boolean) obj2).booleanValue()) {
            b bVar = flowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$1.f64773b;
            anonymousClass1.L$0 = flowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$1;
            anonymousClass1.L$1 = null;
            anonymousClass1.label = 2;
            if (bVar.emit(obj3, anonymousClass1) == objF) {
                return objF;
            }
        } else {
            z10 = false;
        }
        if (z10) {
            return Unit.f64096a;
        }
        throw new AbortFlowException(flowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$1);
    }
}
