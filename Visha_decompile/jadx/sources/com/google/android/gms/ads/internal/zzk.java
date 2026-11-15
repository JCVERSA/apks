package com.google.android.gms.ads.internal;

import android.app.Activity;
import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.ads.internal.client.zzbb;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.internal.ads.c0;
import com.google.android.gms.internal.ads.e;
import com.google.android.gms.internal.ads.j8;
import defpackage.are;
import defpackage.cre;
import defpackage.cye;
import defpackage.ere;
import defpackage.fyh;
import defpackage.g4j;
import defpackage.qxh;
import defpackage.rwh;
import defpackage.xqe;
import defpackage.yne;
import defpackage.zef;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;

public final class zzk implements Runnable, are {
    private static final long zzc = System.currentTimeMillis();

    @VisibleForTesting
    protected boolean zza;
    private final boolean zzg;
    private final boolean zzh;
    private final Executor zzi;
    private final rwh zzj;
    private Context zzk;
    private final Context zzl;
    private VersionInfoParcel zzm;
    private final VersionInfoParcel zzn;
    private final boolean zzo;
    private int zzp;
    private final List zzd = new Vector();
    private final AtomicReference zze = new AtomicReference();
    private final AtomicReference zzf = new AtomicReference();
    final CountDownLatch zzb = new CountDownLatch(1);

    public zzk(Context context, VersionInfoParcel versionInfoParcel) {
        this.zzk = context;
        this.zzl = context;
        this.zzm = versionInfoParcel;
        this.zzn = versionInfoParcel;
        ExecutorService executorServiceNewCachedThreadPool = Executors.newCachedThreadPool();
        this.zzi = executorServiceNewCachedThreadPool;
        boolean zBooleanValue = ((Boolean) zzbd.zzc().b(cye.E2)).booleanValue();
        this.zzo = zBooleanValue;
        this.zzj = rwh.a(context, executorServiceNewCachedThreadPool, zBooleanValue);
        this.zzg = ((Boolean) zzbd.zzc().b(cye.B2)).booleanValue();
        this.zzh = ((Boolean) zzbd.zzc().b(cye.F2)).booleanValue();
        if (((Boolean) zzbd.zzc().b(cye.D2)).booleanValue()) {
            this.zzp = 2;
        } else {
            this.zzp = 1;
        }
        if (!((Boolean) zzbd.zzc().b(cye.H3)).booleanValue()) {
            this.zza = zzi();
        }
        if (((Boolean) zzbd.zzc().b(cye.B3)).booleanValue()) {
            zef.a.execute(this);
            return;
        }
        zzbb.zzb();
        if (com.google.android.gms.ads.internal.util.client.zzf.zzv()) {
            zef.a.execute(this);
        } else {
            run();
        }
    }

    public static void zzc(zzk zzkVar, boolean z) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        try {
            zzu(zzkVar.zzl, zzkVar.zzn, z, zzkVar.zzo).g();
        } catch (NullPointerException e) {
            zzkVar.zzj.c(2027, System.currentTimeMillis() - jCurrentTimeMillis, e);
        }
    }

    @Nullable
    private final are zzq() {
        return zzm() == 2 ? (are) this.zzf.get() : (are) this.zze.get();
    }

    private final void zzr() {
        List<Object[]> list = this.zzd;
        are areVarZzq = zzq();
        if (list.isEmpty() || areVarZzq == null) {
            return;
        }
        for (Object[] objArr : list) {
            int length = objArr.length;
            if (length == 1) {
                areVarZzq.zzk((MotionEvent) objArr[0]);
            } else if (length == 3) {
                areVarZzq.zzl(((Integer) objArr[0]).intValue(), ((Integer) objArr[1]).intValue(), ((Integer) objArr[2]).intValue());
            }
        }
        list.clear();
    }

    private final void zzs(boolean z) {
        String str = this.zzm.afmaVersion;
        Context contextZzt = zzt(this.zzk);
        yne yneVarB0 = e.b0();
        yneVarB0.v(z);
        yneVarB0.w(str);
        e eVar = (e) yneVarB0.q();
        int i = ere.I;
        this.zze.set(ere.o(contextZzt, new cre(eVar)));
    }

    private static final Context zzt(Context context) {
        Context applicationContext = context.getApplicationContext();
        return applicationContext == null ? context : applicationContext;
    }

    private static final c0 zzu(Context context, VersionInfoParcel versionInfoParcel, boolean z, boolean z2) {
        yne yneVarB0 = e.b0();
        yneVarB0.v(z);
        yneVarB0.w(versionInfoParcel.afmaVersion);
        return c0.a(zzt(context), (e) yneVarB0.q(), z2);
    }

    @Override
    public final void run() {
        try {
            if (((Boolean) zzbd.zzc().b(cye.H3)).booleanValue()) {
                this.zza = zzi();
            }
            boolean z = this.zzm.isClientJar;
            final boolean z2 = false;
            if (!((Boolean) zzbd.zzc().b(cye.j1)).booleanValue() && z) {
                z2 = true;
            }
            if (zzm() == 1) {
                zzs(z2);
                if (this.zzp == 2) {
                    this.zzi.execute(new Runnable() {
                        @Override
                        public final void run() {
                            zzk.zzc(this.zza, z2);
                        }
                    });
                }
            } else {
                long jCurrentTimeMillis = System.currentTimeMillis();
                try {
                    c0 c0VarZzu = zzu(this.zzk, this.zzm, z2, this.zzo);
                    this.zzf.set(c0VarZzu);
                    if (this.zzh && !c0VarZzu.i()) {
                        this.zzp = 1;
                        zzs(z2);
                    }
                } catch (NullPointerException e) {
                    this.zzp = 1;
                    zzs(z2);
                    this.zzj.c(2031, System.currentTimeMillis() - jCurrentTimeMillis, e);
                }
            }
            this.zzb.countDown();
            this.zzk = null;
            this.zzm = null;
        } catch (Throwable th) {
            this.zzb.countDown();
            this.zzk = null;
            this.zzm = null;
            throw th;
        }
    }

    public final String zzb(Context context, byte[] bArr) {
        are areVarZzq;
        if (!zzj() || (areVarZzq = zzq()) == null) {
            return "";
        }
        zzr();
        return areVarZzq.zzf(zzt(context));
    }

    @Override
    public final String zzd(Context context, String str, View view) {
        return zze(context, str, view, null);
    }

    @Override
    public final String zze(Context context, String str, View view, Activity activity) {
        if (!zzj()) {
            return "";
        }
        are areVarZzq = zzq();
        if (((Boolean) zzbd.zzc().b(cye.Ma)).booleanValue()) {
            zzv.zzq();
            zzs.zzK(view, 4, null);
        }
        if (areVarZzq == null) {
            return "";
        }
        zzr();
        return areVarZzq.zze(zzt(context), str, view, activity);
    }

    @Override
    public final String zzf(Context context) {
        return zzb(context, null);
    }

    @Override
    public final String zzg(final Context context) {
        try {
            return (String) j8.j(new Callable() {
                @Override
                public final Object call() {
                    return this.zza.zzb(context, null);
                }
            }, this.zzi).get(((Integer) zzbd.zzc().b(cye.V2)).intValue(), TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException unused) {
            return Integer.toString(17);
        } catch (TimeoutException unused2) {
            return xqe.a(context, this.zzn.afmaVersion, zzc, true);
        }
    }

    @Override
    public final String zzh(Context context, View view, Activity activity) {
        if (!((Boolean) zzbd.zzc().b(cye.La)).booleanValue()) {
            are areVarZzq = zzq();
            if (((Boolean) zzbd.zzc().b(cye.Ma)).booleanValue()) {
                zzv.zzq();
                zzs.zzK(view, 2, null);
            }
            return areVarZzq != null ? areVarZzq.zzh(context, view, activity) : "";
        }
        if (!zzj()) {
            return "";
        }
        are areVarZzq2 = zzq();
        if (((Boolean) zzbd.zzc().b(cye.Ma)).booleanValue()) {
            zzv.zzq();
            zzs.zzK(view, 2, null);
        }
        return areVarZzq2 != null ? areVarZzq2.zzh(context, view, activity) : "";
    }

    public final boolean zzi() {
        Context context = this.zzk;
        g4j g4jVar = new g4j(this);
        rwh rwhVar = this.zzj;
        return new fyh(this.zzk, qxh.b(context, rwhVar), g4jVar, ((Boolean) zzbd.zzc().b(cye.C2)).booleanValue()).d(1);
    }

    public final boolean zzj() {
        try {
            this.zzb.await();
            return true;
        } catch (InterruptedException e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            zzo.zzk("Interrupted during GADSignals creation.", e);
            return false;
        }
    }

    @Override
    public final void zzk(MotionEvent motionEvent) {
        are areVarZzq = zzq();
        if (areVarZzq == null) {
            this.zzd.add(new Object[]{motionEvent});
        } else {
            zzr();
            areVarZzq.zzk(motionEvent);
        }
    }

    @Override
    public final void zzl(int i, int i2, int i3) {
        are areVarZzq = zzq();
        if (areVarZzq == null) {
            this.zzd.add(new Object[]{Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3)});
        } else {
            zzr();
            areVarZzq.zzl(i, i2, i3);
        }
    }

    public final int zzm() {
        if (!this.zzg || this.zza) {
            return this.zzp;
        }
        return 1;
    }

    @Override
    public final void zzn(StackTraceElement[] stackTraceElementArr) {
        are areVarZzq;
        are areVarZzq2;
        if (((Boolean) zzbd.zzc().b(cye.b3)).booleanValue()) {
            if (this.zzb.getCount() != 0 || (areVarZzq2 = zzq()) == null) {
                return;
            }
            areVarZzq2.zzn(stackTraceElementArr);
            return;
        }
        if (!zzj() || (areVarZzq = zzq()) == null) {
            return;
        }
        areVarZzq.zzn(stackTraceElementArr);
    }

    @Override
    public final void zzo(View view) {
        are areVarZzq = zzq();
        if (areVarZzq != null) {
            areVarZzq.zzo(view);
        }
    }

    public final int zzp() {
        return this.zzp;
    }
}
