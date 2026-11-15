package cs;

import android.app.Application;
import ds.b;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public final class a {

    public static final a f58651a = new a();

    private static ws.a f58652b;

    private a() {
    }

    public final void a(Function0 createFactory) {
        Intrinsics.h(createFactory, "createFactory");
        if (f58652b == null) {
            wf.a.f74274a.c("ShortTv", "checkCreateFactory, null create", true);
            f58652b = (ws.a) createFactory.invoke();
        }
    }

    public final ws.a b() {
        return f58652b;
    }

    public final void c(Application application, ws.a factory) {
        Intrinsics.h(application, "application");
        Intrinsics.h(factory, "factory");
        f58652b = factory;
        application.registerActivityLifecycleCallbacks(b.f59063a);
        ns.b.f67352a.c(application);
        zs.b.f76879a.b().init();
    }
}
