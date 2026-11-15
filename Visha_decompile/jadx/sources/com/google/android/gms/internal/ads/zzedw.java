package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zze;
import defpackage.w0g;
import defpackage.x0g;

public final class zzedw extends zzbpd implements x0g {
    private zzbpe zza;
    private w0g zzb;

    @Override
    public final synchronized void zza(w0g w0gVar) {
        this.zzb = w0gVar;
    }

    public final synchronized void zzc(zzbpe zzbpeVar) {
        this.zza = zzbpeVar;
    }

    @Override
    public final synchronized void zze() throws RemoteException {
        zzbpe zzbpeVar = this.zza;
        if (zzbpeVar != null) {
            zzbpeVar.zze();
        }
    }

    @Override
    public final synchronized void zzf() throws RemoteException {
        zzbpe zzbpeVar = this.zza;
        if (zzbpeVar != null) {
            zzbpeVar.zzf();
        }
    }

    @Override
    public final synchronized void zzg(int i) throws RemoteException {
        w0g w0gVar = this.zzb;
        if (w0gVar != null) {
            w0gVar.zza(i);
        }
    }

    @Override
    public final synchronized void zzh(zze zzeVar) throws RemoteException {
        w0g w0gVar = this.zzb;
        if (w0gVar != null) {
            w0gVar.zzb(zzeVar);
        }
    }

    @Override
    public final synchronized void zzi(int i, String str) throws RemoteException {
        w0g w0gVar = this.zzb;
        if (w0gVar != null) {
            w0gVar.a(i, str);
        }
    }

    @Override
    public final synchronized void zzj(int i) throws RemoteException {
        zzbpe zzbpeVar = this.zza;
        if (zzbpeVar != null) {
            zzbpeVar.zzj(i);
        }
    }

    @Override
    public final synchronized void zzk(zze zzeVar) throws RemoteException {
        zzbpe zzbpeVar = this.zza;
        if (zzbpeVar != null) {
            zzbpeVar.zzk(zzeVar);
        }
    }

    @Override
    public final synchronized void zzl(String str) throws RemoteException {
        zzbpe zzbpeVar = this.zza;
        if (zzbpeVar != null) {
            zzbpeVar.zzl(str);
        }
    }

    @Override
    public final synchronized void zzm() throws RemoteException {
        zzbpe zzbpeVar = this.zza;
        if (zzbpeVar != null) {
            zzbpeVar.zzm();
        }
    }

    @Override
    public final synchronized void zzn() throws RemoteException {
        zzbpe zzbpeVar = this.zza;
        if (zzbpeVar != null) {
            zzbpeVar.zzn();
        }
    }

    @Override
    public final synchronized void zzo() throws RemoteException {
        try {
            zzbpe zzbpeVar = this.zza;
            if (zzbpeVar != null) {
                zzbpeVar.zzo();
            }
            w0g w0gVar = this.zzb;
            if (w0gVar != null) {
                w0gVar.zzd();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override
    public final synchronized void zzp() throws RemoteException {
        zzbpe zzbpeVar = this.zza;
        if (zzbpeVar != null) {
            zzbpeVar.zzp();
        }
    }

    @Override
    public final synchronized void zzq(String str, String str2) throws RemoteException {
        zzbpe zzbpeVar = this.zza;
        if (zzbpeVar != null) {
            zzbpeVar.zzq(str, str2);
        }
    }

    @Override
    public final synchronized void zzr(zzbgn zzbgnVar, String str) throws RemoteException {
    }

    @Override
    public final synchronized void zzs(zzbvw zzbvwVar) throws RemoteException {
        zzbpe zzbpeVar = this.zza;
        if (zzbpeVar != null) {
            zzbpeVar.zzs(zzbvwVar);
        }
    }

    @Override
    public final synchronized void zzt(zzbwa zzbwaVar) throws RemoteException {
        zzbpe zzbpeVar = this.zza;
        if (zzbpeVar != null) {
            zzbpeVar.zzt(zzbwaVar);
        }
    }

    @Override
    public final synchronized void zzu() throws RemoteException {
        zzbpe zzbpeVar = this.zza;
        if (zzbpeVar != null) {
            zzbpeVar.zzu();
        }
    }

    @Override
    public final synchronized void zzv() throws RemoteException {
        zzbpe zzbpeVar = this.zza;
        if (zzbpeVar != null) {
            zzbpeVar.zzv();
        }
    }

    @Override
    public final synchronized void zzw() throws RemoteException {
        zzbpe zzbpeVar = this.zza;
        if (zzbpeVar != null) {
            zzbpeVar.zzw();
        }
    }

    @Override
    public final synchronized void zzx() throws RemoteException {
        zzbpe zzbpeVar = this.zza;
        if (zzbpeVar != null) {
            zzbpeVar.zzx();
        }
    }

    @Override
    public final synchronized void zzy() throws RemoteException {
        zzbpe zzbpeVar = this.zza;
        if (zzbpeVar != null) {
            zzbpeVar.zzy();
        }
    }

    @Override
    public final synchronized void zzz() throws RemoteException {
        zzbpe zzbpeVar = this.zza;
        if (zzbpeVar != null) {
            zzbpeVar.zzz();
        }
    }
}
