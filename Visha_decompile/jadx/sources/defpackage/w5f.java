package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.client.zzbb;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.zzf;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zza;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.o0;
import com.google.android.gms.internal.ads.t3;
import com.google.android.gms.internal.ads.zzcex;
import java.util.ArrayList;
import java.util.Map;
import java.util.Objects;
import org.json.JSONObject;

public final class w5f implements s5f, r5f {
    public final ejf b;

    public w5f(Context context, VersionInfoParcel versionInfoParcel, fre freVar, zza zzaVar) throws zzcex {
        zzv.zzA();
        ejf ejfVarA = mjf.a(context, kkf.a(), "", false, false, null, null, versionInfoParcel, null, null, null, o0.a(), null, null, null, null, null);
        this.b = ejfVarA;
        ejfVarA.zzF().setWillNotDraw(true);
    }

    public static final void h(Runnable runnable) {
        zzbb.zzb();
        if (zzf.zzv()) {
            zze.zza("runOnUiThread > the UI thread is the main thread, the runnable will be run now");
            runnable.run();
        } else {
            zze.zza("runOnUiThread > the UI thread is not the main thread, the runnable will be added to the message queue");
            if (zzs.zza.post(runnable)) {
                return;
            }
            zzo.zzj("runOnUiThread > the runnable could not be placed to the message queue");
        }
    }

    @Override
    public final void a(String str, final n3f n3fVar) {
        this.b.zzaA(str, new je8() {
            @Override
            public final boolean apply(Object obj) {
                n3f n3fVar2 = (n3f) obj;
                if (n3fVar2 instanceof v5f) {
                    return ((v5f) n3fVar2).a.equals(n3fVar);
                }
                return false;
            }
        });
    }

    @Override
    public final void b(String str, n3f n3fVar) {
        this.b.zzag(str, new v5f(this, n3fVar));
    }

    @Override
    public final void g(final y5f y5fVar) {
        ikf ikfVarZzN = this.b.zzN();
        Objects.requireNonNull(y5fVar);
        ikfVarZzN.r(new hkf() {
            @Override
            public final void zza() {
                long jCurrentTimeMillis = zzv.zzC().currentTimeMillis();
                y5f y5fVar2 = y5fVar;
                final long j = y5fVar2.c;
                final ArrayList arrayList = y5fVar2.b;
                arrayList.add(Long.valueOf(jCurrentTimeMillis - j));
                zze.zza("LoadNewJavascriptEngine(onEngLoaded) latency is " + String.valueOf(arrayList.get(0)) + " ms.");
                pzh pzhVar = zzs.zza;
                final t3 t3Var = y5fVar2.a;
                final q6f q6fVar = y5fVar2.d;
                final s5f s5fVar = y5fVar2.e;
                pzhVar.postDelayed(new Runnable() {
                    @Override
                    public final void run() {
                        t3.i(t3Var, q6fVar, s5fVar, arrayList, j);
                    }
                }, ((Integer) zzbd.zzc().b(cye.c)).intValue());
            }
        });
    }

    @Override
    public final void zza(final String str) {
        zze.zza("invokeJavascript on adWebView from js");
        h(new Runnable() {
            @Override
            public final void run() {
                this.zza.b.zza(str);
            }
        });
    }

    @Override
    public final void zzb(String str, String str2) {
        q5f.c(this, str, str2);
    }

    @Override
    public final void zzc() {
        this.b.destroy();
    }

    @Override
    public final void zzd(String str, Map map) {
        q5f.a(this, str, map);
    }

    @Override
    public final void zze(String str, JSONObject jSONObject) {
        q5f.b(this, str, jSONObject);
    }

    @Override
    public final void zzf(final String str) {
        zze.zza("loadHtml on adWebView from html");
        h(new Runnable() {
            @Override
            public final void run() {
                this.zza.b.loadData(str, "text/html", "UTF-8");
            }
        });
    }

    @Override
    public final void zzg(final String str) {
        zze.zza("loadHtmlWrapper on adWebView from path: ".concat(String.valueOf(str)));
        h(new Runnable() {
            @Override
            public final void run() {
                this.zza.b.loadUrl(str);
            }
        });
    }

    @Override
    public final void zzh(String str) {
        zze.zza("loadJavascript on adWebView from path: ".concat(String.valueOf(str)));
        final String str2 = String.format("<!DOCTYPE html><html><head><script src=\"%s\"></script></head><body></body></html>", str);
        h(new Runnable() {
            @Override
            public final void run() {
                this.zza.b.loadData(str2, "text/html", "UTF-8");
            }
        });
    }

    @Override
    public final boolean zzi() {
        return this.b.zzaE();
    }

    @Override
    public final s6f zzj() {
        return new s6f(this);
    }

    @Override
    public final void zzp(String str, JSONObject jSONObject) {
        q5f.d(this, str, jSONObject);
    }
}
