package com.google.android.gms.location;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.location.zzb;
import defpackage.vff;

public abstract class zzaz extends zzb implements zzba {
    public zzaz() {
        super("com.google.android.gms.location.ILocationCallback");
    }

    public static zzba zzb(IBinder iBinder) {
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.location.ILocationCallback");
        return iInterfaceQueryLocalInterface instanceof zzba ? (zzba) iInterfaceQueryLocalInterface : new zzay(iBinder);
    }

    @Override
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            zzd((LocationResult) vff.b(parcel, LocationResult.CREATOR));
        } else {
            if (i != 2) {
                return false;
            }
            zze((LocationAvailability) vff.b(parcel, LocationAvailability.CREATOR));
        }
        return true;
    }
}
