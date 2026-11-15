package defpackage;

import com.google.android.gms.internal.ads.j8;
import com.google.android.gms.internal.ads.n8;
import com.google.android.gms.internal.ads.zzdvg;
import com.google.android.gms.internal.ads.zzefy;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

public final class a0h {
    public final Executor a;
    public final ScheduledExecutorService b;
    public final euf c;
    public final q0h d;
    public final sth e;
    public final n8 f = n8.h();
    public final AtomicBoolean g = new AtomicBoolean();
    public b0h h;
    public vmh i;

    public a0h(Executor executor, ScheduledExecutorService scheduledExecutorService, euf eufVar, q0h q0hVar, sth sthVar) {
        this.a = executor;
        this.b = scheduledExecutorService;
        this.c = eufVar;
        this.d = q0hVar;
        this.e = sthVar;
    }

    public final synchronized im5 b(vmh vmhVar) {
        try {
            if (!this.g.getAndSet(true)) {
                List list = vmhVar.b.a;
                if (list.isEmpty()) {
                    this.f.zzd(new zzefy(3, z0h.b(vmhVar)));
                } else {
                    this.i = vmhVar;
                    q0h q0hVar = this.d;
                    this.h = new b0h(vmhVar, q0hVar, this.f);
                    q0hVar.k(list);
                    hmh hmhVarA = this.h.a();
                    while (hmhVarA != null) {
                        e(hmhVarA);
                        hmhVarA = this.h.a();
                    }
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.f;
    }

    public final synchronized im5 d(hmh hmhVar) {
        Iterator it = hmhVar.a.iterator();
        while (it.hasNext()) {
            kxg kxgVarA = this.c.a(hmhVar.b, (String) it.next());
            if (kxgVarA != null && kxgVarA.b(this.i, hmhVar)) {
                return j8.o(kxgVarA.a(this.i, hmhVar), hmhVar.R, TimeUnit.MILLISECONDS, this.b);
            }
        }
        return j8.g(new zzdvg(3));
    }

    public final void e(hmh hmhVar) {
        im5 im5VarD = d(hmhVar);
        this.d.f(this.i, hmhVar, im5VarD, this.e);
        j8.r(im5VarD, new zzg(this, hmhVar), this.a);
    }
}
