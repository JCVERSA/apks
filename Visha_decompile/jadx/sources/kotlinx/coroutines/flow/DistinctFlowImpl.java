package kotlinx.coroutines.flow;

import defpackage.e74;
import defpackage.h37;
import defpackage.nz3;
import defpackage.oz3;
import defpackage.s74;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import kotlin.c;
import kotlin.jvm.internal.Ref$ObjectRef;

public final class DistinctFlowImpl implements nz3 {
    public final nz3 b;
    public final e74 c;
    public final s74 d;

    public static final class AnonymousClass2 implements oz3 {
        public final Ref$ObjectRef c;
        public final oz3 d;

        public AnonymousClass2(Ref$ObjectRef ref$ObjectRef, oz3 oz3Var) {
            this.c = ref$ObjectRef;
            this.d = oz3Var;
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r7v4, types: [T, java.lang.Object] */
        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        @Override
        public final Object emit(Object obj, wh1 wh1Var) {
            DistinctFlowImpl$collect$2$emit$1 distinctFlowImpl$collect$2$emit$1;
            if (wh1Var instanceof DistinctFlowImpl$collect$2$emit$1) {
                distinctFlowImpl$collect$2$emit$1 = (DistinctFlowImpl$collect$2$emit$1) wh1Var;
                int i = distinctFlowImpl$collect$2$emit$1.label;
                if ((i & Integer.MIN_VALUE) != 0) {
                    distinctFlowImpl$collect$2$emit$1.label = i - Integer.MIN_VALUE;
                } else {
                    distinctFlowImpl$collect$2$emit$1 = new DistinctFlowImpl$collect$2$emit$1(this, wh1Var);
                }
            } else {
                distinctFlowImpl$collect$2$emit$1 = new DistinctFlowImpl$collect$2$emit$1(this, wh1Var);
            }
            Object obj2 = distinctFlowImpl$collect$2$emit$1.result;
            Object objF = z45.f();
            int i2 = distinctFlowImpl$collect$2$emit$1.label;
            if (i2 == 0) {
                c.b(obj2);
                ?? Invoke = DistinctFlowImpl.this.c.invoke(obj);
                T t = this.c.element;
                if (t != h37.a && ((Boolean) DistinctFlowImpl.this.d.invoke(t, Invoke)).booleanValue()) {
                    return zfb.a;
                }
                this.c.element = Invoke;
                oz3 oz3Var = this.d;
                distinctFlowImpl$collect$2$emit$1.label = 1;
                if (oz3Var.emit(obj, distinctFlowImpl$collect$2$emit$1) == objF) {
                    return objF;
                }
            } else {
                if (i2 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                c.b(obj2);
            }
            return zfb.a;
        }
    }

    public DistinctFlowImpl(nz3 nz3Var, e74 e74Var, s74 s74Var) {
        this.b = nz3Var;
        this.c = e74Var;
        this.d = s74Var;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [T, y7a] */
    @Override
    public Object collect(oz3 oz3Var, wh1 wh1Var) {
        Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        ref$ObjectRef.element = h37.a;
        Object objCollect = this.b.collect(new AnonymousClass2(ref$ObjectRef, oz3Var), wh1Var);
        return objCollect == z45.f() ? objCollect : zfb.a;
    }
}
