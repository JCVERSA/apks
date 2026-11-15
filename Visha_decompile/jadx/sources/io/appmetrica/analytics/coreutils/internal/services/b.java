package io.appmetrica.analytics.coreutils.internal.services;

public final class b implements Runnable {
    public final WaitForActivationDelayBarrier.ActivationBarrierHelper a;

    public b(WaitForActivationDelayBarrier.ActivationBarrierHelper activationBarrierHelper) {
        this.a = activationBarrierHelper;
    }

    @Override
    public final void run() {
        a aVar = this.a.b;
        aVar.b.a = true;
        aVar.a.run();
    }
}
