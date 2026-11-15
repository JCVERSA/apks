package androidx.work.impl.background.greedy;

import androidx.work.j;
import androidx.work.o;
import j4.u;
import java.util.HashMap;
import java.util.Map;

public class DelayedWorkTracker {

    static final String f15178d = j.i("DelayedWorkTracker");

    final a f15179a;

    private final o f15180b;

    private final Map f15181c = new HashMap();

    public DelayedWorkTracker(a aVar, o oVar) {
        this.f15179a = aVar;
        this.f15180b = oVar;
    }

    public void a(final u uVar) {
        Runnable runnable = (Runnable) this.f15181c.remove(uVar.f62987a);
        if (runnable != null) {
            this.f15180b.a(runnable);
        }
        Runnable runnable2 = new Runnable() {
            @Override
            public void run() {
                j.e().a(DelayedWorkTracker.f15178d, "Scheduling work " + uVar.f62987a);
                DelayedWorkTracker.this.f15179a.c(uVar);
            }
        };
        this.f15181c.put(uVar.f62987a, runnable2);
        this.f15180b.b(uVar.c() - System.currentTimeMillis(), runnable2);
    }

    public void b(String str) {
        Runnable runnable = (Runnable) this.f15181c.remove(str);
        if (runnable != null) {
            this.f15180b.a(runnable);
        }
    }
}
