package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.j8;
import com.google.android.gms.internal.ads.zzdqm;
import com.google.android.gms.internal.ads.zzebe;
import java.util.concurrent.Executor;

public final class txg implements kxg {
    public final irf a;
    public final Context b;
    public final ujg c;
    public final enh d;
    public final Executor e;
    public final VersionInfoParcel f;
    public final q3f g;
    public final boolean h = ((Boolean) zzbd.zzc().b(cye.Y8)).booleanValue();
    public final zzebe i;
    public final lmg j;
    public final smg k;

    public txg(irf irfVar, Context context, Executor executor, ujg ujgVar, enh enhVar, VersionInfoParcel versionInfoParcel, q3f q3fVar, zzebe zzebeVar, lmg lmgVar, smg smgVar) {
        this.b = context;
        this.a = irfVar;
        this.e = executor;
        this.c = ujgVar;
        this.d = enhVar;
        this.f = versionInfoParcel;
        this.g = q3fVar;
        this.i = zzebeVar;
        this.j = lmgVar;
        this.k = smgVar;
    }

    public static im5 c(txg txgVar, final hmh hmhVar, vmh vmhVar, xjg xjgVar, Object obj) {
        final txg txgVar2;
        qxe qxeVar = cye.s2;
        if (((Boolean) zzbd.zzc().b(qxeVar)).booleanValue()) {
            txgVar.j.a().putLong(zzdqm.RENDERING_WEBVIEW_CREATION_START.zza(), zzv.zzC().currentTimeMillis());
        }
        ujg ujgVar = txgVar.c;
        enh enhVar = txgVar.d;
        final ejf ejfVarA = ujgVar.a(enhVar.e, hmhVar, vmhVar.b.b);
        ejfVarA.zzac(hmhVar.W);
        xjgVar.a(txgVar.b, ejfVarA.zzF());
        if (((Boolean) zzbd.zzc().b(qxeVar)).booleanValue()) {
            txgVar.j.a().putLong(zzdqm.RENDERING_WEBVIEW_CREATION_END.zza(), zzv.zzC().currentTimeMillis());
        }
        eff effVar = new eff();
        irf irfVar = txgVar.a;
        puf pufVar = new puf(vmhVar, hmhVar, null);
        VersionInfoParcel versionInfoParcel = txgVar.f;
        boolean z = txgVar.h;
        q3f q3fVar = txgVar.g;
        final frf frfVarA = irfVar.a(pufVar, new w9g(new vxg(versionInfoParcel, effVar, hmhVar, ejfVarA, enhVar, z, q3fVar, txgVar.i, txgVar.k), ejfVarA), new grf(hmhVar.a0));
        if (((Boolean) zzbd.zzc().b(qxeVar)).booleanValue()) {
            txgVar2 = txgVar;
            txgVar2.j.a().putLong(zzdqm.RENDERING_AD_COMPONENT_CREATION_END.zza(), zzv.zzC().currentTimeMillis());
        } else {
            txgVar2 = txgVar;
        }
        tjg tjgVarJ = frfVarA.j();
        q3f q3fVar2 = true != z ? null : q3fVar;
        lmg lmgVar = txgVar2.j;
        tjgVarJ.i(ejfVarA, false, q3fVar2, lmgVar.a());
        effVar.c(frfVarA);
        frfVarA.b().C(new d0g() {
            @Override
            public final void zzs() {
                ejf ejfVar = ejfVarA;
                if (ejfVar.zzN() != null) {
                    ejfVar.zzN().zzs();
                }
            }
        }, zef.g);
        lmh lmhVar = hmhVar.s;
        String strB = lmhVar.a;
        if (((Boolean) zzbd.zzc().b(cye.p5)).booleanValue() && frfVarA.k().e(true)) {
            strB = yjf.b(strB, yjf.a(hmhVar));
        }
        frfVarA.j();
        return j8.m(tjg.j(ejfVarA, lmhVar.b, strB, lmgVar.a()), new m2i(txgVar2) {
            @Override
            public final Object apply(Object obj2) {
                ejf ejfVar = ejfVarA;
                if (hmhVar.M) {
                    ejfVar.zzah();
                }
                frf frfVar = frfVarA;
                ejfVar.zzab();
                ejfVar.onPause();
                return frfVar.h();
            }
        }, txgVar2.e);
    }

    @Override
    public final im5 a(final vmh vmhVar, final hmh hmhVar) {
        final xjg xjgVar = new xjg();
        im5 im5VarH = j8.h(null);
        k7i k7iVar = new k7i() {
            @Override
            public final im5 zza(Object obj) {
                return txg.c(this.a, hmhVar, vmhVar, xjgVar, obj);
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
