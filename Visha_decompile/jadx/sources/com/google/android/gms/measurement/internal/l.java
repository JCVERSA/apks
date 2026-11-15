package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzci;
import defpackage.rsi;

public final class l implements rsi {
    public final zzci a;
    public final AppMeasurementDynamiteService b;

    public l(AppMeasurementDynamiteService appMeasurementDynamiteService, zzci zzciVar) {
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
                eVar.b().v().b("Event interceptor threw exception", e);
            }
        }
    }
}
