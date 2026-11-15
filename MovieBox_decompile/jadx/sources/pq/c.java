package pq;

import android.app.Application;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public final class c {

    private static vr.a f69250b;

    public static final c f69249a = new c();

    private static b f69251c = b.f69239e.a();

    private c() {
    }

    public final void a(Function0 createFactory) {
        Intrinsics.h(createFactory, "createFactory");
        if (f69250b == null) {
            wf.a.f74274a.c("ShortTv", "checkCreateFactory, null create", true);
            f69250b = (vr.a) createFactory.invoke();
        }
    }

    public final b b() {
        return f69251c;
    }

    public final vr.a c() {
        return f69250b;
    }

    public final void d(Application application, vr.a factory) {
        Intrinsics.h(application, "application");
        Intrinsics.h(factory, "factory");
        f69250b = factory;
        application.registerActivityLifecycleCallbacks(zq.b.f76875a);
        jr.b.f63248a.c(application);
        com.transsnet.flow.event.b bVar = com.transsnet.flow.event.b.f58030a;
        if (bVar.b() == null) {
            bVar.c(application);
        }
        com.transsion.shorttv.subtitle.manager.b.f51081a.b().init();
    }
}
