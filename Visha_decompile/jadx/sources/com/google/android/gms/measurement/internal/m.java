package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzci;
import defpackage.kti;

public final class m implements kti {
    public final zzci a;
    public final AppMeasurementDynamiteService b;

    public m(AppMeasurementDynamiteService appMeasurementDynamiteService, zzci zzciVar) {
        this.b = appMeasurementDynamiteService;
        this.a = zzciVar;
    }

    @Override
    public final void a(String str, String str2, Bundle bundle, long j) {
        try {
            this.a.zze(str, str2, bundle, j);
        } catch (RemoteException e) {
            e eVar = this.b.zza;
            if (eVar != null) {
                eVar.b().v().b("Event listener threw exception", e);
            }
        }
    }
}
