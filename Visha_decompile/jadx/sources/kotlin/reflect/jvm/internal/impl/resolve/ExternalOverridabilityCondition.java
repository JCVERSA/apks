package kotlin.reflect.jvm.internal.impl.resolve;

import defpackage.qw0;
import kotlin.reflect.jvm.internal.impl.descriptors.a;

public interface ExternalOverridabilityCondition {

    public enum Contract {
        CONFLICTS_ONLY,
        SUCCESS_ONLY,
        BOTH
    }

    public enum Result {
        OVERRIDABLE,
        CONFLICT,
        INCOMPATIBLE,
        UNKNOWN
    }

    Result a(a aVar, a aVar2, qw0 qw0Var);

    Contract b();
}
