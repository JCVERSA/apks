package defpackage;

import android.content.Context;
import android.view.View;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.client.zzea;
import com.google.android.gms.ads.internal.client.zzfw;
import com.google.android.gms.ads.internal.client.zzr;
import com.google.android.gms.ads.internal.util.zzau;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.j8;
import com.google.android.gms.internal.ads.zzcfn;
import com.google.android.gms.internal.ads.zzcps;
import com.google.android.gms.internal.ads.zzdoh;
import com.google.android.gms.internal.ads.zzdqm;
import defpackage.hyg;
import java.util.concurrent.Executor;

public final class hyg implements kxg {
    public final atf a;
    public final Context b;
    public final ujg c;
    public final enh d;
    public final Executor e;
    public final m2i f;
    public final lmg g;

    public hyg(atf atfVar, Context context, Executor executor, ujg ujgVar, enh enhVar, m2i m2iVar, lmg lmgVar) {
        this.b = context;
        this.a = atfVar;
        this.e = executor;
        this.c = ujgVar;
        this.d = enhVar;
        this.f = m2iVar;
        this.g = lmgVar;
    }

    public static im5 c(final hyg hygVar, vmh vmhVar, hmh hmhVar, Object obj) {
        qxe qxeVar = cye.s2;
        if (((Boolean) zzbd.zzc().b(qxeVar)).booleanValue()) {
            hygVar.g.a().putLong(zzdqm.RENDERING_WEBVIEW_CREATION_START.zza(), zzv.zzC().currentTimeMillis());
        }
        Context context = hygVar.b;
        zzr zzrVarA = knh.a(context, hmhVar.u);
        final ejf ejfVarA = hygVar.c.a(zzrVarA, hmhVar, vmhVar.b.b);
        ejfVarA.zzac(hmhVar.W);
        View viewZza = (((Boolean) zzbd.zzc().b(cye.U7)).booleanValue() && hmhVar.g0) ? zzcps.zza(context, ejfVarA.zzF(), hmhVar) : new zzdoh(context, ejfVarA.zzF(), (zzau) hygVar.f.apply(hmhVar));
        if (((Boolean) zzbd.zzc().b(qxeVar)).booleanValue()) {
            hygVar.g.a().putLong(zzdqm.RENDERING_WEBVIEW_CREATION_END.zza(), zzv.zzC().currentTimeMillis());
        }
        final vrf vrfVarA = hygVar.a.a(new puf(vmhVar, hmhVar, null), new asf(viewZza, ejfVarA, new ztf() {
            @Override
            public final zzea zza() {
                return ejfVarA.zzq();
            }
        }, knh.b(zzrVarA)));
        if (((Boolean) zzbd.zzc().b(qxeVar)).booleanValue()) {
            hygVar.g.a().putLong(zzdqm.RENDERING_AD_COMPONENT_CREATION_END.zza(), zzv.zzC().currentTimeMillis());
        }
        tjg tjgVarJ = vrfVarA.j();
        lmg lmgVar = hygVar.g;
        tjgVarJ.i(ejfVarA, false, null, lmgVar.a());
        b0g b0gVarB = vrfVarA.b();
        d0g d0gVar = new d0g() {
            @Override
            public final void zzs() {
                ejf ejfVar = ejfVarA;
                if (ejfVar.zzN() != null) {
                    ejfVar.zzN().zzs();
                }
            }
        };
        g8i g8iVar = zef.g;
        b0gVarB.C(d0gVar, g8iVar);
        lmh lmhVar = hmhVar.s;
        String strB = lmhVar.a;
        if (((Boolean) zzbd.zzc().b(cye.p5)).booleanValue() && vrfVarA.k().e(true)) {
            strB = yjf.b(strB, yjf.a(hmhVar));
        }
        vrfVarA.j();
        im5 im5VarJ = tjg.j(ejfVarA, lmhVar.b, strB, lmgVar.a());
        if (hmhVar.M) {
            im5VarJ.addListener(new Runnable() {
                @Override
                public final void run() {
                    ejfVarA.zzah();
                }
            }, hygVar.e);
        }
        im5VarJ.addListener(new Runnable() {
            @Override
            public final void run() {
                hyg.d(this.zza, ejfVarA);
            }
        }, hygVar.e);
        return j8.m(im5VarJ, new m2i() {
            @Override
            public final Object apply(Object obj2) {
                return vrfVarA.h();
            }
        }, g8iVar);
    }

    public static void d(hyg hygVar, ejf ejfVar) {
        ejfVar.zzab();
        enh enhVar = hygVar.d;
        zzcfn zzcfnVarZzq = ejfVar.zzq();
        zzfw zzfwVar = enhVar.a;
        if (zzfwVar != null && zzcfnVarZzq != null) {
            zzcfnVarZzq.zzs(zzfwVar);
        }
        if (!((Boolean) zzbd.zzc().b(cye.v1)).booleanValue() || ejfVar.isAttachedToWindow()) {
            return;
        }
        ejfVar.onPause();
        ejfVar.zzav(true);
    }

    @Override
    public final im5 a(final vmh vmhVar, final hmh hmhVar) {
        return j8.n(j8.h(null), new k7i() {
            @Override
            public final im5 zza(Object obj) {
                return hyg.c(this.a, vmhVar, hmhVar, obj);
            }
        }, this.e);
    }

    @Override
    public final boolean b(vmh vmhVar, hmh hmhVar) {
        lmh lmhVar = hmhVar.s;
        return (lmhVar == null || lmhVar.a == null) ? false : true;
    }
}
