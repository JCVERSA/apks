package com.google.android.gms.internal.identity;

import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.location.LocationSettingsResult;

final class zzdf extends zzaa {
    final BaseImplementation.ResultHolder zza;

    zzdf(BaseImplementation.ResultHolder resultHolder) {
        this.zza = resultHolder;
    }

    @Override
    public final void zzb(LocationSettingsResult locationSettingsResult) {
        this.zza.setResult(locationSettingsResult);
    }
}
