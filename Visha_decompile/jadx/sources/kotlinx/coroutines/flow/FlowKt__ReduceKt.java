package kotlinx.coroutines.flow;

import defpackage.h37;
import defpackage.nz3;
import defpackage.oz3;
import defpackage.rz3;
import defpackage.s74;
import defpackage.wh1;
import defpackage.z45;
import java.util.NoSuchElementException;
import kotlin.c;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.flow.internal.AbortFlowException;

public abstract class FlowKt__ReduceKt {

    public static final class a implements oz3 {
        public final Ref$ObjectRef b;

        public a(Ref$ObjectRef ref$ObjectRef) {
            this.b = ref$ObjectRef;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public Object emit(Object obj, wh1 wh1Var) {
            this.b.element = obj;
            throw new AbortFlowException(this);
        }
    }

    public static final class b implements oz3 {
        public final Ref$ObjectRef b;

        public b(Ref$ObjectRef ref$ObjectRef) {
            this.b = ref$ObjectRef;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public Object emit(Object obj, wh1 wh1Var) {
            this.b.element = obj;
            throw new AbortFlowException(this);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r2v1, types: [T, y7a] */
    public static final Object a(nz3 nz3Var, wh1 wh1Var) {
        FlowKt__ReduceKt$first$1 flowKt__ReduceKt$first$1;
        Ref$ObjectRef ref$ObjectRef;
        AbortFlowException e;
        oz3 oz3Var;
        if (wh1Var instanceof FlowKt__ReduceKt$first$1) {
            flowKt__ReduceKt$first$1 = (FlowKt__ReduceKt$first$1) wh1Var;
            int i = flowKt__ReduceKt$first$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                flowKt__ReduceKt$first$1.label = i - Integer.MIN_VALUE;
            } else {
                flowKt__ReduceKt$first$1 = new FlowKt__ReduceKt$first$1(wh1Var);
            }
        } else {
            flowKt__ReduceKt$first$1 = new FlowKt__ReduceKt$first$1(wh1Var);
        }
        Object obj = flowKt__ReduceKt$first$1.result;
        Object objF = z45.f();
        int i2 = flowKt__ReduceKt$first$1.label;
        if (i2 == 0) {
            c.b(obj);
            Ref$ObjectRef ref$ObjectRef2 = new Ref$ObjectRef();
            ref$ObjectRef2.element = h37.a;
            oz3 aVar = new a(ref$ObjectRef2);
            try {
                flowKt__ReduceKt$first$1.L$0 = ref$ObjectRef2;
                flowKt__ReduceKt$first$1.L$1 = aVar;
                flowKt__ReduceKt$first$1.label = 1;
                if (nz3Var.collect(aVar, flowKt__ReduceKt$first$1) == objF) {
                    return objF;
                }
                ref$ObjectRef = ref$ObjectRef2;
            } catch (AbortFlowException e2) {
                ref$ObjectRef = ref$ObjectRef2;
                e = e2;
                oz3Var = aVar;
                rz3.a(e, oz3Var);
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            oz3Var = (a) flowKt__ReduceKt$first$1.L$1;
            ref$ObjectRef = (Ref$ObjectRef) flowKt__ReduceKt$first$1.L$0;
            try {
                c.b(obj);
            } catch (AbortFlowException e3) {
                e = e3;
                rz3.a(e, oz3Var);
            }
        }
        T t = ref$ObjectRef.element;
        if (t != h37.a) {
            return t;
        }
        throw new NoSuchElementException("Expected at least one element");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r2v1, types: [T, y7a] */
    public static final Object b(nz3 nz3Var, s74 s74Var, wh1 wh1Var) {
        FlowKt__ReduceKt$first$3 flowKt__ReduceKt$first$3;
        s74 s74Var2;
        Ref$ObjectRef ref$ObjectRef;
        AbortFlowException e;
        oz3 oz3Var;
        if (wh1Var instanceof FlowKt__ReduceKt$first$3) {
            flowKt__ReduceKt$first$3 = (FlowKt__ReduceKt$first$3) wh1Var;
            int i = flowKt__ReduceKt$first$3.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                flowKt__ReduceKt$first$3.label = i - Integer.MIN_VALUE;
            } else {
                flowKt__ReduceKt$first$3 = new FlowKt__ReduceKt$first$3(wh1Var);
            }
        } else {
            flowKt__ReduceKt$first$3 = new FlowKt__ReduceKt$first$3(wh1Var);
        }
        Object obj = flowKt__ReduceKt$first$3.result;
        Object objF = z45.f();
        int i2 = flowKt__ReduceKt$first$3.label;
        if (i2 == 0) {
            c.b(obj);
            Ref$ObjectRef ref$ObjectRef2 = new Ref$ObjectRef();
            ref$ObjectRef2.element = h37.a;
            oz3 flowKt__ReduceKt$first$$inlined$collectWhile$2 = new FlowKt__ReduceKt$first$$inlined$collectWhile$2(s74Var, ref$ObjectRef2);
            try {
                flowKt__ReduceKt$first$3.L$0 = s74Var;
                flowKt__ReduceKt$first$3.L$1 = ref$ObjectRef2;
                flowKt__ReduceKt$first$3.L$2 = flowKt__ReduceKt$first$$inlined$collectWhile$2;
                flowKt__ReduceKt$first$3.label = 1;
                if (nz3Var.collect(flowKt__ReduceKt$first$$inlined$collectWhile$2, flowKt__ReduceKt$first$3) == objF) {
                    return objF;
                }
                s74Var2 = s74Var;
                ref$ObjectRef = ref$ObjectRef2;
            } catch (AbortFlowException e2) {
                s74Var2 = s74Var;
                ref$ObjectRef = ref$ObjectRef2;
                e = e2;
                oz3Var = flowKt__ReduceKt$first$$inlined$collectWhile$2;
                rz3.a(e, oz3Var);
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            oz3Var = (FlowKt__ReduceKt$first$$inlined$collectWhile$2) flowKt__ReduceKt$first$3.L$2;
            ref$ObjectRef = (Ref$ObjectRef) flowKt__ReduceKt$first$3.L$1;
            s74Var2 = (s74) flowKt__ReduceKt$first$3.L$0;
            try {
                c.b(obj);
            } catch (AbortFlowException e3) {
                e = e3;
                rz3.a(e, oz3Var);
            }
        }
        T t = ref$ObjectRef.element;
        if (t != h37.a) {
            return t;
        }
        throw new NoSuchElementException("Expected at least one element matching the predicate " + s74Var2);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object c(nz3 nz3Var, wh1 wh1Var) {
        FlowKt__ReduceKt$firstOrNull$1 flowKt__ReduceKt$firstOrNull$1;
        Ref$ObjectRef ref$ObjectRef;
        AbortFlowException e;
        oz3 oz3Var;
        if (wh1Var instanceof FlowKt__ReduceKt$firstOrNull$1) {
            flowKt__ReduceKt$firstOrNull$1 = (FlowKt__ReduceKt$firstOrNull$1) wh1Var;
            int i = flowKt__ReduceKt$firstOrNull$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                flowKt__ReduceKt$firstOrNull$1.label = i - Integer.MIN_VALUE;
            } else {
                flowKt__ReduceKt$firstOrNull$1 = new FlowKt__ReduceKt$firstOrNull$1(wh1Var);
            }
        } else {
            flowKt__ReduceKt$firstOrNull$1 = new FlowKt__ReduceKt$firstOrNull$1(wh1Var);
        }
        Object obj = flowKt__ReduceKt$firstOrNull$1.result;
        Object objF = z45.f();
        int i2 = flowKt__ReduceKt$firstOrNull$1.label;
        if (i2 == 0) {
            c.b(obj);
            Ref$ObjectRef ref$ObjectRef2 = new Ref$ObjectRef();
            oz3 bVar = new b(ref$ObjectRef2);
            try {
                flowKt__ReduceKt$firstOrNull$1.L$0 = ref$ObjectRef2;
                flowKt__ReduceKt$firstOrNull$1.L$1 = bVar;
                flowKt__ReduceKt$firstOrNull$1.label = 1;
                if (nz3Var.collect(bVar, flowKt__ReduceKt$firstOrNull$1) == objF) {
                    return objF;
                }
                ref$ObjectRef = ref$ObjectRef2;
            } catch (AbortFlowException e2) {
                ref$ObjectRef = ref$ObjectRef2;
                e = e2;
                oz3Var = bVar;
                rz3.a(e, oz3Var);
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            oz3Var = (b) flowKt__ReduceKt$firstOrNull$1.L$1;
            ref$ObjectRef = (Ref$ObjectRef) flowKt__ReduceKt$firstOrNull$1.L$0;
            try {
                c.b(obj);
            } catch (AbortFlowException e3) {
                e = e3;
                rz3.a(e, oz3Var);
            }
        }
        return ref$ObjectRef.element;
    }
}
