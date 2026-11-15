package defpackage;

import java.util.List;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;

public final class sw8 implements ed3 {
    public static final sw8 b = new sw8();

    @Override
    public void a(CallableMemberDescriptor callableMemberDescriptor) {
        y45.j(callableMemberDescriptor, "descriptor");
        throw new IllegalStateException("Cannot infer visibility for " + callableMemberDescriptor);
    }

    @Override
    public void b(qw0 qw0Var, List list) {
        y45.j(qw0Var, "descriptor");
        y45.j(list, "unresolvedSuperClasses");
        throw new IllegalStateException("Incomplete hierarchy for class " + qw0Var.getName() + ", unresolved classes " + list);
    }
}
