package com.google.android.gms.maps;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.maps.internal.zzbz;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.gms.maps.model.RuntimeRemoteException;

public final class MapsInitializer {
    private static boolean zzbm = false;

    private MapsInitializer() {
    }

    public static synchronized int initialize(Context context) {
        Preconditions.checkNotNull(context, "Context is null");
        if (zzbm) {
            return 0;
        }
        try {
            com.google.android.gms.maps.internal.zze zzeVarZza = zzbz.zza(context);
            try {
                CameraUpdateFactory.zza(zzeVarZza.zze());
                BitmapDescriptorFactory.zza(zzeVarZza.zzf());
                zzbm = true;
                return 0;
            } catch (RemoteException e10) {
                throw new RuntimeRemoteException(e10);
            }
        } catch (GooglePlayServicesNotAvailableException e11) {
            return e11.errorCode;
        }
    }
}
