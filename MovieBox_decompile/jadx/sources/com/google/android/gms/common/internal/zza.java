package com.google.android.gms.common.internal;

import android.app.PendingIntent;
import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;

abstract class zza extends zzc {
    public final int zza;

    @Nullable
    public final Bundle zzb;
    final BaseGmsClient zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    protected zza(BaseGmsClient baseGmsClient, @Nullable int i10, Bundle bundle) {
        super(baseGmsClient, Boolean.TRUE);
        this.zzc = baseGmsClient;
        this.zza = i10;
        this.zzb = bundle;
    }

    @Override
    protected final void zza(Object obj) {
        if (this.zza != 0) {
            this.zzc.zzp(1, null);
            Bundle bundle = this.zzb;
            zzb(new ConnectionResult(this.zza, bundle != null ? (PendingIntent) bundle.getParcelable(BaseGmsClient.KEY_PENDING_INTENT) : null));
        } else {
            if (zzd()) {
                return;
            }
            this.zzc.zzp(1, null);
            zzb(new ConnectionResult(8, null));
        }
    }

    protected abstract void zzb(ConnectionResult connectionResult);

    protected abstract boolean zzd();

    @Override
    protected final void zzc() {
    }
}
