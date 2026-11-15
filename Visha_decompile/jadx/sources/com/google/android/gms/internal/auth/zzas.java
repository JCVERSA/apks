package com.google.android.gms.internal.auth;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.auth.api.accounttransfer.DeviceMetaData;
import com.google.android.gms.common.api.Status;
import defpackage.rff;

public abstract class zzas extends zzb implements zzat {
    public zzas() {
        super("com.google.android.gms.auth.api.accounttransfer.internal.IAccountTransferCallbacks");
    }

    @Override
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 1:
                Status status = (Status) rff.a(parcel, Status.CREATOR);
                rff.b(parcel);
                zzh(status);
                return true;
            case 2:
                Status status2 = (Status) rff.a(parcel, Status.CREATOR);
                com.google.android.gms.auth.api.accounttransfer.zzw zzwVar = (com.google.android.gms.auth.api.accounttransfer.zzw) rff.a(parcel, com.google.android.gms.auth.api.accounttransfer.zzw.CREATOR);
                rff.b(parcel);
                zzf(status2, zzwVar);
                return true;
            case 3:
                Status status3 = (Status) rff.a(parcel, Status.CREATOR);
                com.google.android.gms.auth.api.accounttransfer.zzo zzoVar = (com.google.android.gms.auth.api.accounttransfer.zzo) rff.a(parcel, com.google.android.gms.auth.api.accounttransfer.zzo.CREATOR);
                rff.b(parcel);
                zzg(status3, zzoVar);
                return true;
            case 4:
                zze();
                return true;
            case 5:
                Status status4 = (Status) rff.a(parcel, Status.CREATOR);
                rff.b(parcel);
                zzd(status4);
                return true;
            case 6:
                byte[] bArrCreateByteArray = parcel.createByteArray();
                rff.b(parcel);
                zzb(bArrCreateByteArray);
                return true;
            case 7:
                DeviceMetaData deviceMetaData = (DeviceMetaData) rff.a(parcel, DeviceMetaData.CREATOR);
                rff.b(parcel);
                zzc(deviceMetaData);
                return true;
            default:
                return false;
        }
    }
}
