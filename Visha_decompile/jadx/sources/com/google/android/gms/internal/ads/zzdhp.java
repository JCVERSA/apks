package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zzdz;
import com.google.android.gms.ads.internal.client.zzea;

public final class zzdhp extends zzdz {
    private final Object zza = new Object();
    private final zzea zzb;
    private final zzbpn zzc;

    public zzdhp(zzea zzeaVar, zzbpn zzbpnVar) {
        this.zzb = zzeaVar;
        this.zzc = zzbpnVar;
    }

    @Override
    public final float zze() throws RemoteException {
        throw new RemoteException();
    }

    @Override
    public final float zzf() throws RemoteException {
        zzbpn zzbpnVar = this.zzc;
        if (zzbpnVar != null) {
            return zzbpnVar.zzg();
        }
        return 0.0f;
    }

    @Override
    public final float zzg() throws RemoteException {
        zzbpn zzbpnVar = this.zzc;
        if (zzbpnVar != null) {
            return zzbpnVar.zzh();
        }
        return 0.0f;
    }

    @Override
    public final int zzh() throws RemoteException {
        throw new RemoteException();
    }

    @Override
    public final com.google.android.gms.ads.internal.client.zzed zzi() throws RemoteException {
        synchronized (this.zza) {
            try {
                zzea zzeaVar = this.zzb;
                if (zzeaVar == null) {
                    return null;
                }
                return zzeaVar.zzi();
            } catch (Throwable th) {
                throw th;
            }
        }
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
    public final void zzm(com.google.android.gms.ads.internal.client.zzed zzedVar) throws RemoteException {
        synchronized (this.zza) {
            try {
                zzea zzeaVar = this.zzb;
                if (zzeaVar != null) {
                    zzeaVar.zzm(zzedVar);
                }
            } catch (Throwable th) {
                throw th;
            }
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
