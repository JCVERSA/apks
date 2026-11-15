package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.client.zzfw;
import com.google.android.gms.ads.internal.client.zzr;
import com.google.android.gms.ads.internal.zzb;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.j8;
import com.google.android.gms.internal.ads.zzblt;
import com.google.android.gms.internal.ads.zzefy;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import org.json.JSONObject;

public final class jhg {
    public final enh a;
    public final Executor b;
    public final ujg c;
    public final nig d;
    public final Context e;
    public final smg f;
    public final wth g;
    public final dwg h;

    public jhg(enh enhVar, Executor executor, ujg ujgVar, Context context, smg smgVar, wth wthVar, dwg dwgVar, nig nigVar) {
        this.a = enhVar;
        this.b = executor;
        this.c = ujgVar;
        this.e = context;
        this.f = smgVar;
        this.g = wthVar;
        this.h = dwgVar;
        this.d = nigVar;
    }

    public static im5 a(final jhg jhgVar, zzr zzrVar, hmh hmhVar, kmh kmhVar, String str, String str2, Object obj) {
        final ejf ejfVarA = jhgVar.c.a(zzrVar, hmhVar, kmhVar);
        final dff dffVarE = dff.e(ejfVarA);
        if (jhgVar.a.b != null) {
            jhgVar.h(ejfVarA);
            ejfVarA.zzaj(kkf.d());
        } else {
            kig kigVarB = jhgVar.d.b();
            ejfVarA.zzN().d(kigVarB, kigVarB, kigVarB, kigVarB, kigVarB, false, null, new zzb(jhgVar.e, null, null), null, null, jhgVar.h, jhgVar.g, jhgVar.f, null, kigVarB, null, null, null, null);
            j(ejfVarA);
        }
        ejfVarA.zzN().v(new gkf() {
            @Override
            public final void zza(boolean z, int i, String str3, String str4) {
                jhg.f(this.b, ejfVarA, dffVarE, z, i, str3, str4);
            }
        });
        ejfVarA.zzae(str, str2, null);
        return dffVarE;
    }

    public static im5 b(jhg jhgVar, Object obj) {
        ejf ejfVarA = jhgVar.c.a(zzr.zzc(), null, null);
        final dff dffVarE = dff.e(ejfVarA);
        jhgVar.h(ejfVarA);
        ejfVarA.zzN().r(new hkf() {
            @Override
            public final void zza() {
                dffVarE.f();
            }
        });
        ejfVarA.loadUrl((String) zzbd.zzc().b(cye.Y3));
        return dffVarE;
    }

    public static im5 c(final jhg jhgVar, JSONObject jSONObject, final ejf ejfVar) {
        zzblt zzbltVar = jhgVar.a.b;
        final dff dffVarE = dff.e(ejfVar);
        if (zzbltVar != null) {
            ejfVar.zzaj(kkf.d());
        } else {
            ejfVar.zzaj(kkf.e());
        }
        ejfVar.zzN().v(new gkf() {
            @Override
            public final void zza(boolean z, int i, String str, String str2) {
                jhg.g(this.b, ejfVar, dffVarE, z, i, str, str2);
            }
        });
        ejfVar.zzp("google.afma.nativeAds.renderVideo", jSONObject);
        return dffVarE;
    }

    public static void f(jhg jhgVar, ejf ejfVar, dff dffVar, boolean z, int i, String str, String str2) {
        if (z) {
            zzfw zzfwVar = jhgVar.a.a;
            if (zzfwVar != null && ejfVar.zzq() != null) {
                ejfVar.zzq().zzs(zzfwVar);
            }
            dffVar.f();
            return;
        }
        dffVar.d(new zzefy(1, "Html video Web View failed to load. Error code: " + i + ", Description: " + str + ", Failing URL: " + str2));
    }

    public static void g(jhg jhgVar, ejf ejfVar, dff dffVar, boolean z, int i, String str, String str2) {
        if (!((Boolean) zzbd.zzc().b(cye.g4)).booleanValue()) {
            jhgVar.i(ejfVar, dffVar);
            return;
        }
        if (z) {
            jhgVar.i(ejfVar, dffVar);
            return;
        }
        dffVar.d(new zzefy(1, "Native Video WebView failed to load. Error code: " + i + ", Description: " + str + ", Failing URL: " + str2));
    }

    public static final void j(ejf ejfVar) {
        ejfVar.zzag("/videoClicked", m3f.h);
        ejfVar.zzN().m(true);
        ejfVar.zzag("/getNativeAdViewSignals", m3f.s);
        ejfVar.zzag("/getNativeClickMeta", m3f.t);
    }

    public final im5 d(final JSONObject jSONObject) {
        im5 im5VarH = j8.h(null);
        k7i k7iVar = new k7i() {
            @Override
            public final im5 zza(Object obj) {
                return jhg.b(this.a, obj);
            }
        };
        Executor executor = this.b;
        return j8.n(j8.n(im5VarH, k7iVar, executor), new k7i() {
            @Override
            public final im5 zza(Object obj) {
                return jhg.c(this.a, jSONObject, (ejf) obj);
            }
        }, executor);
    }

    public final im5 e(final String str, final String str2, final hmh hmhVar, final kmh kmhVar, final zzr zzrVar) {
        return j8.n(j8.h(null), new k7i() {
            @Override
            public final im5 zza(Object obj) {
                return jhg.a(this.a, zzrVar, hmhVar, kmhVar, str, str2, obj);
            }
        }, this.b);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void h(ejf ejfVar) {
        j(ejfVar);
        ejfVar.zzag("/video", m3f.l);
        ejfVar.zzag("/videoMeta", m3f.m);
        ejfVar.zzag("/precache", new thf());
        ejfVar.zzag("/delayPageLoaded", m3f.p);
        ejfVar.zzag("/instrument", m3f.n);
        ejfVar.zzag("/log", m3f.g);
        ejfVar.zzag("/click", new f2f(null, 0 == true ? 1 : 0));
        if (this.a.b != null) {
            ejfVar.zzN().zzG(true);
            ejfVar.zzag("/open", new z3f(null, null, null, null, null));
        } else {
            ejfVar.zzN().zzG(false);
        }
        if (zzv.zzo().p(ejfVar.getContext())) {
            Map map = new HashMap();
            if (ejfVar.zzD() != null) {
                map = ejfVar.zzD().w0;
            }
            ejfVar.zzag("/logScionEvent", new t3f(ejfVar.getContext(), map));
        }
    }

    public final void i(ejf ejfVar, dff dffVar) {
        zzfw zzfwVar = this.a.a;
        if (zzfwVar != null && ejfVar.zzq() != null) {
            ejfVar.zzq().zzs(zzfwVar);
        }
        dffVar.f();
    }
}
