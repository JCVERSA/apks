package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzbm;
import defpackage.f7f;
import java.util.ArrayList;
import java.util.List;

public final class zzec extends zzbm implements zzee {
    public zzec(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.internal.IMeasurementService");
    }

    @Override
    public final String zzd(zzq zzqVar) throws RemoteException {
        Parcel parcelZza = zza();
        f7f.e(parcelZza, zzqVar);
        Parcel parcelZzb = zzb(11, parcelZza);
        String string = parcelZzb.readString();
        parcelZzb.recycle();
        return string;
    }

    @Override
    public final List zze(zzq zzqVar, boolean z) throws RemoteException {
        Parcel parcelZza = zza();
        f7f.e(parcelZza, zzqVar);
        f7f.d(parcelZza, z);
        Parcel parcelZzb = zzb(7, parcelZza);
        ArrayList arrayListCreateTypedArrayList = parcelZzb.createTypedArrayList(zzlc.CREATOR);
        parcelZzb.recycle();
        return arrayListCreateTypedArrayList;
    }

    @Override
    public final List zzf(String str, String str2, zzq zzqVar) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        parcelZza.writeString(str2);
        f7f.e(parcelZza, zzqVar);
        Parcel parcelZzb = zzb(16, parcelZza);
        ArrayList arrayListCreateTypedArrayList = parcelZzb.createTypedArrayList(zzac.CREATOR);
        parcelZzb.recycle();
        return arrayListCreateTypedArrayList;
    }

    @Override
    public final List zzg(String str, String str2, String str3) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeString(null);
        parcelZza.writeString(str2);
        parcelZza.writeString(str3);
        Parcel parcelZzb = zzb(17, parcelZza);
        ArrayList arrayListCreateTypedArrayList = parcelZzb.createTypedArrayList(zzac.CREATOR);
        parcelZzb.recycle();
        return arrayListCreateTypedArrayList;
    }

    @Override
    public final List zzh(String str, String str2, boolean z, zzq zzqVar) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        parcelZza.writeString(str2);
        f7f.d(parcelZza, z);
        f7f.e(parcelZza, zzqVar);
        Parcel parcelZzb = zzb(14, parcelZza);
        ArrayList arrayListCreateTypedArrayList = parcelZzb.createTypedArrayList(zzlc.CREATOR);
        parcelZzb.recycle();
        return arrayListCreateTypedArrayList;
    }

    @Override
    public final List zzi(String str, String str2, String str3, boolean z) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeString(null);
        parcelZza.writeString(str2);
        parcelZza.writeString(str3);
        f7f.d(parcelZza, z);
        Parcel parcelZzb = zzb(15, parcelZza);
        ArrayList arrayListCreateTypedArrayList = parcelZzb.createTypedArrayList(zzlc.CREATOR);
        parcelZzb.recycle();
        return arrayListCreateTypedArrayList;
    }

    @Override
    public final void zzj(zzq zzqVar) throws RemoteException {
        Parcel parcelZza = zza();
        f7f.e(parcelZza, zzqVar);
        zzc(4, parcelZza);
    }

    @Override
    public final void zzk(zzaw zzawVar, zzq zzqVar) throws RemoteException {
        Parcel parcelZza = zza();
        f7f.e(parcelZza, zzawVar);
        f7f.e(parcelZza, zzqVar);
        zzc(1, parcelZza);
    }

    @Override
    public final void zzl(zzaw zzawVar, String str, String str2) throws RemoteException {
        throw null;
    }

    @Override
    public final void zzm(zzq zzqVar) throws RemoteException {
        Parcel parcelZza = zza();
        f7f.e(parcelZza, zzqVar);
        zzc(18, parcelZza);
    }

    @Override
    public final void zzn(zzac zzacVar, zzq zzqVar) throws RemoteException {
        Parcel parcelZza = zza();
        f7f.e(parcelZza, zzacVar);
        f7f.e(parcelZza, zzqVar);
        zzc(12, parcelZza);
    }

    @Override
    public final void zzo(zzac zzacVar) throws RemoteException {
        throw null;
    }

    @Override
    public final void zzp(zzq zzqVar) throws RemoteException {
        Parcel parcelZza = zza();
        f7f.e(parcelZza, zzqVar);
        zzc(20, parcelZza);
    }

    @Override
    public final void zzq(long j, String str, String str2, String str3) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeLong(j);
        parcelZza.writeString(str);
        parcelZza.writeString(str2);
        parcelZza.writeString(str3);
        zzc(10, parcelZza);
    }

    @Override
    public final void zzr(Bundle bundle, zzq zzqVar) throws RemoteException {
        Parcel parcelZza = zza();
        f7f.e(parcelZza, bundle);
        f7f.e(parcelZza, zzqVar);
        zzc(19, parcelZza);
    }

    @Override
    public final void zzs(zzq zzqVar) throws RemoteException {
        Parcel parcelZza = zza();
        f7f.e(parcelZza, zzqVar);
        zzc(6, parcelZza);
    }

    @Override
    public final void zzt(zzlc zzlcVar, zzq zzqVar) throws RemoteException {
        Parcel parcelZza = zza();
        f7f.e(parcelZza, zzlcVar);
        f7f.e(parcelZza, zzqVar);
        zzc(2, parcelZza);
    }

    @Override
    public final byte[] zzu(zzaw zzawVar, String str) throws RemoteException {
        Parcel parcelZza = zza();
        f7f.e(parcelZza, zzawVar);
        parcelZza.writeString(str);
        Parcel parcelZzb = zzb(9, parcelZza);
        byte[] bArrCreateByteArray = parcelZzb.createByteArray();
        parcelZzb.recycle();
        return bArrCreateByteArray;
    }
}
