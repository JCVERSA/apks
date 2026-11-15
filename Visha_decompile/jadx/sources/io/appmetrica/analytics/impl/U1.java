package io.appmetrica.analytics.impl;

import android.app.Activity;
import io.appmetrica.analytics.coreapi.internal.backport.FunctionWithThrowable;

public final class U1 implements FunctionWithThrowable {
    @Override
    public final Object apply(Object obj) {
        return ((Activity) obj).getIntent();
    }
}
