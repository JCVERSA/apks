package com.google.android.gms.internal.ads;

import app.fast.ssh.ProtectedFastSSH;
import com.google.android.gms.common.util.ClientLibraryUtils;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public final class zzcgj {
    public static final zzhdi zza;
    public static final zzhdi zzb;
    public static final zzhdi zzc;
    public static final ScheduledExecutorService zzd;
    public static final zzhdj zze;
    public static final zzhdi zzf;
    public static final ExecutorService zzg;
    public static final zzhdi zzh;

    /* JADX WARN: Code duplicated, block: B:14:0x009f  */
    static {
        ExecutorService threadPoolExecutor;
        ExecutorService executorServiceZzb;
        ExecutorService executorServiceZzd;
        boolean zIsPackageSide = ClientLibraryUtils.isPackageSide();
        String strS = ProtectedFastSSH.s("帢");
        if (zIsPackageSide) {
            zzgbo.zza();
            threadPoolExecutor = Executors.unconfigurableExecutorService(Executors.newCachedThreadPool(new zzcgg(strS)));
        } else {
            if (com.google.android.gms.ads.internal.client.zzba.zzc().zze(zzbjg.zzmT) != null) {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zze(zzbjg.zzmT)).booleanValue()) {
                    if (com.google.android.gms.ads.internal.client.zzba.zzc().zze(zzbjg.zzmU) != null) {
                        if (com.google.android.gms.ads.internal.client.zzba.zzc().zze(zzbjg.zzmV) != null) {
                            ThreadPoolExecutor threadPoolExecutor2 = new ThreadPoolExecutor(((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zze(zzbjg.zzmU)).intValue(), ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zze(zzbjg.zzmU)).intValue(), 10L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new zzcgg(strS));
                            threadPoolExecutor2.allowCoreThreadTimeOut(((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zze(zzbjg.zzmV)).booleanValue());
                            threadPoolExecutor = threadPoolExecutor2;
                        } else {
                            threadPoolExecutor = new ThreadPoolExecutor(2, Integer.MAX_VALUE, 10L, TimeUnit.SECONDS, new SynchronousQueue(), new zzcgg(strS));
                        }
                    } else {
                        threadPoolExecutor = new ThreadPoolExecutor(2, Integer.MAX_VALUE, 10L, TimeUnit.SECONDS, new SynchronousQueue(), new zzcgg(strS));
                    }
                } else {
                    threadPoolExecutor = new ThreadPoolExecutor(2, Integer.MAX_VALUE, 10L, TimeUnit.SECONDS, new SynchronousQueue(), new zzcgg(strS));
                }
            } else {
                threadPoolExecutor = new ThreadPoolExecutor(2, Integer.MAX_VALUE, 10L, TimeUnit.SECONDS, new SynchronousQueue(), new zzcgg(strS));
            }
        }
        zza = new zzcgi(threadPoolExecutor, null);
        boolean zIsPackageSide2 = ClientLibraryUtils.isPackageSide();
        String strS2 = ProtectedFastSSH.s("帣");
        if (zIsPackageSide2) {
            executorServiceZzb = zzgbo.zza().zzb(5, new zzcgg(strS2), 1);
        } else {
            ThreadPoolExecutor threadPoolExecutor3 = new ThreadPoolExecutor(5, 5, 10L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new zzcgg(strS2));
            threadPoolExecutor3.allowCoreThreadTimeOut(true);
            executorServiceZzb = threadPoolExecutor3;
        }
        zzb = new zzcgi(executorServiceZzb, null);
        boolean zIsPackageSide3 = ClientLibraryUtils.isPackageSide();
        String strS3 = ProtectedFastSSH.s("帤");
        if (zIsPackageSide3) {
            executorServiceZzd = zzgbo.zza().zzd(new zzcgg(strS3), 1);
        } else {
            ThreadPoolExecutor threadPoolExecutor4 = new ThreadPoolExecutor(1, 1, 10L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new zzcgg(strS3));
            threadPoolExecutor4.allowCoreThreadTimeOut(true);
            executorServiceZzd = threadPoolExecutor4;
        }
        zzc = new zzcgi(executorServiceZzd, null);
        zzcgf zzcgfVar = new zzcgf(3, new zzcgg(ProtectedFastSSH.s("帥")));
        zzd = zzcgfVar;
        zze = zzhdp.zzc(zzcgfVar);
        zzf = new zzcgi(new zzcgh(), null);
        zzg = Executors.newSingleThreadExecutor(new zzcgg(ProtectedFastSSH.s("带")));
        zzh = new zzcgi(zzhdp.zza(), null);
    }
}
