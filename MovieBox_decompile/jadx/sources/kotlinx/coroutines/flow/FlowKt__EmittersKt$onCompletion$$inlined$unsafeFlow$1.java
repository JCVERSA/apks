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
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.InlineMarker;
import kotlinx.coroutines.flow.internal.SafeCollector;

public final class FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1 implements a {

    final a f64753a;

    final Function3 f64754b;

    @Metadata(k = 3, mv = {2, 0, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1", f = "Emitters.kt", l = {110, Sdk$SDKError.Reason.ASSET_FAILED_STATUS_CODE_VALUE, Sdk$SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE}, m = "collect")
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
            return FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1.this.a(null, this);
        }
    }

    public FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1(a aVar, Function3 function3) {
        this.f64753a = aVar;
        this.f64754b = function3;
    }

    /* JADX WARN: Code duplicated, block: B:34:0x0086 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:35:0x0087  */
    /* JADX WARN: Code duplicated, block: B:46:0x00ab A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:56:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override
    public Object a(b bVar, Continuation continuation) throws Throwable {
        AnonymousClass1 anonymousClass1;
        FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1 flowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1;
        k1 k1Var;
        Function3 function3;
        SafeCollector safeCollector;
        Throwable th2;
        SafeCollector safeCollector2;
        Object objInvoke;
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
            try {
                a aVar = this.f64753a;
                anonymousClass1.L$0 = this;
                anonymousClass1.L$1 = bVar;
                anonymousClass1.label = 1;
                if (aVar.a(bVar, anonymousClass1) == objF) {
                    return objF;
                }
                flowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1 = this;
                safeCollector = new SafeCollector(bVar, anonymousClass1.getContext());
                Function3 function4 = flowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1.f64754b;
                anonymousClass1.L$0 = safeCollector;
                anonymousClass1.L$1 = null;
                anonymousClass1.label = 3;
                InlineMarker.c(6);
                objInvoke = function4.invoke(safeCollector, null, anonymousClass1);
                InlineMarker.c(7);
                if (objInvoke == objF) {
                    return objF;
                }
                safeCollector2 = safeCollector;
                safeCollector2.releaseIntercepted();
                return Unit.f64096a;
            } catch (Throwable th3) {
                th = th3;
                flowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1 = this;
                k1Var = new k1(th);
                function3 = flowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1.f64754b;
                anonymousClass1.L$0 = th;
                anonymousClass1.L$1 = null;
                anonymousClass1.label = 2;
                if (FlowKt__EmittersKt.c(k1Var, function3, th, anonymousClass1) == objF) {
                    return objF;
                }
                throw th;
            }
        }
        if (i11 != 1) {
            if (i11 == 2) {
                Throwable th4 = (Throwable) anonymousClass1.L$0;
                ResultKt.b(obj);
                throw th4;
            }
            if (i11 != 3) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            safeCollector2 = (SafeCollector) anonymousClass1.L$0;
            try {
                ResultKt.b(obj);
                safeCollector2.releaseIntercepted();
                return Unit.f64096a;
            } catch (Throwable th5) {
                th2 = th5;
                safeCollector2.releaseIntercepted();
                throw th2;
            }
        }
        bVar = (b) anonymousClass1.L$1;
        flowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1 = (FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1) anonymousClass1.L$0;
        try {
            ResultKt.b(obj);
            safeCollector = new SafeCollector(bVar, anonymousClass1.getContext());
            try {
                Function3 function5 = flowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1.f64754b;
                anonymousClass1.L$0 = safeCollector;
                anonymousClass1.L$1 = null;
                anonymousClass1.label = 3;
                InlineMarker.c(6);
                objInvoke = function5.invoke(safeCollector, null, anonymousClass1);
                InlineMarker.c(7);
                if (objInvoke == objF) {
                    return objF;
                }
                safeCollector2 = safeCollector;
                safeCollector2.releaseIntercepted();
                return Unit.f64096a;
            } catch (Throwable th6) {
                th2 = th6;
                safeCollector2 = safeCollector;
                safeCollector2.releaseIntercepted();
                throw th2;
            }
        } catch (Throwable th7) {
            th = th7;
            k1Var = new k1(th);
            function3 = flowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1.f64754b;
            anonymousClass1.L$0 = th;
            anonymousClass1.L$1 = null;
            anonymousClass1.label = 2;
            if (FlowKt__EmittersKt.c(k1Var, function3, th, anonymousClass1) == objF) {
                return objF;
            }
            throw th;
        }
    }
}
