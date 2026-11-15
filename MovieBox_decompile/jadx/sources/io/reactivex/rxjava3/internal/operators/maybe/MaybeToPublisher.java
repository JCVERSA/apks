package io.reactivex.rxjava3.internal.operators.maybe;

import i00.b;
import io.reactivex.rxjava3.core.i;
import yx.h;

public enum MaybeToPublisher implements h {
    INSTANCE;

    public static <T> h instance() {
        return INSTANCE;
    }

    @Override
    public b apply(i iVar) {
        return new MaybeToFlowable(iVar);
    }
}
