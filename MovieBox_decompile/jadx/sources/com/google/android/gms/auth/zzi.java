package com.google.android.gms.auth;

import android.os.IBinder;
import android.os.RemoteException;
import java.io.IOException;

final class zzi implements zzk {
    final AccountChangeEventsRequest zza;

    zzi(AccountChangeEventsRequest accountChangeEventsRequest) {
        this.zza = accountChangeEventsRequest;
    }

    @Override
    public final Object zza(IBinder iBinder) throws RemoteException, IOException, GoogleAuthException {
        AccountChangeEventsResponse accountChangeEventsResponseZzh = com.google.android.gms.internal.auth.zze.zzb(iBinder).zzh(this.zza);
        zzl.zzd(accountChangeEventsResponseZzh);
        return accountChangeEventsResponseZzh.getEvents();
    }
}
