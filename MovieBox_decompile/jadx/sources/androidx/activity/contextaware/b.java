package androidx.activity.contextaware;

import android.content.Context;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import kotlin.jvm.internal.Intrinsics;

public final class b {

    private final Set f565a = new CopyOnWriteArraySet();

    private volatile Context f566b;

    public final void a(d listener) {
        Intrinsics.h(listener, "listener");
        Context context = this.f566b;
        if (context != null) {
            listener.a(context);
        }
        this.f565a.add(listener);
    }

    public final void b() {
        this.f566b = null;
    }

    public final void c(Context context) {
        Intrinsics.h(context, "context");
        this.f566b = context;
        Iterator it = this.f565a.iterator();
        while (it.hasNext()) {
            ((d) it.next()).a(context);
        }
    }

    public final Context d() {
        return this.f566b;
    }

    public final void e(d listener) {
        Intrinsics.h(listener, "listener");
        this.f565a.remove(listener);
    }
}
