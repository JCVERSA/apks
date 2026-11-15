package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.j8;
import com.google.android.gms.internal.ads.zzdqm;
import com.google.android.gms.internal.ads.zzebe;
import java.util.concurrent.Executor;

public final class r1h implements kxg {
    public final Context a;
    public final ujg b;
    public final bjg c;
    public final enh d;
    public final Executor e;
    public final VersionInfoParcel f;
    public final q3f g;
    public final boolean h = ((Boolean) zzbd.zzc().b(cye.Y8)).booleanValue();
    public final zzebe i;
    public final lmg j;
    public final smg k;

    public r1h(Context context, VersionInfoParcel versionInfoParcel, enh enhVar, Executor executor, bjg bjgVar, ujg ujgVar, q3f q3fVar, zzebe zzebeVar, lmg lmgVar, smg smgVar) {
        this.a = context;
        this.d = enhVar;
        this.c = bjgVar;
        this.e = executor;
        this.f = versionInfoParcel;
        this.b = ujgVar;
        this.g = q3fVar;
        this.i = zzebeVar;
        this.j = lmgVar;
        this.k = smgVar;
    }

    public static im5 c(final r1h r1hVar, final hmh hmhVar, vmh vmhVar, xjg xjgVar, Object obj) {
        qxe qxeVar = cye.s2;
        if (((Boolean) zzbd.zzc().b(qxeVar)).booleanValue()) {
            r1hVar.j.a().putLong(zzdqm.RENDERING_WEBVIEW_CREATION_START.zza(), zzv.zzC().currentTimeMillis());
        }
        ujg ujgVar = r1hVar.b;
        enh enhVar = r1hVar.d;
        final ejf ejfVarA = ujgVar.a(enhVar.e, hmhVar, vmhVar.b.b);
        ejfVarA.zzac(hmhVar.W);
        Context context = r1hVar.a;
        xjgVar.a(context, ejfVarA.zzF());
        if (((Boolean) zzbd.zzc().b(qxeVar)).booleanValue()) {
            r1hVar.j.a().putLong(zzdqm.RENDERING_WEBVIEW_CREATION_END.zza(), zzv.zzC().currentTimeMillis());
        }
        eff effVar = new eff();
        bjg bjgVar = r1hVar.c;
        puf pufVar = new puf(vmhVar, hmhVar, null);
        VersionInfoParcel versionInfoParcel = r1hVar.f;
        q3f q3fVar = r1hVar.g;
        boolean z = r1hVar.h;
        zzebe zzebeVar = r1hVar.i;
        lmg lmgVar = r1hVar.j;
        final xig xigVarB = bjgVar.b(pufVar, new yig(new q1h(context, ujgVar, enhVar, versionInfoParcel, hmhVar, effVar, ejfVarA, q3fVar, z, zzebeVar, lmgVar, r1hVar.k), ejfVarA));
        effVar.c(xigVarB);
        if (((Boolean) zzbd.zzc().b(qxeVar)).booleanValue()) {
            lmgVar.a().putLong(zzdqm.RENDERING_AD_COMPONENT_CREATION_END.zza(), zzv.zzC().currentTimeMillis());
        }
        m4f.b(ejfVarA, xigVarB.i());
        xigVarB.b().C(new d0g() {
            @Override
            public final void zzs() {
                ejf ejfVar = ejfVarA;
                if (ejfVar.zzN() != null) {
                    ejfVar.zzN().zzs();
                }
            }
        }, zef.g);
        xigVarB.l().i(ejfVarA, true, true != z ? null : q3fVar, lmgVar.a());
        lmh lmhVar = hmhVar.s;
        String strB = lmhVar.a;
        if (((Boolean) zzbd.zzc().b(cye.p5)).booleanValue() && xigVarB.m().e(true)) {
            strB = yjf.b(strB, yjf.a(hmhVar));
        }
        xigVarB.l();
        return j8.m(tjg.j(ejfVarA, lmhVar.b, strB, lmgVar.a()), new m2i(r1hVar) {
            @Override
            public final Object apply(Object obj2) {
                ejf ejfVar = ejfVarA;
                if (hmhVar.M) {
                    ejfVar.zzah();
                }
                xig xigVar = xigVarB;
                ejfVar.zzab();
                ejfVar.onPause();
                return xigVar.k();
            }
        }, r1hVar.e);
    }

    @Override
    public final im5 a(final vmh vmhVar, final hmh hmhVar) {
        final xjg xjgVar = new xjg();
        im5 im5VarH = j8.h(null);
        k7i k7iVar = new k7i() {
            @Override
            public final im5 zza(Object obj) {
                return r1h.c(this.a, hmhVar, vmhVar, xjgVar, obj);
            }
        };
        Executor executor = this.e;
        im5 im5VarN = j8.n(im5VarH, k7iVar, executor);
        im5VarN.addListener(new Runnable() {
            @Override
            public final void run() {
                xjgVar.b();
            }
        }, executor);
        return im5VarN;
    }

    @Override
    public final boolean b(vmh vmhVar, hmh hmhVar) {
        lmh lmhVar = hmhVar.s;
        return (lmhVar == null || lmhVar.a == null) ? false : true;
    }
}
