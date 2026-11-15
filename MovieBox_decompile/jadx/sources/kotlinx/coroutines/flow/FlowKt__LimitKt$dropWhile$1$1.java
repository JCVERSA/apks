package kotlinx.coroutines.flow;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;

final class FlowKt__LimitKt$dropWhile$1$1 implements b {

    final Ref.BooleanRef f64767a;

    final b f64768b;

    final Function2 f64769c;

    FlowKt__LimitKt$dropWhile$1$1(Ref.BooleanRef booleanRef, b bVar, Function2 function2) {
        this.f64767a = booleanRef;
        this.f64768b = bVar;
        this.f64769c = function2;
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0074  */
    /* JADX WARN: Code duplicated, block: B:33:0x0087 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:36:0x008b  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override
    public final Object emit(Object obj, Continuation continuation) {
        FlowKt__LimitKt$dropWhile$1$1$emit$1 flowKt__LimitKt$dropWhile$1$1$emit$1;
        FlowKt__LimitKt$dropWhile$1$1 flowKt__LimitKt$dropWhile$1$1;
        b bVar;
        if (continuation instanceof FlowKt__LimitKt$dropWhile$1$1$emit$1) {
            flowKt__LimitKt$dropWhile$1$1$emit$1 = (FlowKt__LimitKt$dropWhile$1$1$emit$1) continuation;
            int i10 = flowKt__LimitKt$dropWhile$1$1$emit$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                flowKt__LimitKt$dropWhile$1$1$emit$1.label = i10 - Integer.MIN_VALUE;
            } else {
                flowKt__LimitKt$dropWhile$1$1$emit$1 = new FlowKt__LimitKt$dropWhile$1$1$emit$1(this, continuation);
            }
        } else {
            flowKt__LimitKt$dropWhile$1$1$emit$1 = new FlowKt__LimitKt$dropWhile$1$1$emit$1(this, continuation);
        }
        Object objInvoke = flowKt__LimitKt$dropWhile$1$1$emit$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = flowKt__LimitKt$dropWhile$1$1$emit$1.label;
        if (i11 == 0) {
            ResultKt.b(objInvoke);
            if (this.f64767a.element) {
                b bVar2 = this.f64768b;
                flowKt__LimitKt$dropWhile$1$1$emit$1.label = 1;
                if (bVar2.emit(obj, flowKt__LimitKt$dropWhile$1$1$emit$1) == objF) {
                    return objF;
                }
                return Unit.f64096a;
            }
            Function2 function2 = this.f64769c;
            flowKt__LimitKt$dropWhile$1$1$emit$1.L$0 = this;
            flowKt__LimitKt$dropWhile$1$1$emit$1.L$1 = obj;
            flowKt__LimitKt$dropWhile$1$1$emit$1.label = 2;
            objInvoke = function2.invoke(obj, flowKt__LimitKt$dropWhile$1$1$emit$1);
            if (objInvoke == objF) {
                return objF;
            }
            flowKt__LimitKt$dropWhile$1$1 = this;
            if (!((Boolean) objInvoke).booleanValue()) {
                return Unit.f64096a;
            }
            flowKt__LimitKt$dropWhile$1$1.f64767a.element = true;
            bVar = flowKt__LimitKt$dropWhile$1$1.f64768b;
            flowKt__LimitKt$dropWhile$1$1$emit$1.L$0 = null;
            flowKt__LimitKt$dropWhile$1$1$emit$1.L$1 = null;
            flowKt__LimitKt$dropWhile$1$1$emit$1.label = 3;
            if (bVar.emit(obj, flowKt__LimitKt$dropWhile$1$1$emit$1) == objF) {
                return objF;
            }
        } else {
            if (i11 == 1) {
                ResultKt.b(objInvoke);
                return Unit.f64096a;
            }
            if (i11 == 2) {
                obj = flowKt__LimitKt$dropWhile$1$1$emit$1.L$1;
                flowKt__LimitKt$dropWhile$1$1 = (FlowKt__LimitKt$dropWhile$1$1) flowKt__LimitKt$dropWhile$1$1$emit$1.L$0;
                ResultKt.b(objInvoke);
                if (!((Boolean) objInvoke).booleanValue()) {
                    return Unit.f64096a;
                }
                flowKt__LimitKt$dropWhile$1$1.f64767a.element = true;
                bVar = flowKt__LimitKt$dropWhile$1$1.f64768b;
                flowKt__LimitKt$dropWhile$1$1$emit$1.L$0 = null;
                flowKt__LimitKt$dropWhile$1$1$emit$1.L$1 = null;
                flowKt__LimitKt$dropWhile$1$1$emit$1.label = 3;
                if (bVar.emit(obj, flowKt__LimitKt$dropWhile$1$1$emit$1) == objF) {
                    return objF;
                }
            } else {
                if (i11 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(objInvoke);
            }
        }
        return Unit.f64096a;
    }
}
