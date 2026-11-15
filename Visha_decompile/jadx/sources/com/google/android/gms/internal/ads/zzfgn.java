package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.client.zze;
import defpackage.cye;
import defpackage.gsh;
import defpackage.sze;
import defpackage.umh;
import defpackage.wrh;
import defpackage.zef;
import io.appmetrica.analytics.plugins.PluginErrorDetails;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

public final class zzfgn implements Runnable {
    private final zzfgq zzb;
    private String zzc;
    private String zze;
    private umh zzf;
    private zze zzg;
    private Future zzh;
    private final List zza = new ArrayList();
    private int zzi = 2;
    private zzfgs zzd = zzfgs.SCAR_REQUEST_TYPE_UNSPECIFIED;

    public zzfgn(zzfgq zzfgqVar) {
        this.zzb = zzfgqVar;
    }

    @Override
    public final synchronized void run() {
        zzh();
    }

    public final synchronized zzfgn zza(wrh wrhVar) {
        try {
            if (((Boolean) sze.c.e()).booleanValue()) {
                List list = this.zza;
                wrhVar.zzj();
                list.add(wrhVar);
                Future future = this.zzh;
                if (future != null) {
                    future.cancel(false);
                }
                this.zzh = zef.d.schedule(this, ((Integer) zzbd.zzc().b(cye.S8)).intValue(), TimeUnit.MILLISECONDS);
            }
        } catch (Throwable th) {
            throw th;
        }
        return this;
    }

    public final synchronized zzfgn zzb(String str) {
        if (((Boolean) sze.c.e()).booleanValue() && gsh.e(str)) {
            this.zzc = str;
        }
        return this;
    }

    public final synchronized zzfgn zzc(zze zzeVar) {
        if (((Boolean) sze.c.e()).booleanValue()) {
            this.zzg = zzeVar;
        }
        return this;
    }

    public final synchronized zzfgn zzd(ArrayList arrayList) {
        try {
            if (((Boolean) sze.c.e()).booleanValue()) {
                if (arrayList.contains("banner") || arrayList.contains(AdFormat.BANNER.name())) {
                    this.zzi = 3;
                } else if (arrayList.contains("interstitial") || arrayList.contains(AdFormat.INTERSTITIAL.name())) {
                    this.zzi = 4;
                } else if (arrayList.contains(PluginErrorDetails.Platform.NATIVE) || arrayList.contains(AdFormat.NATIVE.name())) {
                    this.zzi = 8;
                } else if (arrayList.contains("rewarded") || arrayList.contains(AdFormat.REWARDED.name())) {
                    this.zzi = 5;
                } else if (arrayList.contains("app_open_ad")) {
                    this.zzi = 7;
                } else if (arrayList.contains("rewarded_interstitial") || arrayList.contains(AdFormat.REWARDED_INTERSTITIAL.name())) {
                    this.zzi = 6;
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return this;
    }

    public final synchronized zzfgn zze(String str) {
        if (((Boolean) sze.c.e()).booleanValue()) {
            this.zze = str;
        }
        return this;
    }

    public final synchronized zzfgn zzf(Bundle bundle) {
        if (((Boolean) sze.c.e()).booleanValue()) {
            this.zzd = com.google.android.gms.ads.nonagon.signalgeneration.zzaa.zza(bundle);
        }
        return this;
    }

    public final synchronized zzfgn zzg(umh umhVar) {
        if (((Boolean) sze.c.e()).booleanValue()) {
            this.zzf = umhVar;
        }
        return this;
    }

    public final synchronized void zzh() {
        try {
            if (((Boolean) sze.c.e()).booleanValue()) {
                Future future = this.zzh;
                if (future != null) {
                    future.cancel(false);
                }
                List<wrh> list = this.zza;
                for (wrh wrhVar : list) {
                    int i = this.zzi;
                    if (i != 2) {
                        wrhVar.c(i);
                    }
                    if (!TextUtils.isEmpty(this.zzc)) {
                        wrhVar.zze(this.zzc);
                    }
                    if (!TextUtils.isEmpty(this.zze) && !wrhVar.zzl()) {
                        wrhVar.zzd(this.zze);
                    }
                    umh umhVar = this.zzf;
                    if (umhVar != null) {
                        wrhVar.e(umhVar);
                    } else {
                        zze zzeVar = this.zzg;
                        if (zzeVar != null) {
                            wrhVar.a(zzeVar);
                        }
                    }
                    wrhVar.d(this.zzd);
                    this.zzb.zzc(wrhVar.zzm());
                }
                list.clear();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized zzfgn zzi(int i) {
        if (((Boolean) sze.c.e()).booleanValue()) {
            this.zzi = i;
        }
        return this;
    }
}
