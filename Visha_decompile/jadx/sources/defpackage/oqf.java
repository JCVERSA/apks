package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.overlay.zzr;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

public final class oqf implements iue, e0g, zzr, d0g {
    public final kqf b;
    public final lqf c;
    public final v7f e;
    public final Executor f;
    public final fy0 g;
    public final Set d = new HashSet();
    public final AtomicBoolean h = new AtomicBoolean(false);
    public final nqf i = new nqf();
    public boolean j = false;
    public WeakReference k = new WeakReference(this);

    public oqf(s7f s7fVar, lqf lqfVar, Executor executor, kqf kqfVar, fy0 fy0Var) {
        this.b = kqfVar;
        x6f x6fVar = a7f.b;
        this.e = s7fVar.a("google.afma.activeView.handleUpdate", x6fVar, x6fVar);
        this.c = lqfVar;
        this.f = executor;
        this.g = fy0Var;
    }

    private final void f() {
        Iterator it = this.d.iterator();
        while (it.hasNext()) {
            this.b.f((ejf) it.next());
        }
        this.b.e();
    }

    public final synchronized void a() {
        try {
            if (this.k.get() == null) {
                e();
                return;
            }
            if (this.j || !this.h.get()) {
                return;
            }
            try {
                nqf nqfVar = this.i;
                nqfVar.d = this.g.elapsedRealtime();
                final JSONObject jSONObjectA = this.c.zzb(nqfVar);
                for (final ejf ejfVar : this.d) {
                    this.f.execute(new Runnable() {
                        @Override
                        public final void run() {
                            JSONObject jSONObject = jSONObjectA;
                            String str = "Calling AFMA_updateActiveView(" + jSONObject.toString() + ")";
                            int i = zze.zza;
                            zzo.zze(str);
                            ejfVar.zzp("AFMA_updateActiveView", jSONObject);
                        }
                    });
                }
                cff.b(this.e.b(jSONObjectA), "ActiveViewListener.callActiveViewJs");
            } catch (Exception e) {
                zze.zzb("Failed to call ActiveViewJS", e);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override
    public final synchronized void b(Context context) {
        this.i.e = "u";
        a();
        f();
        this.j = true;
    }

    public final synchronized void c(ejf ejfVar) {
        this.d.add(ejfVar);
        this.b.d(ejfVar);
    }

    public final void d(Object obj) {
        this.k = new WeakReference(obj);
    }

    public final synchronized void e() {
        f();
        this.j = true;
    }

    @Override
    public final synchronized void k(Context context) {
        this.i.b = true;
        a();
    }

    @Override
    public final synchronized void n(Context context) {
        this.i.b = false;
        a();
    }

    @Override
    public final synchronized void zzdE() {
        this.i.b = false;
        a();
    }

    @Override
    public final synchronized void zzdi() {
        this.i.b = true;
        a();
    }

    @Override
    public final synchronized void zzdn(hue hueVar) {
        nqf nqfVar = this.i;
        nqfVar.a = hueVar.j;
        nqfVar.f = hueVar;
        a();
    }

    @Override
    public final void zzdo() {
    }

    @Override
    public final void zzdp() {
    }

    @Override
    public final void zzdr() {
    }

    @Override
    public final void zzds(int i) {
    }

    @Override
    public final synchronized void zzs() {
        if (this.h.compareAndSet(false, true)) {
            this.b.c(this);
            a();
        }
    }
}
