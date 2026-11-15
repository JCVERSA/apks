package defpackage;

import kotlin.reflect.jvm.internal.impl.descriptors.a;
import kotlin.reflect.jvm.internal.impl.resolve.ExternalOverridabilityCondition;

public final class bq3 implements ExternalOverridabilityCondition {
    @Override
    public ExternalOverridabilityCondition.Result a(a aVar, a aVar2, qw0 qw0Var) {
        y45.j(aVar, "superDescriptor");
        y45.j(aVar2, "subDescriptor");
        if (!(aVar2 instanceof ti8) || !(aVar instanceof ti8)) {
            return ExternalOverridabilityCondition.Result.UNKNOWN;
        }
        ti8 ti8Var = (ti8) aVar2;
        ti8 ti8Var2 = (ti8) aVar;
        if (!y45.e(ti8Var.getName(), ti8Var2.getName())) {
            return ExternalOverridabilityCondition.Result.UNKNOWN;
        }
        if (i75.a(ti8Var) && i75.a(ti8Var2)) {
            return ExternalOverridabilityCondition.Result.OVERRIDABLE;
        }
        return (i75.a(ti8Var) || i75.a(ti8Var2)) ? ExternalOverridabilityCondition.Result.INCOMPATIBLE : ExternalOverridabilityCondition.Result.UNKNOWN;
    }

    @Override
    public ExternalOverridabilityCondition.Contract b() {
        return ExternalOverridabilityCondition.Contract.BOTH;
    }
}
