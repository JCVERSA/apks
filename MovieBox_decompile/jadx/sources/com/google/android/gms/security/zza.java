package com.google.android.gms.security;

import android.content.Context;
import android.os.AsyncTask;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;

final class zza extends AsyncTask {
    final Context zza;
    final ProviderInstaller.ProviderInstallListener zzb;

    zza(Context context, ProviderInstaller.ProviderInstallListener providerInstallListener) {
        this.zza = context;
        this.zzb = providerInstallListener;
    }

    @Override
    protected final Object doInBackground(Object[] objArr) {
        try {
            ProviderInstaller.installIfNeeded(this.zza);
            return 0;
        } catch (GooglePlayServicesNotAvailableException e10) {
            return Integer.valueOf(e10.errorCode);
        } catch (GooglePlayServicesRepairableException e11) {
            return Integer.valueOf(e11.getConnectionStatusCode());
        }
    }

    @Override
    protected final void onPostExecute(Object obj) {
        Integer num = (Integer) obj;
        if (num.intValue() == 0) {
            this.zzb.onProviderInstalled();
            return;
        }
        this.zzb.onProviderInstallFailed(num.intValue(), ProviderInstaller.zza.getErrorResolutionIntent(this.zza, num.intValue(), "pi"));
    }
}
