package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import io.appmetrica.analytics.coreapi.internal.backport.Function;

public final class C2981x6 implements Function {
    @Override
    @NonNull
    public final Tm apply(Thread thread) {
        String name = thread.getName();
        int priority = thread.getPriority();
        long id = thread.getId();
        ThreadGroup threadGroup = thread.getThreadGroup();
        return new Tm(name, priority, id, threadGroup != null ? threadGroup.getName() : "", null, null);
    }
}
