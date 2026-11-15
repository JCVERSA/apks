package defpackage;

import com.google.android.gms.internal.ads.j8;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

public final class ouf {
    public final Executor a;
    public final ScheduledExecutorService b;
    public final im5 c;
    public volatile boolean d = true;

    public ouf(Executor executor, ScheduledExecutorService scheduledExecutorService, im5 im5Var) {
        this.a = executor;
        this.b = scheduledExecutorService;
        this.c = im5Var;
    }

    public static im5 a(ouf oufVar, v7i v7iVar, im5 im5Var, buf bufVar) {
        if (bufVar != null) {
            v7iVar.zzb(bufVar);
        }
        return j8.o(im5Var, ((Long) m0f.a.e()).longValue(), TimeUnit.MILLISECONDS, oufVar.b);
    }

    public static void c(final ouf oufVar, List list, final v7i v7iVar) {
        if (list == null || list.isEmpty()) {
            oufVar.a.execute(new Runnable() {
                @Override
                public final void run() {
                    v7iVar.zza(new zzdvg(3));
                }
            });
            return;
        }
        im5 im5VarH = j8.h(null);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            final im5 im5Var = (im5) it.next();
            k7i k7iVar = new k7i() {
                @Override
                public final im5 zza(Object obj) {
                    v7iVar.zza((Throwable) obj);
                    return j8.h(null);
                }
            };
            Executor executor = oufVar.a;
            im5VarH = j8.n(j8.f(im5VarH, Throwable.class, k7iVar, executor), new k7i() {
                @Override
                public final im5 zza(Object obj) {
                    return ouf.a(this.a, v7iVar, im5Var, (buf) obj);
                }
            }, executor);
        }
        j8.r(im5VarH, new nuf(oufVar, v7iVar), oufVar.a);
    }

    public final void e(v7i v7iVar) {
        j8.r(this.c, new muf(this, v7iVar), this.a);
    }

    public final boolean f() {
        return this.d;
    }
}
