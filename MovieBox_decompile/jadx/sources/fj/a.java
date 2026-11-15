package fj;

import com.therouter.router.RouteItem;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.Intrinsics;

public final class a implements mf.b {

    private final mf.b f60178a;

    private final RouteItem f60179b;

    private final AtomicBoolean f60180c;

    private final AtomicBoolean f60181d;

    private final AtomicBoolean f60182e;

    public a(mf.b delegate, RouteItem postcard) {
        Intrinsics.h(delegate, "delegate");
        Intrinsics.h(postcard, "postcard");
        this.f60178a = delegate;
        this.f60179b = postcard;
        this.f60180c = new AtomicBoolean(false);
        this.f60181d = new AtomicBoolean(false);
        this.f60182e = new AtomicBoolean(false);
    }

    @Override
    public void a(RouteItem postcard) {
        Intrinsics.h(postcard, "postcard");
        if (this.f60180c.get()) {
            return;
        }
        this.f60181d.set(true);
    }

    public final boolean b() {
        if (this.f60180c.get() || !this.f60181d.get() || !this.f60182e.compareAndSet(false, true)) {
            return false;
        }
        this.f60178a.a(this.f60179b);
        return true;
    }

    public final void c() {
        this.f60180c.set(true);
    }
}
