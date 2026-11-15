package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zze;
import defpackage.aue;

public abstract class zzbpd extends zzaxy implements zzbpe {
    public zzbpd() {
        super("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
    }

    public static zzbpe zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
        return iInterfaceQueryLocalInterface instanceof zzbpe ? (zzbpe) iInterfaceQueryLocalInterface : new zzbpc(iBinder);
    }

    @Override
    public final boolean zzdD(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 1:
                zze();
                break;
            case 2:
                zzf();
                break;
            case 3:
                int i3 = parcel.readInt();
                aue.c(parcel);
                zzg(i3);
                break;
            case 4:
                zzn();
                break;
            case 5:
                zzp();
                break;
            case 6:
                zzo();
                break;
            case 7:
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder != null) {
                    boolean z = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationResponseMetadata") instanceof zzbpi;
                }
                aue.c(parcel);
                break;
            case 8:
                zzm();
                break;
            case 9:
                String string = parcel.readString();
                String string2 = parcel.readString();
                aue.c(parcel);
                zzq(string, string2);
                break;
            case 10:
                zzbgm.zzb(parcel.readStrongBinder());
                parcel.readString();
                aue.c(parcel);
                break;
            case 11:
                zzw();
                break;
            case 12:
                parcel.readString();
                aue.c(parcel);
                break;
            case 13:
                zzz();
                break;
            case 14:
                zzbvw zzbvwVar = (zzbvw) aue.a(parcel, zzbvw.CREATOR);
                aue.c(parcel);
                zzs(zzbvwVar);
                break;
            case 15:
                zzx();
                break;
            case 16:
                zzbwa zzbwaVarZzb = zzbvz.zzb(parcel.readStrongBinder());
                aue.c(parcel);
                zzt(zzbwaVarZzb);
                break;
            case 17:
                int i4 = parcel.readInt();
                aue.c(parcel);
                zzj(i4);
                break;
            case 18:
                zzv();
                break;
            case 19:
                aue.c(parcel);
                break;
            case 20:
                zzy();
                break;
            case 21:
                String string3 = parcel.readString();
                aue.c(parcel);
                zzl(string3);
                break;
            case 22:
                int i5 = parcel.readInt();
                String string4 = parcel.readString();
                aue.c(parcel);
                zzi(i5, string4);
                break;
            case 23:
                zze zzeVar = (zze) aue.a(parcel, zze.CREATOR);
                aue.c(parcel);
                zzh(zzeVar);
                break;
            case 24:
                zze zzeVar2 = (zze) aue.a(parcel, zze.CREATOR);
                aue.c(parcel);
                zzk(zzeVar2);
                break;
            case 25:
                zzu();
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
