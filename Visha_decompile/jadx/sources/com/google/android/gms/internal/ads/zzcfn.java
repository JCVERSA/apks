package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.client.zzdz;
import com.google.android.gms.ads.internal.client.zzfw;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.transsion.dbdata.beans.media.PlayAudioData;
import defpackage.chf;
import defpackage.cye;
import defpackage.s71;
import defpackage.zef;
import java.util.HashMap;
import java.util.Map;

public final class zzcfn extends zzdz {
    private final chf zza;
    private final boolean zzc;
    private final boolean zzd;
    private int zze;

    @Nullable
    private com.google.android.gms.ads.internal.client.zzed zzf;
    private boolean zzg;
    private float zzi;
    private float zzj;
    private float zzk;
    private boolean zzl;
    private boolean zzm;
    private zzbhb zzn;
    private final Object zzb = new Object();
    private boolean zzh = true;

    public zzcfn(chf chfVar, float f, boolean z, boolean z2) {
        this.zza = chfVar;
        this.zzi = f;
        this.zzc = z;
        this.zzd = z2;
    }

    public static void zzd(zzcfn zzcfnVar, int i, int i2, boolean z, boolean z2) {
        int i3;
        boolean z3;
        boolean z4;
        com.google.android.gms.ads.internal.client.zzed zzedVar;
        com.google.android.gms.ads.internal.client.zzed zzedVar2;
        com.google.android.gms.ads.internal.client.zzed zzedVar3;
        synchronized (zzcfnVar.zzb) {
            try {
                boolean z5 = zzcfnVar.zzg;
                if (z5 || i2 != 1) {
                    i3 = i2;
                    z3 = false;
                } else {
                    i2 = 1;
                    i3 = 1;
                    z3 = true;
                }
                boolean z6 = i != i2;
                if (z6 && i3 == 1) {
                    z4 = true;
                    i3 = 1;
                } else {
                    z4 = false;
                }
                boolean z7 = z6 && i3 == 2;
                boolean z8 = z6 && i3 == 3;
                zzcfnVar.zzg = z5 || z3;
                if (z3) {
                    try {
                        com.google.android.gms.ads.internal.client.zzed zzedVar4 = zzcfnVar.zzf;
                        if (zzedVar4 != null) {
                            zzedVar4.zzi();
                        }
                    } catch (RemoteException e) {
                        zzo.zzl("#007 Could not call remote method.", e);
                    }
                }
                if (z4 && (zzedVar3 = zzcfnVar.zzf) != null) {
                    zzedVar3.zzh();
                }
                if (z7 && (zzedVar2 = zzcfnVar.zzf) != null) {
                    zzedVar2.zzg();
                }
                if (z8) {
                    com.google.android.gms.ads.internal.client.zzed zzedVar5 = zzcfnVar.zzf;
                    if (zzedVar5 != null) {
                        zzedVar5.zze();
                    }
                    zzcfnVar.zza.zzw();
                }
                if (z != z2 && (zzedVar = zzcfnVar.zzf) != null) {
                    zzedVar.zzf(z2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private final void zzw(final int i, final int i2, final boolean z, final boolean z2) {
        zef.f.execute(new Runnable() {
            @Override
            public final void run() {
                zzcfn.zzd(this.zza, i, i2, z, z2);
            }
        });
    }

    private final void zzx(String str, @Nullable Map map) {
        final HashMap map2 = map == null ? new HashMap() : new HashMap(map);
        map2.put("action", str);
        zef.f.execute(new Runnable() {
            @Override
            public final void run() {
                this.zza.zza.zzd("pubVideoCmd", map2);
            }
        });
    }

    @Override
    public final float zze() {
        float f;
        synchronized (this.zzb) {
            f = this.zzk;
        }
        return f;
    }

    @Override
    public final float zzf() {
        float f;
        synchronized (this.zzb) {
            f = this.zzj;
        }
        return f;
    }

    @Override
    public final float zzg() {
        float f;
        synchronized (this.zzb) {
            f = this.zzi;
        }
        return f;
    }

    @Override
    public final int zzh() {
        int i;
        synchronized (this.zzb) {
            i = this.zze;
        }
        return i;
    }

    @Override
    @Nullable
    public final com.google.android.gms.ads.internal.client.zzed zzi() throws RemoteException {
        com.google.android.gms.ads.internal.client.zzed zzedVar;
        synchronized (this.zzb) {
            zzedVar = this.zzf;
        }
        return zzedVar;
    }

    @Override
    public final void zzj(boolean z) {
        zzx(true != z ? "unmute" : "mute", null);
    }

    @Override
    public final void zzk() {
        zzx("pause", null);
    }

    @Override
    public final void zzl() {
        zzx(PlayAudioData.TAG_NEED_PLAY, null);
    }

    @Override
    public final void zzm(@Nullable com.google.android.gms.ads.internal.client.zzed zzedVar) {
        synchronized (this.zzb) {
            this.zzf = zzedVar;
        }
    }

    @Override
    public final void zzn() {
        zzx("stop", null);
    }

    @Override
    public final boolean zzo() {
        boolean z;
        Object obj = this.zzb;
        boolean zZzp = zzp();
        synchronized (obj) {
            z = false;
            if (!zZzp) {
                try {
                    if (this.zzm && this.zzd) {
                        z = true;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return z;
    }

    @Override
    public final boolean zzp() {
        boolean z;
        synchronized (this.zzb) {
            try {
                z = false;
                if (this.zzc && this.zzl) {
                    z = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    @Override
    public final boolean zzq() {
        boolean z;
        synchronized (this.zzb) {
            z = this.zzh;
        }
        return z;
    }

    public final void zzr(float f, float f2, int i, boolean z, float f3) {
        boolean z2;
        boolean z3;
        int i2;
        synchronized (this.zzb) {
            try {
                z2 = true;
                if (f2 == this.zzi && f3 == this.zzk) {
                    z2 = false;
                }
                this.zzi = f2;
                if (!((Boolean) zzbd.zzc().b(cye.Qc)).booleanValue()) {
                    this.zzj = f;
                }
                z3 = this.zzh;
                this.zzh = z;
                i2 = this.zze;
                this.zze = i;
                float f4 = this.zzk;
                this.zzk = f3;
                if (Math.abs(f3 - f4) > 1.0E-4f) {
                    this.zza.zzF().invalidate();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z2) {
            try {
                zzbhb zzbhbVar = this.zzn;
                if (zzbhbVar != null) {
                    zzbhbVar.zze();
                }
            } catch (RemoteException e) {
                zzo.zzl("#007 Could not call remote method.", e);
            }
        }
        zzw(i2, i, z3, z);
    }

    public final void zzs(zzfw zzfwVar) {
        Object obj = this.zzb;
        boolean z = zzfwVar.zzb;
        boolean z2 = zzfwVar.zzc;
        synchronized (obj) {
            this.zzl = z;
            this.zzm = z2;
        }
        boolean z3 = zzfwVar.zza;
        zzx("initialState", s71.c("muteStart", true != z3 ? "0" : "1", "customControlsRequested", true != z ? "0" : "1", "clickToExpandRequested", true != z2 ? "0" : "1"));
    }

    public final void zzt(float f) {
        synchronized (this.zzb) {
            this.zzj = f;
        }
    }

    public final void zzu() {
        boolean z;
        int i;
        synchronized (this.zzb) {
            z = this.zzh;
            i = this.zze;
            this.zze = 3;
        }
        zzw(i, 3, z, z);
    }

    public final void zzv(zzbhb zzbhbVar) {
        synchronized (this.zzb) {
            this.zzn = zzbhbVar;
        }
    }
}
