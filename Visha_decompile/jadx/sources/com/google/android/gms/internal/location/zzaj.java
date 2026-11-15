package com.google.android.gms.internal.location;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.RemoteException;
import defpackage.vff;

public abstract class zzaj extends zzb implements zzak {
    public zzaj() {
        super("com.google.android.gms.location.internal.IGeofencerCallbacks");
    }

    @Override
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            zzb(parcel.readInt(), parcel.createStringArray());
        } else if (i == 2) {
            zzc(parcel.readInt(), parcel.createStringArray());
        } else {
            if (i != 3) {
                return false;
            }
            zzd(parcel.readInt(), (PendingIntent) vff.b(parcel, PendingIntent.CREATOR));
        }
        return true;
    }
}
