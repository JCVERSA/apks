package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.text.TextUtils;

final class zzof implements zzor {
    final zznv zza;

    zzof(zznv zznvVar) {
        this.zza = zznvVar;
    }

    @Override
    public final void zza(String str, String str2, Bundle bundle) {
        if (!TextUtils.isEmpty(str)) {
            this.zza.zzl().zzb(new zzoh(this, str, str2, bundle));
        } else if (this.zza.zzm != null) {
            this.zza.zzm.zzj().zzg().zza("AppId not known when logging event", str2);
        }
    }
}
