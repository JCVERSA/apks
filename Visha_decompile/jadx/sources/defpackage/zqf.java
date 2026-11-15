package defpackage;

import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import defpackage.zqf;
import java.util.concurrent.Executor;
import org.json.JSONException;
import org.json.JSONObject;

public final class zqf implements iue {
    public ejf b;
    public final Executor c;
    public final lqf d;
    public final fy0 e;
    public boolean f = false;
    public boolean g = false;
    public final nqf h = new nqf();

    public zqf(Executor executor, lqf lqfVar, fy0 fy0Var) {
        this.c = executor;
        this.d = lqfVar;
        this.e = fy0Var;
    }

    public static void a(zqf zqfVar, JSONObject jSONObject) {
        String str = "Calling AFMA_updateActiveView(" + jSONObject.toString() + ")";
        int i = zze.zza;
        zzo.zze(str);
        zqfVar.b.zzp("AFMA_updateActiveView", jSONObject);
    }

    private final void f() {
        try {
            final JSONObject jSONObjectZzb = this.d.zzb(this.h);
            if (this.b != null) {
                this.c.execute(new Runnable() {
                    @Override
                    public final void run() {
                        zqf.a(this.zza, jSONObjectZzb);
                    }
                });
            }
        } catch (JSONException e) {
            zze.zzb("Failed to call video active view js", e);
        }
    }

    public final void b() {
        this.f = false;
    }

    public final void c() {
        this.f = true;
        f();
    }

    public final void d(boolean z) {
        this.g = z;
    }

    public final void e(ejf ejfVar) {
        this.b = ejfVar;
    }

    @Override
    public final void zzdn(hue hueVar) {
        boolean z = this.g ? false : hueVar.j;
        nqf nqfVar = this.h;
        nqfVar.a = z;
        nqfVar.d = this.e.elapsedRealtime();
        nqfVar.f = hueVar;
        if (this.f) {
            f();
        }
    }
}
