package com.google.android.gms.auth;

import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import java.io.IOException;

final class zzh implements zzk {
    final String zza;
    final Bundle zzb;

    zzh(String str, Bundle bundle) {
        this.zza = str;
        this.zzb = bundle;
    }

    @Override
    public final Object zza(IBinder iBinder) throws RemoteException, IOException, GoogleAuthException {
        Bundle bundleZzd = com.google.android.gms.internal.auth.zze.zzb(iBinder).zzd(this.zza, this.zzb);
        zzl.zzd(bundleZzd);
        String string = bundleZzd.getString("Error");
        if (bundleZzd.getBoolean("booleanResult")) {
            return null;
        }
        throw new GoogleAuthException(string);
    }
}
