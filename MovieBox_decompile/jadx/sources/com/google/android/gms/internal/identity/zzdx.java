package com.google.android.gms.internal.identity;

import com.google.android.gms.common.api.internal.ListenerHolder;

final class zzdx implements ListenerHolder.Notifier {
    final zzdy zza;

    zzdx(zzdy zzdyVar) {
        this.zza = zzdyVar;
    }

    @Override
    public final void notifyListener(Object obj) {
        this.zza.zzg().zzc();
    }

    @Override
    public final void onNotifyListenerFailed() {
    }
}
