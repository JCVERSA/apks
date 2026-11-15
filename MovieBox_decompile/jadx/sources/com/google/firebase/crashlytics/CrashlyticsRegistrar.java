package com.google.firebase.crashlytics;

import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.crashlytics.internal.concurrency.CrashlyticsWorkers;
import com.google.firebase.f;
import com.google.firebase.sessions.api.FirebaseSessionsDependencies;
import com.google.firebase.sessions.api.SessionSubscriber;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.ExecutorService;
import nb.a;
import nb.b;
import nb.c;
import ob.b0;
import ob.e;
import ob.h;
import ob.r;
import qb.g;

public class CrashlyticsRegistrar implements ComponentRegistrar {

    private final b0 f30304a = b0.a(a.class, ExecutorService.class);

    private final b0 f30305b = b0.a(b.class, ExecutorService.class);

    private final b0 f30306c = b0.a(c.class, ExecutorService.class);

    static {
        FirebaseSessionsDependencies.a(SessionSubscriber.Name.CRASHLYTICS);
    }

    public FirebaseCrashlytics b(e eVar) {
        CrashlyticsWorkers.f(false);
        long jCurrentTimeMillis = System.currentTimeMillis();
        FirebaseCrashlytics firebaseCrashlyticsB = FirebaseCrashlytics.b((f) eVar.a(f.class), (lc.e) eVar.a(lc.e.class), eVar.i(qb.a.class), eVar.i(mb.a.class), eVar.i(cd.a.class), (ExecutorService) eVar.f(this.f30304a), (ExecutorService) eVar.f(this.f30305b), (ExecutorService) eVar.f(this.f30306c));
        long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
        if (jCurrentTimeMillis2 > 16) {
            g.f().b("Initializing Crashlytics blocked main for " + jCurrentTimeMillis2 + " ms");
        }
        return firebaseCrashlyticsB;
    }

    @Override
    public List getComponents() {
        return Arrays.asList(ob.c.c(FirebaseCrashlytics.class).h("fire-cls").b(r.k(f.class)).b(r.k(lc.e.class)).b(r.l(this.f30304a)).b(r.l(this.f30305b)).b(r.l(this.f30306c)).b(r.a(qb.a.class)).b(r.a(mb.a.class)).b(r.a(cd.a.class)).f(new h() {
            @Override
            public final Object a(ob.e eVar) {
                return this.f69125a.b(eVar);
            }
        }).e().d(), zc.h.b("fire-cls", "19.3.0"));
    }
}
