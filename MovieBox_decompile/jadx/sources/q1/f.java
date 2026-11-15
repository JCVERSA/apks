package q1;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

public final class f {

    private final e f69325a = new e();

    private final Map f69326b = new LinkedHashMap();

    private final Set f69327c = new LinkedHashSet();

    private volatile boolean f69328d;

    public final void g(AutoCloseable autoCloseable) {
        if (autoCloseable != null) {
            try {
                autoCloseable.close();
            } catch (Exception e10) {
                throw new RuntimeException(e10);
            }
        }
    }

    public final void d(AutoCloseable closeable) {
        Intrinsics.h(closeable, "closeable");
        if (this.f69328d) {
            g(closeable);
            return;
        }
        synchronized (this.f69325a) {
            this.f69327c.add(closeable);
            Unit unit = Unit.f64096a;
        }
    }

    public final void e(String key, AutoCloseable closeable) {
        AutoCloseable autoCloseable;
        Intrinsics.h(key, "key");
        Intrinsics.h(closeable, "closeable");
        if (this.f69328d) {
            g(closeable);
            return;
        }
        synchronized (this.f69325a) {
            autoCloseable = (AutoCloseable) this.f69326b.put(key, closeable);
        }
        g(autoCloseable);
    }

    public final void f() {
        if (this.f69328d) {
            return;
        }
        this.f69328d = true;
        synchronized (this.f69325a) {
            try {
                Iterator it = this.f69326b.values().iterator();
                while (it.hasNext()) {
                    g((AutoCloseable) it.next());
                }
                Iterator it2 = this.f69327c.iterator();
                while (it2.hasNext()) {
                    g((AutoCloseable) it2.next());
                }
                this.f69327c.clear();
                Unit unit = Unit.f64096a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final AutoCloseable h(String key) {
        AutoCloseable autoCloseable;
        Intrinsics.h(key, "key");
        synchronized (this.f69325a) {
            autoCloseable = (AutoCloseable) this.f69326b.get(key);
        }
        return autoCloseable;
    }
}
