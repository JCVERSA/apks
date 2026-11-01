package com.google.android.gms.internal.ads;

import android.util.Base64;
import androidx.webkit.WebViewCompat;
import androidx.webkit.WebViewFeature;
import app.fast.ssh.ProtectedFastSSH;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

public final class zzcny {
    private String zza;
    private zzija zzb;
    private zzims zzc;
    private final ScheduledExecutorService zzd;
    private final AtomicBoolean zze = new AtomicBoolean(false);

    zzcny(zzcnl zzcnlVar, ScheduledExecutorService scheduledExecutorService) {
        this.zzd = scheduledExecutorService;
    }

    private final void zzf() {
        try {
            String variationsHeader = WebViewFeature.isFeatureSupported(ProtectedFastSSH.s("慙")) ? WebViewCompat.getVariationsHeader() : null;
            if (variationsHeader != null && !variationsHeader.isEmpty()) {
                this.zza = variationsHeader;
                byte[] bArrDecode = Base64.decode(variationsHeader, 10);
                this.zzb = zzija.zzc(bArrDecode, zziew.zzc());
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzko)).booleanValue()) {
                    this.zzc = zzims.zzc(bArrDecode, zziew.zzc());
                }
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzkm)).booleanValue()) {
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzkl)).booleanValue()) {
                        this.zzd.schedule(new zzcnx(this), ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzkn)).intValue(), TimeUnit.MINUTES);
                    }
                }
            }
        } catch (zzige | IllegalArgumentException e) {
            com.google.android.gms.ads.internal.zzt.zzh().zzi(e, ProtectedFastSSH.s("慚"));
        }
    }

    public final void zza() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzkl)).booleanValue() && !this.zze.getAndSet(true)) {
            zzf();
        }
    }

    public final String zzb() {
        zzims zzimsVar = this.zzc;
        if (zzimsVar != null) {
            return Base64.encodeToString(zzimsVar.zzaN(), 10);
        }
        return null;
    }

    public final String zzc() {
        return this.zza;
    }

    public final zzija zzd() {
        return this.zzb;
    }

    final void zze() {
        zzf();
    }
}
