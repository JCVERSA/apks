package i4;

import android.content.Context;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

public abstract class g {

    private final k4.c f61835a;

    private final Context f61836b;

    private final Object f61837c;

    private final LinkedHashSet f61838d;

    private Object f61839e;

    protected g(Context context, k4.c taskExecutor) {
        Intrinsics.h(context, "context");
        Intrinsics.h(taskExecutor, "taskExecutor");
        this.f61835a = taskExecutor;
        Context applicationContext = context.getApplicationContext();
        Intrinsics.g(applicationContext, "context.applicationContext");
        this.f61836b = applicationContext;
        this.f61837c = new Object();
        this.f61838d = new LinkedHashSet();
    }

    public static final void b(List listenersList, g this$0) {
        Intrinsics.h(listenersList, "$listenersList");
        Intrinsics.h(this$0, "this$0");
        Iterator it = listenersList.iterator();
        while (it.hasNext()) {
            ((g4.a) it.next()).a(this$0.f61839e);
        }
    }

    public final void c(g4.a listener) {
        Intrinsics.h(listener, "listener");
        synchronized (this.f61837c) {
            try {
                if (this.f61838d.add(listener)) {
                    if (this.f61838d.size() == 1) {
                        this.f61839e = e();
                        androidx.work.j.e().a(h.f61840a, getClass().getSimpleName() + ": initial state = " + this.f61839e);
                        h();
                    }
                    listener.a(this.f61839e);
                }
                Unit unit = Unit.f64096a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    protected final Context d() {
        return this.f61836b;
    }

    public abstract Object e();

    public final void f(g4.a listener) {
        Intrinsics.h(listener, "listener");
        synchronized (this.f61837c) {
            try {
                if (this.f61838d.remove(listener) && this.f61838d.isEmpty()) {
                    i();
                }
                Unit unit = Unit.f64096a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void g(Object obj) {
        synchronized (this.f61837c) {
            Object obj2 = this.f61839e;
            if (obj2 == null || !Intrinsics.c(obj2, obj)) {
                this.f61839e = obj;
                final List listR0 = CollectionsKt.R0(this.f61838d);
                this.f61835a.a().execute(new Runnable() {
                    @Override
                    public final void run() {
                        g.b(listR0, this);
                    }
                });
                Unit unit = Unit.f64096a;
            }
        }
    }

    public abstract void h();

    public abstract void i();
}
