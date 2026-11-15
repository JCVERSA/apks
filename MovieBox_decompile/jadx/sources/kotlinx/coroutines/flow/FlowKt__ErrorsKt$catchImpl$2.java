package kotlinx.coroutines.flow;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.Ref;

final class FlowKt__ErrorsKt$catchImpl$2 implements b {

    final b f64761a;

    final Ref.ObjectRef f64762b;

    FlowKt__ErrorsKt$catchImpl$2(b bVar, Ref.ObjectRef objectRef) {
        this.f64761a = bVar;
        this.f64762b = objectRef;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r6v2, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r6v4, types: [T, java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r6v6, types: [java.lang.Throwable] */
    @Override
    public final Object emit(Object obj, Continuation continuation) {
        FlowKt__ErrorsKt$catchImpl$2$emit$1 flowKt__ErrorsKt$catchImpl$2$emit$1;
        FlowKt__ErrorsKt$catchImpl$2 flowKt__ErrorsKt$catchImpl$2;
        if (continuation instanceof FlowKt__ErrorsKt$catchImpl$2$emit$1) {
            flowKt__ErrorsKt$catchImpl$2$emit$1 = (FlowKt__ErrorsKt$catchImpl$2$emit$1) continuation;
            int i10 = flowKt__ErrorsKt$catchImpl$2$emit$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                flowKt__ErrorsKt$catchImpl$2$emit$1.label = i10 - Integer.MIN_VALUE;
            } else {
                flowKt__ErrorsKt$catchImpl$2$emit$1 = new FlowKt__ErrorsKt$catchImpl$2$emit$1(this, continuation);
            }
        } else {
            flowKt__ErrorsKt$catchImpl$2$emit$1 = new FlowKt__ErrorsKt$catchImpl$2$emit$1(this, continuation);
        }
        Object obj2 = flowKt__ErrorsKt$catchImpl$2$emit$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = flowKt__ErrorsKt$catchImpl$2$emit$1.label;
        if (i11 != 0) {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            flowKt__ErrorsKt$catchImpl$2 = (FlowKt__ErrorsKt$catchImpl$2) flowKt__ErrorsKt$catchImpl$2$emit$1.L$0;
            try {
                ResultKt.b(obj2);
                return Unit.f64096a;
            } catch (Throwable th2) {
                th = th2;
                flowKt__ErrorsKt$catchImpl$2.f64762b.element = th;
                throw th;
            }
        }
        ResultKt.b(obj2);
        try {
            b bVar = this.f64761a;
            flowKt__ErrorsKt$catchImpl$2$emit$1.L$0 = this;
            flowKt__ErrorsKt$catchImpl$2$emit$1.label = 1;
            if (bVar.emit(obj, flowKt__ErrorsKt$catchImpl$2$emit$1) == objF) {
                return objF;
            }
            return Unit.f64096a;
        } catch (Throwable th3) {
            th = th3;
            flowKt__ErrorsKt$catchImpl$2 = this;
            flowKt__ErrorsKt$catchImpl$2.f64762b.element = th;
            throw th;
        }
    }
}
