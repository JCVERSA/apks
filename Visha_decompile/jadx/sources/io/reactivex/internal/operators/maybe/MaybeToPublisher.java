package io.reactivex.internal.operators.maybe;

import defpackage.jk8;
import defpackage.l96;
import defpackage.t74;

public enum MaybeToPublisher implements t74 {
    INSTANCE;

    public static <T> t74 instance() {
        return INSTANCE;
    }

    @Override
    public jk8 apply(l96 l96Var) throws Exception {
        return new MaybeToFlowable(l96Var);
    }
}
