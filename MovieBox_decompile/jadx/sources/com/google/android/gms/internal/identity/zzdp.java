package com.google.android.gms.internal.identity;

import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.location.DeviceOrientation;
import com.google.android.gms.location.DeviceOrientationListener;

final class zzdp implements ListenerHolder.Notifier {
    final DeviceOrientation zza;

    zzdp(zzdq zzdqVar, DeviceOrientation deviceOrientation) {
        this.zza = deviceOrientation;
    }

    @Override
    public final void notifyListener(Object obj) {
        ((DeviceOrientationListener) obj).onDeviceOrientationChanged(this.zza);
    }

    @Override
    public final void onNotifyListenerFailed() {
    }
}
