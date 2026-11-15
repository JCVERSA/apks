package defpackage;

import android.os.Binder;
import android.os.Bundle;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.j8;
import com.google.android.gms.internal.ads.zzbuy;
import com.google.android.gms.internal.ads.zzdxq;
import com.google.android.gms.internal.ads.zzdyu;
import java.io.InputStream;
import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

public final class grg {
    public final ScheduledExecutorService a;
    public final g8i b;
    public final g8i c;
    public final bsg d;
    public final zxi e;

    public grg(ScheduledExecutorService scheduledExecutorService, g8i g8iVar, g8i g8iVar2, bsg bsgVar, zxi zxiVar) {
        this.a = scheduledExecutorService;
        this.b = g8iVar;
        this.c = g8iVar2;
        this.d = bsgVar;
        this.e = zxiVar;
    }

    public static msg a(grg grgVar, zzbuy zzbuyVar) {
        return (msg) grgVar.d.c(zzbuyVar).get(((Integer) zzbd.zzc().b(cye.F5)).intValue(), TimeUnit.SECONDS);
    }

    public static im5 b(grg grgVar, final zzbuy zzbuyVar, int i, Throwable th) {
        Bundle bundle;
        if (zzbuyVar != null && (bundle = zzbuyVar.zzm) != null) {
            bundle.putBoolean("ls", true);
        }
        return j8.n(((zzdyu) grgVar.e.zzb()).zzd(zzbuyVar, i), new k7i() {
            @Override
            public final im5 zza(Object obj) {
                return j8.h(new msg((InputStream) obj, zzbuyVar));
            }
        }, grgVar.b);
    }

    public final im5 c(final zzbuy zzbuyVar) {
        im5 im5VarM;
        String str = zzbuyVar.zzd;
        zzv.zzq();
        if (zzs.zzD(str)) {
            im5VarM = j8.g(new zzdxq(1));
        } else {
            im5VarM = ((Boolean) zzbd.zzc().b(cye.w7)).booleanValue() ? this.c.m(new Callable() {
                @Override
                public final Object call() {
                    return grg.a(this.b, zzbuyVar);
                }
            }) : this.d.c(zzbuyVar);
        }
        final int callingUid = Binder.getCallingUid();
        return (q7i) j8.f((q7i) j8.o(q7i.zzE(im5VarM), ((Integer) zzbd.zzc().b(cye.F5)).intValue(), TimeUnit.SECONDS, this.a), Throwable.class, new k7i() {
            @Override
            public final im5 zza(Object obj) {
                return grg.b(this.a, zzbuyVar, callingUid, (Throwable) obj);
            }
        }, this.b);
    }
}
