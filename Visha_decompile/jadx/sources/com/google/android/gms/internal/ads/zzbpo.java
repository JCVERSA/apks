package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.client.zzdz;

public final class zzbpo extends zzdz {
    private final Object zza = new Object();

    @Nullable
    private volatile com.google.android.gms.ads.internal.client.zzed zzb;

    @Override
    public final float zze() throws RemoteException {
        throw new RemoteException();
    }

    @Override
    public final float zzf() throws RemoteException {
        throw new RemoteException();
    }

    @Override
    public final float zzg() throws RemoteException {
        throw new RemoteException();
    }

    @Override
    public final int zzh() throws RemoteException {
        throw new RemoteException();
    }

    @Override
    @Nullable
    public final com.google.android.gms.ads.internal.client.zzed zzi() throws RemoteException {
        com.google.android.gms.ads.internal.client.zzed zzedVar;
        synchronized (this.zza) {
            zzedVar = this.zzb;
        }
        return zzedVar;
    }

    @Override
    public final void zzj(boolean z) throws RemoteException {
        throw new RemoteException();
    }

    @Override
    public final void zzk() throws RemoteException {
        throw new RemoteException();
    }

    @Override
    public final void zzl() throws RemoteException {
        throw new RemoteException();
    }

    @Override
    public final void zzm(@Nullable com.google.android.gms.ads.internal.client.zzed zzedVar) throws RemoteException {
        synchronized (this.zza) {
            this.zzb = zzedVar;
        }
    }

    @Override
    public final void zzn() throws RemoteException {
        throw new RemoteException();
    }

    @Override
    public final boolean zzo() throws RemoteException {
        throw new RemoteException();
    }

    @Override
    public final boolean zzp() throws RemoteException {
        throw new RemoteException();
    }

    @Override
    public final boolean zzq() throws RemoteException {
        throw new RemoteException();
    }
}
