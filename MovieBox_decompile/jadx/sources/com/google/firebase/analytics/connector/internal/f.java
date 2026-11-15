package com.google.firebase.analytics.connector.internal;

import android.os.RemoteException;
import com.google.android.gms.measurement.api.AppMeasurementSdk;

public final class f {

    private mb.a.b f30240a;

    private AppMeasurementSdk f30241b;

    private e f30242c;

    public f(AppMeasurementSdk appMeasurementSdk, mb.a.b bVar) throws RemoteException {
        this.f30240a = bVar;
        this.f30241b = appMeasurementSdk;
        e eVar = new e(this);
        this.f30242c = eVar;
        this.f30241b.registerOnMeasurementEventListener(eVar);
    }
}
