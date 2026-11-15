package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzv;
import defpackage.cye;
import defpackage.lwe;
import defpackage.mwe;
import defpackage.nwe;
import defpackage.pwe;
import defpackage.zef;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

public final class m0 {
    public ScheduledFuture a = null;
    public final Runnable b = new zzbak(this);
    public final Object c = new Object();
    public pwe d;
    public Context e;
    public zzbau f;

    public static void h(m0 m0Var) {
        synchronized (m0Var.c) {
            try {
                pwe pweVar = m0Var.d;
                if (pweVar == null) {
                    return;
                }
                if (pweVar.isConnected() || m0Var.d.isConnecting()) {
                    m0Var.d.disconnect();
                }
                m0Var.d = null;
                m0Var.f = null;
                Binder.flushPendingCommands();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final long a(zzbas zzbasVar) {
        synchronized (this.c) {
            try {
                if (this.f == null) {
                    return -2L;
                }
                if (this.d.I()) {
                    try {
                        return this.f.zze(zzbasVar);
                    } catch (RemoteException e) {
                        int i = zze.zza;
                        zzo.zzh("Unable to call into cache service.", e);
                    }
                }
                return -2L;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final zzbap b(zzbas zzbasVar) {
        synchronized (this.c) {
            if (this.f == null) {
                return new zzbap();
            }
            try {
                if (this.d.I()) {
                    return this.f.zzg(zzbasVar);
                }
                return this.f.zzf(zzbasVar);
            } catch (RemoteException e) {
                int i = zze.zza;
                zzo.zzh("Unable to call into cache service.", e);
                return new zzbap();
            }
        }
    }

    public final synchronized pwe d(com.google.android.gms.common.internal.a.InterfaceC0093a interfaceC0093a, com.google.android.gms.common.internal.a.b bVar) {
        return new pwe(this.e, zzv.zzu().zzb(), interfaceC0093a, bVar);
    }

    public final void i(Context context) {
        if (context == null) {
            return;
        }
        synchronized (this.c) {
            try {
                if (this.e != null) {
                    return;
                }
                this.e = context.getApplicationContext();
                if (((Boolean) zzbd.zzc().b(cye.t4)).booleanValue()) {
                    l();
                } else {
                    if (((Boolean) zzbd.zzc().b(cye.s4)).booleanValue()) {
                        zzv.zzb().c(new lwe(this));
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void j() {
        if (((Boolean) zzbd.zzc().b(cye.u4)).booleanValue()) {
            synchronized (this.c) {
                try {
                    l();
                    ScheduledFuture scheduledFuture = this.a;
                    if (scheduledFuture != null) {
                        scheduledFuture.cancel(false);
                    }
                    this.a = zef.d.schedule(this.b, ((Long) zzbd.zzc().b(cye.v4)).longValue(), TimeUnit.MILLISECONDS);
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public final void l() {
        synchronized (this.c) {
            try {
                if (this.e != null && this.d == null) {
                    pwe pweVarD = d(new mwe(this), new nwe(this));
                    this.d = pweVarD;
                    pweVarD.checkAvailabilityAndConnect();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
