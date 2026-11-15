package com.google.android.gms.internal.identity;

import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.LocationCallback;

final class zzdt implements ListenerHolder.Notifier {
    final LocationAvailability zza;

    zzdt(zzdv zzdvVar, LocationAvailability locationAvailability) {
        this.zza = locationAvailability;
    }

    @Override
    public final void notifyListener(Object obj) {
        ((LocationCallback) obj).onLocationAvailability(this.zza);
    }

    @Override
    public final void onNotifyListenerFailed() {
    }
}
