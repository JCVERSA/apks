package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import defpackage.wd8;
import org.mozilla.javascript.ES6Iterator;

final class zzhm implements Runnable {
    final Bundle zza;
    final g zzb;

    public zzhm(g gVar, Bundle bundle) {
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
        String string = bundle.getString("name");
        String string2 = bundle.getString("origin");
        wd8.f(string);
        wd8.f(string2);
        wd8.l(bundle.get(ES6Iterator.VALUE_PROPERTY));
        if (!gVar.a.o()) {
            gVar.a.b().u().a("Conditional property not set since app measurement is disabled");
            return;
        }
        zzlc zzlcVar = new zzlc(string, bundle.getLong("triggered_timestamp"), bundle.get(ES6Iterator.VALUE_PROPERTY), string2);
        try {
            zzaw zzawVarT0 = gVar.a.N().t0(bundle.getString("app_id"), bundle.getString("triggered_event_name"), bundle.getBundle("triggered_event_params"), string2, 0L, true, true);
            gVar.a.L().r(new zzac(bundle.getString("app_id"), string2, zzlcVar, bundle.getLong("creation_timestamp"), false, bundle.getString("trigger_event_name"), gVar.a.N().t0(bundle.getString("app_id"), bundle.getString("timed_out_event_name"), bundle.getBundle("timed_out_event_params"), string2, 0L, true, true), bundle.getLong("trigger_timeout"), zzawVarT0, bundle.getLong("time_to_live"), gVar.a.N().t0(bundle.getString("app_id"), bundle.getString("expired_event_name"), bundle.getBundle("expired_event_params"), string2, 0L, true, true)));
        } catch (IllegalArgumentException unused) {
        }
    }
}
