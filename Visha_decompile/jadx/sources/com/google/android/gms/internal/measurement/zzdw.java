package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import defpackage.wd8;

final class zzdw extends zzdt {
    final Bundle zza;
    final Activity zzb;
    final a zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzdw(a aVar, Bundle bundle, Activity activity) {
        super(aVar.b, true);
        this.zzc = aVar;
        this.zza = bundle;
        this.zzb = activity;
    }

    @Override
    public final void zza() throws RemoteException {
        Bundle bundle;
        if (this.zza != null) {
            bundle = new Bundle();
            if (this.zza.containsKey("com.google.app_measurement.screen_service")) {
                Object obj = this.zza.get("com.google.app_measurement.screen_service");
                if (obj instanceof Bundle) {
                    bundle.putBundle("com.google.app_measurement.screen_service", (Bundle) obj);
                }
            }
        } else {
            bundle = null;
        }
        ((zzcc) wd8.l(this.zzc.b.i)).onActivityCreated(ObjectWrapper.wrap(this.zzb), bundle, this.zzi);
    }
}
