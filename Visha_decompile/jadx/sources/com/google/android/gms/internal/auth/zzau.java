package com.google.android.gms.internal.auth;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import defpackage.rff;

public final class zzau extends zza implements IInterface {
    public zzau(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.auth.api.accounttransfer.internal.IAccountTransferService");
    }

    public final void zzd(zzat zzatVar, zzaq zzaqVar) throws RemoteException {
        Parcel parcelZza = zza();
        rff.e(parcelZza, zzatVar);
        rff.d(parcelZza, zzaqVar);
        zzc(7, parcelZza);
    }

    public final void zze(zzat zzatVar, zzbb zzbbVar) throws RemoteException {
        Parcel parcelZza = zza();
        rff.e(parcelZza, zzatVar);
        rff.d(parcelZza, zzbbVar);
        zzc(8, parcelZza);
    }

    public final void zzf(zzat zzatVar, zzav zzavVar) throws RemoteException {
        Parcel parcelZza = zza();
        rff.e(parcelZza, zzatVar);
        rff.d(parcelZza, zzavVar);
        zzc(9, parcelZza);
    }

    public final void zzg(zzat zzatVar, zzax zzaxVar) throws RemoteException {
        Parcel parcelZza = zza();
        rff.e(parcelZza, zzatVar);
        rff.d(parcelZza, zzaxVar);
        zzc(6, parcelZza);
    }

    public final void zzh(zzat zzatVar, zzaz zzazVar) throws RemoteException {
        Parcel parcelZza = zza();
        rff.e(parcelZza, zzatVar);
        rff.d(parcelZza, zzazVar);
        zzc(5, parcelZza);
    }
}
