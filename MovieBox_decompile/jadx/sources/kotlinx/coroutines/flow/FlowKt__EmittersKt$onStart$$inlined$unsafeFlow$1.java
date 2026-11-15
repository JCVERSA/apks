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
import kotlinx.coroutines.flow.internal.SafeCollector;

public final class FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1 implements a {

    final Function2 f64755a;

    final a f64756b;

    @Metadata(k = 3, mv = {2, 0, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1", f = "Emitters.kt", l = {112, Sdk$SDKError.Reason.GZIP_ENCODE_ERROR_VALUE}, m = "collect")
    public static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        Object result;

        public AnonymousClass1(Continuation continuation) {
            super(continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1.this.a(null, this);
        }
    }

    public FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1(Function2 function2, a aVar) {
        this.f64755a = function2;
        this.f64756b = aVar;
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0082 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override
    public Object a(b bVar, Continuation continuation) throws Throwable {
        AnonymousClass1 anonymousClass1;
        Throwable th2;
        SafeCollector safeCollector;
        FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1 flowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;
        b bVar2;
        a aVar;
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
            SafeCollector safeCollector2 = new SafeCollector(bVar, anonymousClass1.getContext());
            try {
                Function2 function2 = this.f64755a;
                anonymousClass1.L$0 = this;
                anonymousClass1.L$1 = bVar;
                anonymousClass1.L$2 = safeCollector2;
                anonymousClass1.label = 1;
                InlineMarker.c(6);
                Object objInvoke = function2.invoke(safeCollector2, anonymousClass1);
                InlineMarker.c(7);
                if (objInvoke == objF) {
                    return objF;
                }
                flowKt__EmittersKt$onStart$$inlined$unsafeFlow$1 = this;
                bVar2 = bVar;
                safeCollector = safeCollector2;
                safeCollector.releaseIntercepted();
                aVar = flowKt__EmittersKt$onStart$$inlined$unsafeFlow$1.f64756b;
                anonymousClass1.L$0 = null;
                anonymousClass1.L$1 = null;
                anonymousClass1.L$2 = null;
                anonymousClass1.label = 2;
                if (aVar.a(bVar2, anonymousClass1) == objF) {
                    return objF;
                }
            } catch (Throwable th3) {
                th2 = th3;
                safeCollector = safeCollector2;
                safeCollector.releaseIntercepted();
                throw th2;
            }
        } else if (i11 == 1) {
            safeCollector = (SafeCollector) anonymousClass1.L$2;
            bVar2 = (b) anonymousClass1.L$1;
            flowKt__EmittersKt$onStart$$inlined$unsafeFlow$1 = (FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1) anonymousClass1.L$0;
            try {
                ResultKt.b(obj);
                safeCollector.releaseIntercepted();
                aVar = flowKt__EmittersKt$onStart$$inlined$unsafeFlow$1.f64756b;
                anonymousClass1.L$0 = null;
                anonymousClass1.L$1 = null;
                anonymousClass1.L$2 = null;
                anonymousClass1.label = 2;
                if (aVar.a(bVar2, anonymousClass1) == objF) {
                    return objF;
                }
            } catch (Throwable th4) {
                th2 = th4;
                safeCollector.releaseIntercepted();
                throw th2;
            }
        } else {
            if (i11 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        return Unit.f64096a;
    }
}
