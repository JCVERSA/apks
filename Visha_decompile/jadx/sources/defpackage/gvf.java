package defpackage;

import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.client.zze;
import com.google.android.gms.ads.internal.client.zzm;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.j8;
import com.google.android.gms.internal.ads.zzbuy;
import com.google.android.gms.internal.ads.zzfdj;
import com.google.android.gms.internal.ads.zzffn;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

public final class gvf {
    public final srg a;
    public final enh b;
    public final lrh c;
    public final mof d;
    public final z0h e;
    public final s5g f;
    public vmh g;
    public final atg h;
    public final lyf i;
    public final Executor j;
    public final jsg k;
    public final oxg l;

    public gvf(srg srgVar, enh enhVar, lrh lrhVar, mof mofVar, z0h z0hVar, s5g s5gVar, vmh vmhVar, atg atgVar, lyf lyfVar, Executor executor, jsg jsgVar, oxg oxgVar) {
        this.a = srgVar;
        this.b = enhVar;
        this.c = lrhVar;
        this.d = mofVar;
        this.e = z0hVar;
        this.f = s5gVar;
        this.g = vmhVar;
        this.h = atgVar;
        this.i = lyfVar;
        this.j = executor;
        this.k = jsgVar;
        this.l = oxgVar;
    }

    public static vmh d(gvf gvfVar, vmh vmhVar) {
        gvfVar.d.a(vmhVar);
        return vmhVar;
    }

    public static im5 e(gvf gvfVar, zzfdj zzfdjVar, zzbuy zzbuyVar) {
        zzbuyVar.zzi = zzfdjVar;
        return gvfVar.h.e(zzbuyVar);
    }

    public final zze a(Throwable th) {
        return goh.b(th, this.l);
    }

    public final s5g c() {
        return this.f;
    }

    public final im5 f(final zzfdj zzfdjVar) {
        rqh rqhVarA = this.c.b(zzffn.GET_CACHE_KEY, this.i.c()).f(new k7i() {
            @Override
            public final im5 zza(Object obj) {
                return gvf.e(this.a, zzfdjVar, (zzbuy) obj);
            }
        }).a();
        j8.r(rqhVarA, new evf(this), this.j);
        return rqhVarA;
    }

    public final im5 g(zzbuy zzbuyVar) {
        rqh rqhVarA = this.c.b(zzffn.NOTIFY_CACHE_HIT, this.h.f(zzbuyVar)).a();
        j8.r(rqhVarA, new fvf(this), this.j);
        return rqhVarA;
    }

    public final im5 h(im5 im5Var) {
        crh crhVarF = this.c.b(zzffn.RENDERER, im5Var).e(new pqh() {
            @Override
            public final Object zza(Object obj) {
                vmh vmhVar = (vmh) obj;
                gvf.d(this.a, vmhVar);
                return vmhVar;
            }
        }).f(this.e);
        if (!((Boolean) zzbd.zzc().b(cye.E5)).booleanValue()) {
            crhVarF = crhVarF.i(((Integer) zzbd.zzc().b(cye.F5)).intValue(), TimeUnit.SECONDS);
        }
        return crhVarF.a();
    }

    public final im5 i() {
        zzm zzmVar = this.b.d;
        if (zzmVar.zzx == null && zzmVar.zzs == null) {
            return j(this.i.c());
        }
        lrh lrhVar = this.c;
        srg srgVar = this.a;
        return xqh.c(srgVar.c(), zzffn.PRELOADED_LOADER, lrhVar).a();
    }

    public final im5 j(im5 im5Var) {
        vmh vmhVar = this.g;
        if (vmhVar != null) {
            lrh lrhVar = this.c;
            return xqh.c(j8.h(vmhVar), zzffn.SERVER_TRANSACTION, lrhVar).a();
        }
        zzv.zzc().j();
        crh crhVarB = this.c.b(zzffn.SERVER_TRANSACTION, im5Var);
        final jsg jsgVar = this.k;
        Objects.requireNonNull(jsgVar);
        return crhVarB.f(new k7i() {
            @Override
            public final im5 zza(Object obj) {
                return jsgVar.a((zzbuy) obj);
            }
        }).a();
    }

    public final void k(vmh vmhVar) {
        this.g = vmhVar;
    }
}
