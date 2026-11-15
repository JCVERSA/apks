package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.networktasks.internal.NetworkTask;

public final class Hn implements NetworkTask.ShouldTryNextHostCondition {
    @Override
    public final boolean shouldTryNextHost(int i) {
        return !(i == 400);
    }
}
