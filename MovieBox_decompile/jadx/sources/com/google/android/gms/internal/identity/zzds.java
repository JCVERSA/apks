package com.google.android.gms.internal.identity;

import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.location.LocationCallback;
import com.google.android.gms.location.LocationResult;

final class zzds implements ListenerHolder.Notifier {
    final LocationResult zza;

    zzds(zzdv zzdvVar, LocationResult locationResult) {
        this.zza = locationResult;
    }

    @Override
    public final void notifyListener(Object obj) {
        ((LocationCallback) obj).onLocationResult(this.zza);
    }

    @Override
    public final void onNotifyListenerFailed() {
    }
}
