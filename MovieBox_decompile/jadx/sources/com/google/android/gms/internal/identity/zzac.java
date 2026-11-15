package com.google.android.gms.internal.identity;

import android.app.PendingIntent;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;

final class zzac extends zzae {
    final long zza;
    final PendingIntent zzb;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzac(zzaf zzafVar, GoogleApiClient googleApiClient, long j10, PendingIntent pendingIntent) {
        super(googleApiClient);
        this.zza = j10;
        this.zzb = pendingIntent;
    }

    @Override
    protected final void doExecute(Api.AnyClient anyClient) throws RemoteException {
        PendingIntent pendingIntent = this.zzb;
        zzg zzgVar = (zzg) anyClient;
        Preconditions.checkNotNull(pendingIntent);
        long j10 = this.zza;
        Preconditions.checkArgument(j10 >= 0, "detectionIntervalMillis must be >= 0");
        ((zzv) zzgVar.getService()).zzh(j10, true, pendingIntent);
        setResult(Status.RESULT_SUCCESS);
    }
}
