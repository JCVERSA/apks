package com.google.android.gms.internal.maps;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.ArrayList;
import java.util.List;

public final class zzp extends zza implements zzn {
    zzp(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.maps.model.internal.IIndoorBuildingDelegate");
    }

    @Override
    public final int getActiveLevelIndex() throws RemoteException {
        Parcel parcelZza = zza(1, zza());
        int i10 = parcelZza.readInt();
        parcelZza.recycle();
        return i10;
    }

    @Override
    public final int getDefaultLevelIndex() throws RemoteException {
        Parcel parcelZza = zza(2, zza());
        int i10 = parcelZza.readInt();
        parcelZza.recycle();
        return i10;
    }

    @Override
    public final List<IBinder> getLevels() throws RemoteException {
        Parcel parcelZza = zza(3, zza());
        ArrayList<IBinder> arrayListCreateBinderArrayList = parcelZza.createBinderArrayList();
        parcelZza.recycle();
        return arrayListCreateBinderArrayList;
    }

    @Override
    public final boolean isUnderground() throws RemoteException {
        Parcel parcelZza = zza(4, zza());
        boolean zZza = zzc.zza(parcelZza);
        parcelZza.recycle();
        return zZza;
    }

    @Override
    public final boolean zzb(zzn zznVar) throws RemoteException {
        Parcel parcelZza = zza();
        zzc.zza(parcelZza, zznVar);
        Parcel parcelZza2 = zza(5, parcelZza);
        boolean zZza = zzc.zza(parcelZza2);
        parcelZza2.recycle();
        return zZza;
    }

    @Override
    public final int zzj() throws RemoteException {
        Parcel parcelZza = zza(6, zza());
        int i10 = parcelZza.readInt();
        parcelZza.recycle();
        return i10;
    }
}
