package io.appmetrica.analytics.impl;

import android.os.RemoteException;
import io.appmetrica.analytics.internal.IAppMetricaService;

public class Eg extends AbstractCallableC2793ph {
    public final C2743nh e;

    public Eg(C2602i0 c2602i0, Ck ck, C2743nh c2743nh) {
        super(c2602i0, ck);
        this.e = c2743nh;
    }

    @Override
    public final void a(Throwable th) {
    }

    @Override
    public final void a(IAppMetricaService iAppMetricaService) throws RemoteException {
        C2743nh c2743nh = this.e;
        iAppMetricaService.reportData(c2743nh.c, c2743nh.a.d(c2743nh.e.c()));
    }
}
