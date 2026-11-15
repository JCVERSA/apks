package androidx.window.layout;

import android.app.Activity;
import androidx.window.extensions.layout.WindowLayoutComponent;
import androidx.window.extensions.layout.WindowLayoutInfo;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.locks.ReentrantLock;
import java.util.function.Consumer;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

public final class p implements v {

    private final WindowLayoutComponent f15013a;

    private final ReentrantLock f15014b;

    private final Map f15015c;

    private final Map f15016d;

    private static final class a implements Consumer {

        private final Activity f15017a;

        private final ReentrantLock f15018b;

        private a0 f15019c;

        private final Set f15020d;

        public a(Activity activity) {
            Intrinsics.h(activity, "activity");
            this.f15017a = activity;
            this.f15018b = new ReentrantLock();
            this.f15020d = new LinkedHashSet();
        }

        @Override
        public void accept(WindowLayoutInfo value) {
            Intrinsics.h(value, "value");
            ReentrantLock reentrantLock = this.f15018b;
            reentrantLock.lock();
            try {
                this.f15019c = q.f15021a.b(this.f15017a, value);
                Iterator it = this.f15020d.iterator();
                while (it.hasNext()) {
                    ((androidx.core.util.a) it.next()).accept(this.f15019c);
                }
                Unit unit = Unit.f64096a;
            } finally {
                reentrantLock.unlock();
            }
        }

        public final void b(androidx.core.util.a listener) {
            Intrinsics.h(listener, "listener");
            ReentrantLock reentrantLock = this.f15018b;
            reentrantLock.lock();
            try {
                a0 a0Var = this.f15019c;
                if (a0Var != null) {
                    listener.accept(a0Var);
                }
                this.f15020d.add(listener);
            } finally {
                reentrantLock.unlock();
            }
        }

        public final boolean c() {
            return this.f15020d.isEmpty();
        }

        public final void d(androidx.core.util.a listener) {
            Intrinsics.h(listener, "listener");
            ReentrantLock reentrantLock = this.f15018b;
            reentrantLock.lock();
            try {
                this.f15020d.remove(listener);
            } finally {
                reentrantLock.unlock();
            }
        }
    }

    public p(WindowLayoutComponent component) {
        Intrinsics.h(component, "component");
        this.f15013a = component;
        this.f15014b = new ReentrantLock();
        this.f15015c = new LinkedHashMap();
        this.f15016d = new LinkedHashMap();
    }

    @Override
    public void a(Activity activity, Executor executor, androidx.core.util.a callback) {
        Unit unit;
        Intrinsics.h(activity, "activity");
        Intrinsics.h(executor, "executor");
        Intrinsics.h(callback, "callback");
        ReentrantLock reentrantLock = this.f15014b;
        reentrantLock.lock();
        try {
            a aVar = (a) this.f15015c.get(activity);
            if (aVar == null) {
                unit = null;
            } else {
                aVar.b(callback);
                this.f15016d.put(callback, activity);
                unit = Unit.f64096a;
            }
            if (unit == null) {
                a aVar2 = new a(activity);
                this.f15015c.put(activity, aVar2);
                this.f15016d.put(callback, activity);
                aVar2.b(callback);
                this.f15013a.addWindowLayoutInfoListener(activity, o.a(aVar2));
            }
            Unit unit2 = Unit.f64096a;
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override
    public void b(androidx.core.util.a callback) {
        Intrinsics.h(callback, "callback");
        ReentrantLock reentrantLock = this.f15014b;
        reentrantLock.lock();
        try {
            Activity activity = (Activity) this.f15016d.get(callback);
            if (activity == null) {
                return;
            }
            a aVar = (a) this.f15015c.get(activity);
            if (aVar == null) {
                return;
            }
            aVar.d(callback);
            if (aVar.c()) {
                this.f15013a.removeWindowLayoutInfoListener(o.a(aVar));
            }
            Unit unit = Unit.f64096a;
        } finally {
            reentrantLock.unlock();
        }
    }
}
