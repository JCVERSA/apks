package com.google.firebase.analytics.connector.internal;

import android.os.RemoteException;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.HashSet;
import java.util.Set;

public final class d {

    Set f30235a;

    private mb.a.b f30236b;

    private AppMeasurementSdk f30237c;

    private c f30238d;

    public d(AppMeasurementSdk appMeasurementSdk, mb.a.b bVar) throws RemoteException {
        this.f30236b = bVar;
        this.f30237c = appMeasurementSdk;
        c cVar = new c(this);
        this.f30238d = cVar;
        this.f30237c.registerOnMeasurementEventListener(cVar);
        this.f30235a = new HashSet();
    }
}
