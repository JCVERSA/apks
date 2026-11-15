package kotlinx.coroutines.flow;

import java.util.NoSuchElementException;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.flow.internal.AbortFlowException;

abstract class FlowKt__ReduceKt {

    public static final class a implements kotlinx.coroutines.flow.b {

        final Ref.ObjectRef f64775a;

        public a(Ref.ObjectRef objectRef) {
            this.f64775a = objectRef;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public Object emit(Object obj, Continuation continuation) {
            this.f64775a.element = obj;
            throw new AbortFlowException(this);
        }
    }

    public static final class b implements kotlinx.coroutines.flow.b {

        final Ref.ObjectRef f64776a;

        public b(Ref.ObjectRef objectRef) {
            this.f64776a = objectRef;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public Object emit(Object obj, Continuation continuation) {
            this.f64776a.element = obj;
            throw new AbortFlowException(this);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r2v1, types: [T, kotlinx.coroutines.internal.z] */
    public static final Object a(kotlinx.coroutines.flow.a aVar, Continuation continuation) {
        FlowKt__ReduceKt$first$1 flowKt__ReduceKt$first$1;
        Ref.ObjectRef objectRef;
        AbortFlowException e10;
        kotlinx.coroutines.flow.b bVar;
        if (continuation instanceof FlowKt__ReduceKt$first$1) {
            flowKt__ReduceKt$first$1 = (FlowKt__ReduceKt$first$1) continuation;
            int i10 = flowKt__ReduceKt$first$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                flowKt__ReduceKt$first$1.label = i10 - Integer.MIN_VALUE;
            } else {
                flowKt__ReduceKt$first$1 = new FlowKt__ReduceKt$first$1(continuation);
            }
        } else {
            flowKt__ReduceKt$first$1 = new FlowKt__ReduceKt$first$1(continuation);
        }
        Object obj = flowKt__ReduceKt$first$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = flowKt__ReduceKt$first$1.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
            objectRef2.element = kotlinx.coroutines.flow.internal.m.f64844a;
            kotlinx.coroutines.flow.b aVar2 = new a(objectRef2);
            try {
                flowKt__ReduceKt$first$1.L$0 = objectRef2;
                flowKt__ReduceKt$first$1.L$1 = aVar2;
                flowKt__ReduceKt$first$1.label = 1;
                if (aVar.a(aVar2, flowKt__ReduceKt$first$1) == objF) {
                    return objF;
                }
                objectRef = objectRef2;
            } catch (AbortFlowException e11) {
                objectRef = objectRef2;
                e10 = e11;
                bVar = aVar2;
                kotlinx.coroutines.flow.internal.i.a(e10, bVar);
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            bVar = (a) flowKt__ReduceKt$first$1.L$1;
            objectRef = (Ref.ObjectRef) flowKt__ReduceKt$first$1.L$0;
            try {
                ResultKt.b(obj);
            } catch (AbortFlowException e12) {
                e10 = e12;
                kotlinx.coroutines.flow.internal.i.a(e10, bVar);
            }
        }
        T t10 = objectRef.element;
        if (t10 != kotlinx.coroutines.flow.internal.m.f64844a) {
            return t10;
        }
        throw new NoSuchElementException("Expected at least one element");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r2v1, types: [T, kotlinx.coroutines.internal.z] */
    public static final Object b(kotlinx.coroutines.flow.a aVar, Function2 function2, Continuation continuation) {
        FlowKt__ReduceKt$first$3 flowKt__ReduceKt$first$3;
        Function2 function3;
        Ref.ObjectRef objectRef;
        AbortFlowException e10;
        kotlinx.coroutines.flow.b bVar;
        if (continuation instanceof FlowKt__ReduceKt$first$3) {
            flowKt__ReduceKt$first$3 = (FlowKt__ReduceKt$first$3) continuation;
            int i10 = flowKt__ReduceKt$first$3.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                flowKt__ReduceKt$first$3.label = i10 - Integer.MIN_VALUE;
            } else {
                flowKt__ReduceKt$first$3 = new FlowKt__ReduceKt$first$3(continuation);
            }
        } else {
            flowKt__ReduceKt$first$3 = new FlowKt__ReduceKt$first$3(continuation);
        }
        Object obj = flowKt__ReduceKt$first$3.result;
        Object objF = IntrinsicsKt.f();
        int i11 = flowKt__ReduceKt$first$3.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
            objectRef2.element = kotlinx.coroutines.flow.internal.m.f64844a;
            kotlinx.coroutines.flow.b flowKt__ReduceKt$first$$inlined$collectWhile$2 = new FlowKt__ReduceKt$first$$inlined$collectWhile$2(function2, objectRef2);
            try {
                flowKt__ReduceKt$first$3.L$0 = function2;
                flowKt__ReduceKt$first$3.L$1 = objectRef2;
                flowKt__ReduceKt$first$3.L$2 = flowKt__ReduceKt$first$$inlined$collectWhile$2;
                flowKt__ReduceKt$first$3.label = 1;
                if (aVar.a(flowKt__ReduceKt$first$$inlined$collectWhile$2, flowKt__ReduceKt$first$3) == objF) {
                    return objF;
                }
                function3 = function2;
                objectRef = objectRef2;
            } catch (AbortFlowException e11) {
                function3 = function2;
                objectRef = objectRef2;
                e10 = e11;
                bVar = flowKt__ReduceKt$first$$inlined$collectWhile$2;
                kotlinx.coroutines.flow.internal.i.a(e10, bVar);
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            bVar = (FlowKt__ReduceKt$first$$inlined$collectWhile$2) flowKt__ReduceKt$first$3.L$2;
            objectRef = (Ref.ObjectRef) flowKt__ReduceKt$first$3.L$1;
            function3 = (Function2) flowKt__ReduceKt$first$3.L$0;
            try {
                ResultKt.b(obj);
            } catch (AbortFlowException e12) {
                e10 = e12;
                kotlinx.coroutines.flow.internal.i.a(e10, bVar);
            }
        }
        T t10 = objectRef.element;
        if (t10 != kotlinx.coroutines.flow.internal.m.f64844a) {
            return t10;
        }
        throw new NoSuchElementException("Expected at least one element matching the predicate " + function3);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object c(kotlinx.coroutines.flow.a aVar, Continuation continuation) {
        FlowKt__ReduceKt$firstOrNull$1 flowKt__ReduceKt$firstOrNull$1;
        Ref.ObjectRef objectRef;
        AbortFlowException e10;
        kotlinx.coroutines.flow.b bVar;
        if (continuation instanceof FlowKt__ReduceKt$firstOrNull$1) {
            flowKt__ReduceKt$firstOrNull$1 = (FlowKt__ReduceKt$firstOrNull$1) continuation;
            int i10 = flowKt__ReduceKt$firstOrNull$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                flowKt__ReduceKt$firstOrNull$1.label = i10 - Integer.MIN_VALUE;
            } else {
                flowKt__ReduceKt$firstOrNull$1 = new FlowKt__ReduceKt$firstOrNull$1(continuation);
            }
        } else {
            flowKt__ReduceKt$firstOrNull$1 = new FlowKt__ReduceKt$firstOrNull$1(continuation);
        }
        Object obj = flowKt__ReduceKt$firstOrNull$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = flowKt__ReduceKt$firstOrNull$1.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
            kotlinx.coroutines.flow.b bVar2 = new b(objectRef2);
            try {
                flowKt__ReduceKt$firstOrNull$1.L$0 = objectRef2;
                flowKt__ReduceKt$firstOrNull$1.L$1 = bVar2;
                flowKt__ReduceKt$firstOrNull$1.label = 1;
                if (aVar.a(bVar2, flowKt__ReduceKt$firstOrNull$1) == objF) {
                    return objF;
                }
                objectRef = objectRef2;
            } catch (AbortFlowException e11) {
                objectRef = objectRef2;
                e10 = e11;
                bVar = bVar2;
                kotlinx.coroutines.flow.internal.i.a(e10, bVar);
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            bVar = (b) flowKt__ReduceKt$firstOrNull$1.L$1;
            objectRef = (Ref.ObjectRef) flowKt__ReduceKt$firstOrNull$1.L$0;
            try {
                ResultKt.b(obj);
            } catch (AbortFlowException e12) {
                e10 = e12;
                kotlinx.coroutines.flow.internal.i.a(e10, bVar);
            }
        }
        return objectRef.element;
    }
}
