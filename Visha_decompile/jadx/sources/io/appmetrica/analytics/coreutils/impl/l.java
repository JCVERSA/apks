package io.appmetrica.analytics.coreutils.impl;

import defpackage.c74;
import io.appmetrica.analytics.coreutils.internal.services.FirstExecutionConditionServiceImpl;
import io.appmetrica.analytics.coreutils.internal.services.UtilityServiceProvider;
import kotlin.jvm.internal.Lambda;

public final class l extends Lambda implements c74 {
    public final UtilityServiceProvider a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l(UtilityServiceProvider utilityServiceProvider) {
        super(0);
        this.a = utilityServiceProvider;
    }

    @Override
    public final Object invoke() {
        return new FirstExecutionConditionServiceImpl(this.a);
    }
}
