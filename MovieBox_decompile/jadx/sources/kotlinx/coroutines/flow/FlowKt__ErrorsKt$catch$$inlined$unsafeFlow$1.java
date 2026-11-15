package kotlinx.coroutines.flow;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.InlineMarker;

public final class FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1 implements a {

    final a f64759a;

    final Function3 f64760b;

    @Metadata(k = 3, mv = {2, 0, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1", f = "Errors.kt", l = {109, 110}, m = "collect")
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
            return FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1.this.a(null, this);
        }
    }

    public FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1(a aVar, Function3 function3) {
        this.f64759a = aVar;
        this.f64760b = function3;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override
    public Object a(b bVar, Continuation continuation) {
        AnonymousClass1 anonymousClass1;
        FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1 flowKt__ErrorsKt$catch$$inlined$unsafeFlow$1;
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
        Object objF = anonymousClass1.result;
        Object objF2 = IntrinsicsKt.f();
        int i11 = anonymousClass1.label;
        if (i11 != 0) {
            if (i11 == 1) {
                bVar = (b) anonymousClass1.L$1;
                flowKt__ErrorsKt$catch$$inlined$unsafeFlow$1 = (FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1) anonymousClass1.L$0;
                ResultKt.b(objF);
            } else {
                if (i11 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(objF);
            }
            return Unit.f64096a;
        }
        ResultKt.b(objF);
        a aVar = this.f64759a;
        anonymousClass1.L$0 = this;
        anonymousClass1.L$1 = bVar;
        anonymousClass1.label = 1;
        objF = c.f(aVar, bVar, anonymousClass1);
        if (objF == objF2) {
            return objF2;
        }
        flowKt__ErrorsKt$catch$$inlined$unsafeFlow$1 = this;
        Throwable th2 = (Throwable) objF;
        if (th2 != null) {
            Function3 function3 = flowKt__ErrorsKt$catch$$inlined$unsafeFlow$1.f64760b;
            anonymousClass1.L$0 = null;
            anonymousClass1.L$1 = null;
            anonymousClass1.label = 2;
            InlineMarker.c(6);
            Object objInvoke = function3.invoke(bVar, th2, anonymousClass1);
            InlineMarker.c(7);
            if (objInvoke == objF2) {
                return objF2;
            }
        }
        return Unit.f64096a;
    }
}
