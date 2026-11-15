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
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;

public final class jqg {
    public final g8i a;
    public final g8i b;
    public final urg c;
    public final zxi d;

    public jqg(g8i g8iVar, g8i g8iVar2, urg urgVar, zxi zxiVar) {
        this.a = g8iVar;
        this.b = g8iVar2;
        this.c = urgVar;
        this.d = zxiVar;
    }

    public static msg a(jqg jqgVar, zzbuy zzbuyVar) {
        return (msg) jqgVar.c.c(zzbuyVar).get(((Integer) zzbd.zzc().b(cye.F5)).intValue(), TimeUnit.SECONDS);
    }

    public static im5 b(jqg jqgVar, final zzbuy zzbuyVar, int i, zzdxq zzdxqVar) {
        Bundle bundle;
        if (zzbuyVar != null && (bundle = zzbuyVar.zzm) != null) {
            bundle.putBoolean("ls", true);
        }
        return j8.n(((zzdyu) jqgVar.d.zzb()).zzc(zzbuyVar, i), new k7i() {
            @Override
            public final im5 zza(Object obj) {
                return j8.h(new msg((InputStream) obj, zzbuyVar));
            }
        }, jqgVar.b);
    }

    public final im5 c(final zzbuy zzbuyVar) {
        String str = zzbuyVar.zzd;
        zzv.zzq();
        im5 im5VarG = zzs.zzD(str) ? j8.g(new zzdxq(1)) : j8.f(this.a.m(new Callable() {
            @Override
            public final Object call() {
                return jqg.a(this.b, zzbuyVar);
            }
        }), ExecutionException.class, new k7i() {
            @Override
            public final im5 zza(Object obj) {
                Throwable cause = (ExecutionException) obj;
                if (cause.getCause() != null) {
                    cause = cause.getCause();
                }
                return j8.g(cause);
            }
        }, this.b);
        final int callingUid = Binder.getCallingUid();
        return j8.f(im5VarG, zzdxq.class, new k7i() {
            @Override
            public final im5 zza(Object obj) {
                return jqg.b(this.a, zzbuyVar, callingUid, (zzdxq) obj);
            }
        }, this.b);
    }
}
