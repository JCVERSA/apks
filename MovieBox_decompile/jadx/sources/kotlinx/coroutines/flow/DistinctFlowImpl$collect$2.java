package kotlinx.coroutines.flow;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.Ref;

final class DistinctFlowImpl$collect$2 implements b {

    final DistinctFlowImpl f64750a;

    final Ref.ObjectRef f64751b;

    final b f64752c;

    DistinctFlowImpl$collect$2(DistinctFlowImpl distinctFlowImpl, Ref.ObjectRef objectRef, b bVar) {
        this.f64750a = distinctFlowImpl;
        this.f64751b = objectRef;
        this.f64752c = bVar;
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
    public final Object emit(Object obj, Continuation continuation) {
        DistinctFlowImpl$collect$2$emit$1 distinctFlowImpl$collect$2$emit$1;
        if (continuation instanceof DistinctFlowImpl$collect$2$emit$1) {
            distinctFlowImpl$collect$2$emit$1 = (DistinctFlowImpl$collect$2$emit$1) continuation;
            int i10 = distinctFlowImpl$collect$2$emit$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                distinctFlowImpl$collect$2$emit$1.label = i10 - Integer.MIN_VALUE;
            } else {
                distinctFlowImpl$collect$2$emit$1 = new DistinctFlowImpl$collect$2$emit$1(this, continuation);
            }
        } else {
            distinctFlowImpl$collect$2$emit$1 = new DistinctFlowImpl$collect$2$emit$1(this, continuation);
        }
        Object obj2 = distinctFlowImpl$collect$2$emit$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = distinctFlowImpl$collect$2$emit$1.label;
        if (i11 == 0) {
            ResultKt.b(obj2);
            ?? Invoke = this.f64750a.f64748b.invoke(obj);
            T t10 = this.f64751b.element;
            if (t10 != kotlinx.coroutines.flow.internal.m.f64844a && ((Boolean) this.f64750a.f64749c.invoke(t10, Invoke)).booleanValue()) {
                return Unit.f64096a;
            }
            this.f64751b.element = Invoke;
            b bVar = this.f64752c;
            distinctFlowImpl$collect$2$emit$1.label = 1;
            if (bVar.emit(obj, distinctFlowImpl$collect$2$emit$1) == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj2);
        }
        return Unit.f64096a;
    }
}
