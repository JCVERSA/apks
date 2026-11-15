package defpackage;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.zzbvw;
import com.google.android.gms.internal.ads.zzbwa;
import com.google.android.gms.internal.ads.zzbwu;
import com.google.android.gms.internal.ads.zzdfl;
import java.lang.ref.WeakReference;

public final class wig extends buf {
    public final Context j;
    public final WeakReference k;
    public final ebg l;
    public final u7g m;
    public final wzf n;
    public final h1g o;
    public final xuf p;
    public final zzbwa q;
    public final dxh r;
    public final xmh s;
    public boolean t;

    public wig(auf aufVar, Context context, ejf ejfVar, ebg ebgVar, u7g u7gVar, wzf wzfVar, h1g h1gVar, xuf xufVar, hmh hmhVar, dxh dxhVar, xmh xmhVar) {
        super(aufVar);
        this.t = false;
        this.j = context;
        this.l = ebgVar;
        this.k = new WeakReference(ejfVar);
        this.m = u7gVar;
        this.n = wzfVar;
        this.o = h1gVar;
        this.p = xufVar;
        this.r = dxhVar;
        zzbvw zzbvwVar = hmhVar.l;
        this.q = new zzbwu(zzbvwVar != null ? zzbvwVar.zza : "", zzbvwVar != null ? zzbvwVar.zzb : 1);
        this.s = xmhVar;
    }

    public final void finalize() throws Throwable {
        try {
            final ejf ejfVar = (ejf) this.k.get();
            if (((Boolean) zzbd.zzc().b(cye.H6)).booleanValue()) {
                if (!this.t && ejfVar != null) {
                    zef.f.execute(new Runnable() {
                        @Override
                        public final void run() {
                            ejfVar.destroy();
                        }
                    });
                }
            } else if (ejfVar != null) {
                ejfVar.destroy();
            }
        } finally {
            super.finalize();
        }
    }

    public final Bundle i() {
        return this.o.F();
    }

    public final zzbwa j() {
        return this.q;
    }

    public final xmh k() {
        return this.s;
    }

    public final boolean l() {
        return this.p.a();
    }

    public final boolean m() {
        return this.t;
    }

    public final boolean n() {
        ejf ejfVar = (ejf) this.k.get();
        return (ejfVar == null || ejfVar.zzaG()) ? false : true;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final boolean o(boolean z, Activity activity) {
        Context context;
        zzv.zzq();
        ebg ebgVar = this.l;
        if (!zzs.zzO(ebgVar.zza())) {
            if (((Boolean) zzbd.zzc().b(cye.Q0)).booleanValue()) {
                zzv.zzq();
                if (zzs.zzH(this.j)) {
                    int i = zze.zza;
                    zzo.zzj("Rewarded ads that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit https://goo.gle/admob-interstitial-policies");
                    this.n.zzb();
                    if (((Boolean) zzbd.zzc().b(cye.R0)).booleanValue()) {
                        this.r.a(this.a.b.b.b);
                    }
                    return false;
                }
            }
        }
        if (this.t) {
            int i2 = zze.zza;
            zzo.zzj("The rewarded ad have been showed.");
            this.n.a(goh.d(10, null, null));
            return false;
        }
        this.t = true;
        u7g u7gVar = this.m;
        u7gVar.zzb();
        if (activity == null) {
            context = activity;
            context = this.j;
        }
        try {
            context = activity;
            ebgVar.a(z, context, this.n);
            u7gVar.zza();
            return true;
        } catch (zzdfl e) {
            this.n.y(e);
            return false;
        }
    }
}
