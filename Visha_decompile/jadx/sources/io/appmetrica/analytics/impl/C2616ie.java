package io.appmetrica.analytics.impl;

import android.os.Bundle;
import android.os.RemoteException;
import io.appmetrica.analytics.internal.IAppMetricaService;

public final class C2616ie extends AbstractCallableC2793ph {
    public final C2791pf e;

    public C2616ie(C2602i0 c2602i0, Ck ck, C2791pf c2791pf) {
        super(c2602i0, ck);
        this.e = c2791pf;
    }

    @Override
    public final void a(IAppMetricaService iAppMetricaService) throws RemoteException {
        Bundle bundle = new Bundle();
        C2791pf c2791pf = this.e;
        synchronized (c2791pf) {
            bundle.putParcelable("PROCESS_CFG_OBJ", c2791pf);
        }
        iAppMetricaService.pauseUserSession(bundle);
    }
}
