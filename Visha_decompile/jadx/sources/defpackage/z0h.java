package defpackage;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.j8;
import com.google.android.gms.internal.ads.zzbuy;
import com.google.android.gms.internal.ads.zzdqm;
import com.google.android.gms.internal.ads.zzefy;
import com.google.android.gms.internal.ads.zzffn;
import com.google.android.gms.internal.ads.zzfgn;
import java.util.Iterator;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

public final class z0h implements k7i {
    public final lrh a;
    public final mzf b;
    public final sth c;
    public final wth d;
    public final Executor e;
    public final ScheduledExecutorService f;
    public final euf g;
    public final q0h h;
    public final oxg i;
    public final Context j;
    public final zzfgn k;
    public final a0h l;
    public final lmg m;

    public z0h(Context context, lrh lrhVar, q0h q0hVar, mzf mzfVar, sth sthVar, wth wthVar, euf eufVar, Executor executor, ScheduledExecutorService scheduledExecutorService, oxg oxgVar, zzfgn zzfgnVar, a0h a0hVar, lmg lmgVar) {
        this.j = context;
        this.a = lrhVar;
        this.h = q0hVar;
        this.b = mzfVar;
        this.c = sthVar;
        this.d = wthVar;
        this.g = eufVar;
        this.e = executor;
        this.f = scheduledExecutorService;
        this.i = oxgVar;
        this.k = zzfgnVar;
        this.l = a0hVar;
        this.m = lmgVar;
    }

    public static im5 a(z0h z0hVar, hmh hmhVar, vmh vmhVar, kxg kxgVar, Throwable th) {
        wrh wrhVarA = vrh.a(z0hVar.j, 12);
        wrhVarA.zzd(hmhVar.E);
        wrhVarA.zzi();
        im5 im5VarO = j8.o(kxgVar.a(vmhVar, hmhVar), hmhVar.R, TimeUnit.MILLISECONDS, z0hVar.f);
        z0hVar.h.f(vmhVar, hmhVar, im5VarO, z0hVar.c);
        gsh.a(im5VarO, z0hVar.k, wrhVarA);
        return im5VarO;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0057  */
    public static String b(vmh vmhVar) {
        String str = "No fill.";
        String str2 = true != ((Boolean) zzbd.zzc().b(cye.D5)).booleanValue() ? "No ad config." : "No fill.";
        kmh kmhVar = vmhVar.b.b;
        int i = kmhVar.f;
        if (i == 0) {
            str = str2;
        } else if (i >= 200 && i < 300) {
            if (((Boolean) zzbd.zzc().b(cye.C5)).booleanValue()) {
                str = str2;
            }
        } else if (i < 300 || i >= 400) {
            str = "Received error HTTP response code: " + i;
        } else {
            str = "No location header to follow redirect or too many redirects.";
        }
        jmh jmhVar = kmhVar.j;
        return jmhVar != null ? jmhVar.a() : str;
    }

    @Override
    public final im5 zza(Object obj) {
        int i;
        zzbuy zzbuyVar;
        Bundle bundle;
        final vmh vmhVar = (vmh) obj;
        if (((Boolean) zzbd.zzc().b(cye.q2)).booleanValue() && (zzbuyVar = vmhVar.b.d) != null && (bundle = zzbuyVar.zzm) != null) {
            this.m.a().putAll(bundle);
        }
        if (((Boolean) zzbd.zzc().b(cye.r2)).booleanValue()) {
            this.m.a().putLong(zzdqm.RENDERING_START.zza(), zzv.zzC().currentTimeMillis());
        }
        String strB = b(vmhVar);
        oxg oxgVar = this.i;
        umh umhVar = vmhVar.b;
        kmh kmhVar = umhVar.b;
        oxgVar.i(kmhVar);
        if (((Boolean) zzbd.zzc().b(cye.t8)).booleanValue() && (i = kmhVar.f) != 0 && (i < 200 || i >= 300)) {
            return j8.g(new zzefy(3, strB));
        }
        String str = kmhVar.q;
        if (!((Boolean) zzbd.zzc().b(cye.O3)).booleanValue() || TextUtils.isEmpty(str)) {
            for (hmh hmhVar : umhVar.a) {
                oxgVar.d(hmhVar);
                Iterator it = hmhVar.a.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        oxgVar.f(hmhVar, 0L, goh.d(1, null, null));
                        break;
                    }
                    kxg kxgVarA = this.g.a(hmhVar.b, (String) it.next());
                    if (kxgVarA != null && kxgVarA.b(vmhVar, hmhVar)) {
                        break;
                    }
                }
            }
        } else {
            oxgVar.h(str, umhVar.a);
        }
        mzf mzfVar = this.b;
        cqf cqfVar = new cqf(vmhVar, this.d, this.c);
        Executor executor = this.e;
        mzfVar.C(cqfVar, executor);
        if (kmhVar.r > 1) {
            return this.l.b(vmhVar);
        }
        String strB2 = b(vmhVar);
        lrh lrhVar = this.a;
        rqh rqhVarA = xqh.c(j8.g(new zzefy(3, strB2)), zzffn.RENDER_CONFIG_INIT, lrhVar).a();
        final q0h q0hVar = this.h;
        q0hVar.l();
        int i2 = 0;
        for (final hmh hmhVar2 : umhVar.a) {
            for (String str2 : hmhVar2.a) {
                final kxg kxgVarA2 = this.g.a(hmhVar2.b, str2);
                if (kxgVarA2 != null && kxgVarA2.b(vmhVar, hmhVar2)) {
                    rqhVarA = lrhVar.b(zzffn.RENDER_CONFIG_WATERFALL, rqhVarA).h("render-config-" + i2 + "-" + str2).c(Throwable.class, new k7i() {
                        @Override
                        public final im5 zza(Object obj2) {
                            return z0h.a(this.a, hmhVar2, vmhVar, kxgVarA2, (Throwable) obj2);
                        }
                    }).a();
                    break;
                }
            }
            i2++;
        }
        rqhVarA.addListener(new Runnable() {
            @Override
            public final void run() {
                q0hVar.j();
            }
        }, executor);
        return rqhVarA;
    }
}
