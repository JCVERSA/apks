package io.appmetrica.analytics.impl;

import android.os.Bundle;
import android.os.RemoteException;
import io.appmetrica.analytics.internal.IAppMetricaService;

public final class C2674kn extends AbstractCallableC2793ph {
    public final int e;
    public final Bundle f;

    public C2674kn(C2602i0 c2602i0, Ck ck, int i, Bundle bundle) {
        super(c2602i0, ck);
        this.e = i;
        this.f = bundle;
    }

    @Override
    public final void a(IAppMetricaService iAppMetricaService) throws RemoteException {
        iAppMetricaService.reportData(this.e, this.f);
    }
}
