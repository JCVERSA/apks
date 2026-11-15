package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.text.TextUtils;

final class zzkr implements zzor {
    private final zzjq zza;

    zzkr(zzjq zzjqVar) {
        this.zza = zzjqVar;
    }

    @Override
    public final void zza(String str, String str2, Bundle bundle) {
        if (TextUtils.isEmpty(str)) {
            this.zza.zzb("auto", str2, bundle);
        } else {
            this.zza.zza("auto", str2, bundle, str);
        }
    }
}
