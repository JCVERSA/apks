package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.client.zze;
import com.google.android.gms.ads.mediation.Adapter;
import com.google.android.gms.dynamic.ObjectWrapper;

public final class zzbqc extends zzbpd {
    private final Adapter zza;
    private final zzbvv zzb;

    public zzbqc(Adapter adapter, zzbvv zzbvvVar) {
        this.zza = adapter;
        this.zzb = zzbvvVar;
    }

    @Override
    public final void zze() throws RemoteException {
        zzbvv zzbvvVar = this.zzb;
        if (zzbvvVar != null) {
            zzbvvVar.zze(ObjectWrapper.wrap(this.zza));
        }
    }

    @Override
    public final void zzf() throws RemoteException {
        zzbvv zzbvvVar = this.zzb;
        if (zzbvvVar != null) {
            zzbvvVar.zzf(ObjectWrapper.wrap(this.zza));
        }
    }

    @Override
    public final void zzg(int i) throws RemoteException {
        zzbvv zzbvvVar = this.zzb;
        if (zzbvvVar != null) {
            zzbvvVar.zzg(ObjectWrapper.wrap(this.zza), i);
        }
    }

    @Override
    public final void zzh(zze zzeVar) throws RemoteException {
    }

    @Override
    public final void zzi(int i, String str) throws RemoteException {
    }

    @Override
    public final void zzj(int i) throws RemoteException {
    }

    @Override
    public final void zzk(zze zzeVar) {
    }

    @Override
    public final void zzl(String str) {
    }

    @Override
    public final void zzm() throws RemoteException {
    }

    @Override
    public final void zzn() throws RemoteException {
    }

    @Override
    public final void zzo() throws RemoteException {
        zzbvv zzbvvVar = this.zzb;
        if (zzbvvVar != null) {
            zzbvvVar.zzi(ObjectWrapper.wrap(this.zza));
        }
    }

    @Override
    public final void zzp() throws RemoteException {
        zzbvv zzbvvVar = this.zzb;
        if (zzbvvVar != null) {
            zzbvvVar.zzj(ObjectWrapper.wrap(this.zza));
        }
    }

    @Override
    public final void zzq(String str, String str2) throws RemoteException {
    }

    @Override
    public final void zzr(zzbgn zzbgnVar, String str) throws RemoteException {
    }

    @Override
    public final void zzs(@Nullable zzbvw zzbvwVar) throws RemoteException {
    }

    @Override
    public final void zzt(zzbwa zzbwaVar) throws RemoteException {
        zzbvv zzbvvVar = this.zzb;
        if (zzbvvVar != null) {
            zzbvvVar.zzm(ObjectWrapper.wrap(this.zza), new zzbvw(zzbwaVar.zzf(), zzbwaVar.zze()));
        }
    }

    @Override
    public final void zzu() throws RemoteException {
        zzbvv zzbvvVar = this.zzb;
        if (zzbvvVar != null) {
            zzbvvVar.zzn(ObjectWrapper.wrap(this.zza));
        }
    }

    @Override
    public final void zzv() throws RemoteException {
        zzbvv zzbvvVar = this.zzb;
        if (zzbvvVar != null) {
            zzbvvVar.zzo(ObjectWrapper.wrap(this.zza));
        }
    }

    @Override
    public final void zzw() throws RemoteException {
    }

    @Override
    public final void zzx() throws RemoteException {
    }

    @Override
    public final void zzy() throws RemoteException {
    }

    @Override
    public final void zzz() throws RemoteException {
        zzbvv zzbvvVar = this.zzb;
        if (zzbvvVar != null) {
            zzbvvVar.zzp(ObjectWrapper.wrap(this.zza));
        }
    }
}
