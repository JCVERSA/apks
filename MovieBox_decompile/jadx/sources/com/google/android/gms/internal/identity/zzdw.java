package com.google.android.gms.internal.identity;

import android.location.Location;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.location.LocationListener;

final class zzdw implements ListenerHolder.Notifier {
    final Location zza;

    zzdw(zzdy zzdyVar, Location location) {
        this.zza = location;
    }

    @Override
    public final void notifyListener(Object obj) {
        ((LocationListener) obj).onLocationChanged(this.zza);
    }

    @Override
    public final void onNotifyListenerFailed() {
    }
}
