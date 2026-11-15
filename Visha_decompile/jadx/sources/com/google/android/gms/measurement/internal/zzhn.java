package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import defpackage.wd8;

final class zzhn implements Runnable {
    final Bundle zza;
    final g zzb;

    public zzhn(g gVar, Bundle bundle) {
        this.zzb = gVar;
        this.zza = bundle;
    }

    @Override
    public final void run() {
        g gVar = this.zzb;
        Bundle bundle = this.zza;
        gVar.g();
        gVar.h();
        wd8.l(bundle);
        String strF = wd8.f(bundle.getString("name"));
        if (!gVar.a.o()) {
            gVar.a.b().u().a("Conditional property not cleared since app measurement is disabled");
            return;
        }
        try {
            gVar.a.L().r(new zzac(bundle.getString("app_id"), "", new zzlc(strF, 0L, null, ""), bundle.getLong("creation_timestamp"), bundle.getBoolean("active"), bundle.getString("trigger_event_name"), null, bundle.getLong("trigger_timeout"), null, bundle.getLong("time_to_live"), gVar.a.N().t0(bundle.getString("app_id"), bundle.getString("expired_event_name"), bundle.getBundle("expired_event_params"), "", bundle.getLong("creation_timestamp"), true, true)));
        } catch (IllegalArgumentException unused) {
        }
    }
}
