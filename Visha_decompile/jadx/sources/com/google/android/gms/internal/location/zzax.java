package com.google.android.gms.internal.location;

import android.app.PendingIntent;
import android.util.Log;
import defpackage.oa0;
import defpackage.oo5;

final class zzax extends zzaj {
    private oa0 zza;

    public zzax(oa0 oa0Var) {
        this.zza = oa0Var;
    }

    private final void zze(int i) {
        if (this.zza == null) {
            Log.wtf("LocationClientImpl", "onRemoveGeofencesResult called multiple times", new Exception());
            return;
        }
        this.zza.a(oo5.b(oo5.a(i)));
        this.zza = null;
    }

    @Override
    public final void zzb(int i, String[] strArr) {
        Log.wtf("LocationClientImpl", "Unexpected call to onAddGeofencesResult", new Exception());
    }

    @Override
    public final void zzc(int i, String[] strArr) {
        zze(i);
    }

    @Override
    public final void zzd(int i, PendingIntent pendingIntent) {
        zze(i);
    }
}
