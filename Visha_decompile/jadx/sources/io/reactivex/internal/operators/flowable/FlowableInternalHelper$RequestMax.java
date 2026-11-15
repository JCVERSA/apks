package io.reactivex.internal.operators.flowable;

import defpackage.f2a;
import defpackage.zf1;

public enum FlowableInternalHelper$RequestMax implements zf1 {
    INSTANCE;

    @Override
    public void accept(f2a f2aVar) throws Exception {
        f2aVar.request(Long.MAX_VALUE);
    }
}
