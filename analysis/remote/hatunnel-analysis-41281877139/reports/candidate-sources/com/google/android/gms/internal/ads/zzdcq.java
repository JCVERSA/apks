package com.google.android.gms.internal.ads;

import android.util.Base64;
import app.fast.ssh.ProtectedFastSSH;
import com.google.android.gms.common.util.Clock;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

public final class zzdcq implements com.google.android.gms.ads.internal.overlay.zzr {
    private final zzflo zzc;
    private final zzfld zzd;
    private final Clock zze;
    private final zzeaj zzf;
    private final ScheduledExecutorService zzg;
    private final Object zzb = new Object();
    final zzfsc zza = zzfsd.zza();
    private boolean zzh = false;
    private boolean zzi = false;

    zzdcq(zzflo zzfloVar, zzfld zzfldVar, Clock clock, zzeaj zzeajVar, ScheduledExecutorService scheduledExecutorService) {
        this.zzc = zzfloVar;
        this.zzd = zzfldVar;
        this.zze = clock;
        this.zzf = zzeajVar;
        this.zzg = scheduledExecutorService;
    }

    private final void zzn() {
        synchronized (this.zzb) {
            zzeaj zzeajVar = this.zzf;
            String str = this.zzc.zzb.zzb.zzb;
            String strEncodeToString = Base64.encodeToString(((zzfsd) this.zza.zzbm()).zzaN(), 1);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzoB)).booleanValue()) {
                zzeai zzeaiVarZza = zzeajVar.zza();
                zzeaiVarZza.zzc(ProtectedFastSSH.s("扳"), ProtectedFastSSH.s("扴"));
                zzeaiVarZza.zzc(ProtectedFastSSH.s("扵"), strEncodeToString);
                zzeaiVarZza.zzc(ProtectedFastSSH.s("扶"), str);
                zzeaiVarZza.zzf();
            }
        }
    }

    private final void zzo(int i) {
        synchronized (this.zzb) {
            if (!this.zzi && this.zzh) {
                zzfsc zzfscVar = this.zza;
                zzfqs zzfqsVarZza = zzfqt.zza();
                zzfqsVarZza.zzb(i);
                zzfqsVarZza.zza(this.zze.currentTimeMillis());
                zzfscVar.zza((zzfqt) zzfqsVarZza.zzbm());
                if (i == 10) {
                    zzn();
                    this.zzi = true;
                }
            }
        }
    }

    @Override
    public final void zzdV() {
    }

    @Override
    public final void zzdW(int i) {
    }

    @Override
    public final void zzdo() {
        zzo(3);
    }

    @Override
    public final void zzdp() {
        zzo(5);
    }

    @Override
    public final void zzdq() {
        zzo(4);
    }

    @Override
    public final void zzdv() {
        zzo(7);
    }

    @Override
    public final void zzdw() {
        zzo(8);
    }

    @Override
    public final void zzdx() {
        zzo(6);
    }

    @Override
    public final void zzdy() {
        zzo(9);
    }

    @Override
    public final void zzdz() {
        zzo(10);
    }

    @Override
    public final void zzh() {
    }

    public final void zzl() {
        synchronized (this.zzb) {
            int i = this.zzd.zzaE;
            if (i > 0 && !this.zzh) {
                this.zza.zzb(this.zze.currentTimeMillis());
                this.zzh = true;
                this.zzg.schedule(new zzdcp(this), i, TimeUnit.MILLISECONDS);
            }
        }
    }

    final void zzm() {
        synchronized (this.zzb) {
            if (this.zzi) {
                return;
            }
            this.zzi = true;
            zzn();
        }
    }
}
