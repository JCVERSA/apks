package com.google.android.gms.internal.identity;

import com.google.android.gms.common.api.internal.ListenerHolder;

final class zzdu implements ListenerHolder.Notifier {
    final zzdv zza;

    zzdu(zzdv zzdvVar) {
        this.zza = zzdvVar;
    }

    @Override
    public final void notifyListener(Object obj) {
        this.zza.zzh().zzc();
    }

    @Override
    public final void onNotifyListenerFailed() {
    }
}
