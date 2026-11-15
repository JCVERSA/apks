package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.zza;
import com.google.android.gms.ads.internal.zzb;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.j8;
import com.google.android.gms.internal.ads.o0;
import com.google.android.gms.internal.ads.zzcex;
import com.google.android.gms.internal.ads.zzebe;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.concurrent.Executor;
import org.json.JSONObject;

public final class hig {
    public final zza b;
    public final Context c;
    public final smg d;
    public final Executor e;
    public final fre f;
    public final VersionInfoParcel g;
    public final dwg i;
    public final wth j;
    public final zzebe k;
    public final inh l;
    public im5 m;
    public final uhg a = new uhg();
    public final d4f h = new d4f();

    public hig(eig eigVar) {
        this.c = eigVar.c;
        this.e = eigVar.f;
        this.f = eigVar.g;
        this.g = eigVar.h;
        this.b = eigVar.b;
        this.i = eigVar.e;
        this.j = eigVar.i;
        this.d = eigVar.d;
        this.k = eigVar.j;
        this.l = eigVar.k;
    }

    public static ejf a(hig higVar, ejf ejfVar) {
        ejfVar.zzag("/result", higVar.h);
        ikf ikfVarZzN = ejfVar.zzN();
        zzb zzbVar = new zzb(higVar.c, null, null);
        dwg dwgVar = higVar.i;
        wth wthVar = higVar.j;
        smg smgVar = higVar.d;
        uhg uhgVar = higVar.a;
        ikfVarZzN.d(null, uhgVar, uhgVar, uhgVar, uhgVar, false, null, zzbVar, null, null, dwgVar, wthVar, smgVar, null, null, null, null, null, null);
        return ejfVar;
    }

    public final synchronized im5 g(final String str, final JSONObject jSONObject) {
        im5 im5Var = this.m;
        if (im5Var == null) {
            return j8.h(null);
        }
        return j8.n(im5Var, new k7i() {
            @Override
            public final im5 zza(Object obj) {
                return this.a.h.b((ejf) obj, str, jSONObject);
            }
        }, this.e);
    }

    public final synchronized void h(hmh hmhVar, kmh kmhVar, wpf wpfVar) {
        im5 im5Var = this.m;
        if (im5Var == null) {
            return;
        }
        j8.r(im5Var, new big(this, hmhVar, kmhVar, wpfVar), this.e);
    }

    public final synchronized void i() {
        im5 im5Var = this.m;
        if (im5Var == null) {
            return;
        }
        j8.r(im5Var, new xhg(this), this.e);
        this.m = null;
    }

    public final synchronized void j(String str, Map map) {
        im5 im5Var = this.m;
        if (im5Var == null) {
            return;
        }
        j8.r(im5Var, new aig(this, "sendMessageToNativeJs", map), this.e);
    }

    public final synchronized void k() {
        final String str = (String) zzbd.zzc().b(cye.X3);
        final Context context = this.c;
        final fre freVar = this.f;
        final VersionInfoParcel versionInfoParcel = this.g;
        final zza zzaVar = this.b;
        final zzebe zzebeVar = this.k;
        final inh inhVar = this.l;
        final smg smgVar = this.d;
        im5 im5VarM = j8.m(j8.k(new j7i() {
            @Override
            public final im5 zza() throws zzcex {
                zzv.zzA();
                Context context2 = context;
                zzebe zzebeVar2 = zzebeVar;
                kkf kkfVarA = kkf.a();
                fre freVar2 = freVar;
                inh inhVar2 = inhVar;
                zza zzaVar2 = zzaVar;
                ejf ejfVarA = mjf.a(context2, kkfVarA, "", false, false, freVar2, null, versionInfoParcel, null, null, zzaVar2, o0.a(), null, null, zzebeVar2, inhVar2, smgVar);
                final dff dffVarE = dff.e(ejfVarA);
                ejfVarA.zzN().v(new gkf() {
                    @Override
                    public final void zza(boolean z, int i, String str2, String str3) {
                        dffVarE.f();
                    }
                });
                ejfVarA.loadUrl(str);
                return dffVarE;
            }
        }, zef.f), new m2i() {
            @Override
            public final Object apply(Object obj) {
                ejf ejfVar = (ejf) obj;
                hig.a(this.a, ejfVar);
                return ejfVar;
            }
        }, this.e);
        this.m = im5VarM;
        cff.a(im5VarM, "NativeJavascriptExecutor.initializeEngine");
    }

    public final synchronized void l(String str, n3f n3fVar) {
        im5 im5Var = this.m;
        if (im5Var == null) {
            return;
        }
        j8.r(im5Var, new yhg(this, str, n3fVar), this.e);
    }

    public final void m(WeakReference weakReference, String str, n3f n3fVar) {
        l(str, new fig(this, weakReference, str, n3fVar, null));
    }

    public final synchronized void n(String str, n3f n3fVar) {
        im5 im5Var = this.m;
        if (im5Var == null) {
            return;
        }
        j8.r(im5Var, new zhg(this, str, n3fVar), this.e);
    }
}
