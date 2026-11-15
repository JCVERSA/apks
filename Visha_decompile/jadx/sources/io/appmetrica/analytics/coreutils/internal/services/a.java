package io.appmetrica.analytics.coreutils.internal.services;

import io.appmetrica.analytics.coreapi.internal.servicecomponents.ActivationBarrierCallback;

public final class a implements ActivationBarrierCallback {
    public final Runnable a;
    public final WaitForActivationDelayBarrier.ActivationBarrierHelper b;

    public a(WaitForActivationDelayBarrier.ActivationBarrierHelper activationBarrierHelper, Runnable runnable) {
        this.b = activationBarrierHelper;
        this.a = runnable;
    }

    @Override
    public final void onWaitFinished() {
        this.b.a = true;
        this.a.run();
    }
}
