package kotlinx.coroutines.flow;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.internal.AbortFlowException;

public final class FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1 implements a {

    final a f64770a;

    final Function2 f64771b;

    @Metadata(k = 3, mv = {2, 0, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1", f = "Limit.kt", l = {120}, m = "collect")
    public static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        int label;
        Object result;

        public AnonymousClass1(Continuation continuation) {
            super(continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1.this.a(null, this);
        }
    }

    public FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1(a aVar, Function2 function2) {
        this.f64770a = aVar;
        this.f64771b = function2;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override
    public Object a(b bVar, Continuation continuation) {
        AnonymousClass1 anonymousClass1;
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
        Object obj = anonymousClass1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = anonymousClass1.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            a aVar = this.f64770a;
            FlowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$1 flowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$2 = new FlowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$1(this.f64771b, bVar);
            try {
                anonymousClass1.L$0 = flowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$2;
                anonymousClass1.label = 1;
                if (aVar.a(flowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$2, anonymousClass1) == objF) {
                    return objF;
                }
            } catch (AbortFlowException e10) {
                e = e10;
                flowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$1 = flowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$2;
                kotlinx.coroutines.flow.internal.i.a(e, flowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$1);
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            flowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$1 = (FlowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$1) anonymousClass1.L$0;
            try {
                ResultKt.b(obj);
            } catch (AbortFlowException e11) {
                e = e11;
                kotlinx.coroutines.flow.internal.i.a(e, flowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$1);
            }
        }
        return Unit.f64096a;
    }
}
