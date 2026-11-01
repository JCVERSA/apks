package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import app.fast.ssh.ProtectedFastSSH;
import java.util.Arrays;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

public final class zzbav implements zzbay {
    private static zzbav zzb;
    private final Context zzc;
    private final zzfzs zzd;
    private final zzfzz zze;
    private final zzgab zzf;
    private final zzbca zzg;
    private final zzfyi zzh;
    private final Executor zzi;
    private final zzbei zzj;
    private final zzfzy zzk;
    private final zzbcp zzm;
    private final zzbch zzn;
    private final zzbby zzo;
    private volatile boolean zzq;
    private volatile boolean zzr;
    volatile long zza = 0;
    private final Object zzp = new Object();
    private final CountDownLatch zzl = new CountDownLatch(1);

    zzbav(Context context, zzfyi zzfyiVar, zzfzs zzfzsVar, zzfzz zzfzzVar, zzgab zzgabVar, zzbca zzbcaVar, Executor executor, zzfyd zzfydVar, zzbei zzbeiVar, zzbcp zzbcpVar, zzbch zzbchVar, zzbby zzbbyVar) {
        this.zzr = false;
        this.zzc = context;
        this.zzh = zzfyiVar;
        this.zzd = zzfzsVar;
        this.zze = zzfzzVar;
        this.zzf = zzgabVar;
        this.zzg = zzbcaVar;
        this.zzi = executor;
        this.zzj = zzbeiVar;
        this.zzm = zzbcpVar;
        this.zzn = zzbchVar;
        this.zzo = zzbbyVar;
        this.zzr = false;
        this.zzk = new zzbat(this, zzfydVar);
    }

    public static synchronized zzbav zza(Context context, zzaxc zzaxcVar, boolean z) {
        zzfyj zzfyjVarZzh;
        zzfyjVarZzh = zzfyk.zzh();
        zzfyjVarZzh.zza(zzaxcVar.zza());
        zzfyjVarZzh.zzb(zzaxcVar.zzb());
        return zzs(context, Executors.newCachedThreadPool(), zzfyjVarZzh.zzh(), z);
    }

    private static synchronized zzbav zzs(Context context, Executor executor, zzfyk zzfykVar, boolean z) {
        if (zzb == null) {
            zzfyi zzfyiVarZza = zzfyi.zza(context, executor, z);
            zzbbj zzbbjVarZza = zzbbj.zza(context);
            zzbcp zzbcpVarZza = zzbcp.zza(context, executor);
            zzbch zzbchVar = new zzbch();
            zzbby zzbbyVar = new zzbby();
            zzfyy zzfyyVarZza = zzfyy.zza(context, executor, zzfyiVarZza, zzfykVar);
            zzbbz zzbbzVar = new zzbbz(context);
            zzbca zzbcaVar = new zzbca(zzfykVar, zzfyyVarZza, new zzbcn(context, zzbbzVar), zzbbzVar, zzbbjVarZza, zzbcpVarZza, zzbchVar, zzbbyVar);
            zzbei zzbeiVarZzb = zzfzf.zzb(context, zzfyiVarZza);
            zzfyd zzfydVar = new zzfyd();
            zzbav zzbavVar = new zzbav(context, zzfyiVarZza, new zzfzs(context, zzbeiVarZzb), new zzfzz(context, zzbeiVarZzb, new zzbas(zzfyiVarZza), ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzdq)).booleanValue()), new zzgab(context, zzbcaVar, zzfyiVarZza, zzfydVar, false), zzbcaVar, executor, zzfydVar, zzbeiVarZzb, zzbcpVarZza, zzbchVar, zzbbyVar);
            zzb = zzbavVar;
            zzbavVar.zzc();
            zzb.zzm();
        }
        return zzb;
    }

    private final zzfzr zzt(int i) {
        if (zzfzf.zza(this.zzj)) {
            return ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzdo)).booleanValue() ? this.zze.zzc(1) : this.zzd.zzb(1);
        }
        return null;
    }

    public final synchronized boolean zzb() {
        return this.zzr;
    }

    final synchronized void zzc() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        zzfzr zzfzrVarZzt = zzt(1);
        if (zzfzrVarZzt == null) {
            this.zzh.zzb(4013, System.currentTimeMillis() - jCurrentTimeMillis);
        } else if (this.zzf.zza(zzfzrVarZzt)) {
            this.zzr = true;
            this.zzl.countDown();
        }
    }

    @Override
    public final void zzd(MotionEvent motionEvent) {
        zzfyl zzfylVarZzb = this.zzf.zzb();
        if (zzfylVarZzb != null) {
            try {
                zzfylVarZzb.zzd(null, motionEvent);
            } catch (zzgaa e) {
                this.zzh.zzc(e.zza(), -1L, e);
            }
        }
    }

    @Override
    public final void zze(int i, int i2, int i3) {
        DisplayMetrics displayMetrics;
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zznG)).booleanValue() || (displayMetrics = this.zzc.getResources().getDisplayMetrics()) == null) {
            return;
        }
        float f = i;
        float f2 = i2;
        MotionEvent motionEventObtain = MotionEvent.obtain(0L, 0L, 0, f * displayMetrics.density, f2 * displayMetrics.density, 0.0f, 0.0f, 0, 0.0f, 0.0f, 0, 0);
        zzd(motionEventObtain);
        motionEventObtain.recycle();
        MotionEvent motionEventObtain2 = MotionEvent.obtain(0L, 0L, 2, f * displayMetrics.density, f2 * displayMetrics.density, 0.0f, 0.0f, 0, 0.0f, 0.0f, 0, 0);
        zzd(motionEventObtain2);
        motionEventObtain2.recycle();
        MotionEvent motionEventObtain3 = MotionEvent.obtain(0L, i3, 1, f * displayMetrics.density, f2 * displayMetrics.density, 0.0f, 0.0f, 0, 0.0f, 0.0f, 0, 0);
        zzd(motionEventObtain3);
        motionEventObtain3.recycle();
    }

    @Override
    public final String zzf(Context context, String str, View view, Activity activity) {
        this.zzm.zzb();
        this.zzn.zzc();
        zzm();
        zzfyl zzfylVarZzb = this.zzf.zzb();
        if (zzfylVarZzb == null) {
            return "";
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        String strZzc = zzfylVarZzb.zzc(context, null, str, view, activity);
        this.zzh.zzd(5000, System.currentTimeMillis() - jCurrentTimeMillis, strZzc, null);
        return strZzc;
    }

    @Override
    public final String zzg(Context context, String str, View view) {
        return zzf(context, str, view, null);
    }

    @Override
    public final void zzh(View view) {
        this.zzg.zza(view);
    }

    @Override
    public final void zzi(StackTraceElement[] stackTraceElementArr) {
        this.zzo.zza(Arrays.asList(stackTraceElementArr));
    }

    @Override
    public final String zzj(Context context, View view, Activity activity) {
        this.zzm.zzb();
        this.zzn.zzb(context, view);
        zzm();
        zzfyl zzfylVarZzb = this.zzf.zzb();
        if (zzfylVarZzb == null) {
            return "";
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        String strZzb = zzfylVarZzb.zzb(context, null, view, activity);
        this.zzh.zzd(5002, System.currentTimeMillis() - jCurrentTimeMillis, strZzb, null);
        return strZzb;
    }

    @Override
    public final String zzk(Context context) {
        return ProtectedFastSSH.s("儵");
    }

    @Override
    public final String zzl(Context context) {
        this.zzm.zzb();
        this.zzn.zza();
        zzm();
        zzfyl zzfylVarZzb = this.zzf.zzb();
        if (zzfylVarZzb == null) {
            return "";
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        String strZza = zzfylVarZzb.zza(context, null);
        this.zzh.zzd(5001, System.currentTimeMillis() - jCurrentTimeMillis, strZza, null);
        return strZza;
    }

    public final void zzm() {
        if (this.zzq) {
            return;
        }
        synchronized (this.zzp) {
            if (!this.zzq) {
                if ((System.currentTimeMillis() / 1000) - this.zza < 3600) {
                    return;
                }
                zzfzr zzfzrVarZzc = this.zzf.zzc();
                if ((zzfzrVarZzc == null || zzfzrVarZzc.zze(3600L)) && zzfzf.zza(this.zzj)) {
                    this.zzi.execute(new zzbau(this));
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:39:0x00d4 A[Catch: all -> 0x0120, zzige -> 0x0122, TryCatch #1 {zzige -> 0x0122, blocks: (B:6:0x0021, B:8:0x0036, B:12:0x003c, B:13:0x0048, B:15:0x0056, B:17:0x0064, B:20:0x0071, B:29:0x00a2, B:33:0x00bb, B:39:0x00d4, B:40:0x00e1, B:42:0x00e7, B:44:0x00ef, B:45:0x00f1, B:36:0x00c5, B:37:0x00cc, B:23:0x0078, B:25:0x007e, B:27:0x0090, B:46:0x00fb, B:47:0x0108, B:48:0x0115), top: B:58:0x0021, outer: #0 }] */
    final void zzn() {
        String str;
        String strZzb;
        int length;
        zzfzr zzfzrVarZzt;
        zzber zzberVarZza;
        boolean zZza;
        long jCurrentTimeMillis = System.currentTimeMillis();
        zzfzr zzfzrVarZzt2 = zzt(1);
        if (zzfzrVarZzt2 != null) {
            String strZza = zzfzrVarZzt2.zza().zza();
            strZzb = zzfzrVarZzt2.zza().zzb();
            str = strZza;
        } else {
            str = null;
            strZzb = null;
        }
        try {
            try {
                Context context = this.zzc;
                zzbei zzbeiVar = this.zzj;
                String strS = ProtectedFastSSH.s("儶");
                zzfyi zzfyiVar = this.zzh;
                zzfzw zzfzwVarZza = zzfyr.zza(context, 1, zzbeiVar, str, strZzb, strS, zzfyiVar);
                byte[] bArr = zzfzwVarZza.zzb;
                if (bArr == null || (length = bArr.length) == 0) {
                    zzfyiVar.zzb(5009, System.currentTimeMillis() - jCurrentTimeMillis);
                } else {
                    try {
                        zzbek zzbekVarZzd = zzbek.zzd(zziei.zzt(bArr, 0, length), zziew.zzb());
                        if (zzbekVarZzd.zza().zza().isEmpty() || zzbekVarZzd.zza().zzb().isEmpty() || zzbekVarZzd.zzc().zzA().length == 0 || ((zzfzrVarZzt = zzt(1)) != null && (zzberVarZza = zzfzrVarZzt.zza()) != null && zzbekVarZzd.zza().zza().equals(zzberVarZza.zza()) && zzbekVarZzd.zza().zzb().equals(zzberVarZza.zzb()))) {
                            this.zzh.zzb(5010, System.currentTimeMillis() - jCurrentTimeMillis);
                        } else {
                            zzfzy zzfzyVar = this.zzk;
                            int i = zzfzwVarZza.zzc;
                            if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzdo)).booleanValue()) {
                                zZza = this.zzd.zza(zzbekVarZzd, zzfzyVar);
                            } else if (i == 3) {
                                zZza = this.zze.zzb(zzbekVarZzd);
                            } else if (i == 4) {
                                zZza = this.zze.zza(zzbekVarZzd, zzfzyVar);
                            } else {
                                this.zzh.zzb(4009, System.currentTimeMillis() - jCurrentTimeMillis);
                            }
                            if (zZza) {
                                zzfzr zzfzrVarZzt3 = zzt(1);
                                if (zzfzrVarZzt3 != null) {
                                    if (this.zzf.zza(zzfzrVarZzt3)) {
                                        this.zzr = true;
                                    }
                                    this.zza = System.currentTimeMillis() / 1000;
                                }
                            } else {
                                this.zzh.zzb(4009, System.currentTimeMillis() - jCurrentTimeMillis);
                            }
                        }
                    } catch (NullPointerException unused) {
                        this.zzh.zzb(2030, System.currentTimeMillis() - jCurrentTimeMillis);
                    }
                }
            } catch (zzige e) {
                this.zzh.zzc(4002, System.currentTimeMillis() - jCurrentTimeMillis, e);
            }
        } finally {
            this.zzl.countDown();
        }
    }

    final zzfyi zzo() {
        return this.zzh;
    }

    final Object zzp() {
        return this.zzp;
    }

    final boolean zzq() {
        return this.zzq;
    }

    final void zzr(boolean z) {
        this.zzq = z;
    }
}
