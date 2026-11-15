package androidx.window.layout;

import android.app.Activity;
import android.content.Context;
import androidx.window.core.Version;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class t implements v {

    private static volatile t f15035d;

    private n f15037a;

    private final CopyOnWriteArrayList f15038b = new CopyOnWriteArrayList();

    public static final a f15034c = new a(null);

    private static final ReentrantLock f15036e = new ReentrantLock();

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final t a(Context context) {
            Intrinsics.h(context, "context");
            if (t.f15035d == null) {
                ReentrantLock reentrantLock = t.f15036e;
                reentrantLock.lock();
                try {
                    if (t.f15035d == null) {
                        t.f15035d = new t(t.f15034c.b(context));
                    }
                    Unit unit = Unit.f64096a;
                    reentrantLock.unlock();
                } catch (Throwable th2) {
                    reentrantLock.unlock();
                    throw th2;
                }
            }
            t tVar = t.f15035d;
            Intrinsics.e(tVar);
            return tVar;
        }

        public final n b(Context context) {
            Intrinsics.h(context, "context");
            try {
                if (!c(SidecarCompat.f14982f.c())) {
                    return null;
                }
                SidecarCompat sidecarCompat = new SidecarCompat(context);
                if (sidecarCompat.l()) {
                    return sidecarCompat;
                }
                return null;
            } catch (Throwable unused) {
                return null;
            }
        }

        public final boolean c(Version version) {
            return version != null && version.compareTo(Version.f14949f.a()) >= 0;
        }

        private a() {
        }
    }

    public final class b implements n.a {

        final t f15039a;

        public b(t this$0) {
            Intrinsics.h(this$0, "this$0");
            this.f15039a = this$0;
        }

        @Override
        public void a(Activity activity, a0 newLayout) {
            Intrinsics.h(activity, "activity");
            Intrinsics.h(newLayout, "newLayout");
            for (c cVar : this.f15039a.h()) {
                if (Intrinsics.c(cVar.d(), activity)) {
                    cVar.b(newLayout);
                }
            }
        }
    }

    public static final class c {

        private final Activity f15040a;

        private final Executor f15041b;

        private final androidx.core.util.a f15042c;

        private a0 f15043d;

        public c(Activity activity, Executor executor, androidx.core.util.a callback) {
            Intrinsics.h(activity, "activity");
            Intrinsics.h(executor, "executor");
            Intrinsics.h(callback, "callback");
            this.f15040a = activity;
            this.f15041b = executor;
            this.f15042c = callback;
        }

        public static final void c(c this$0, a0 newLayoutInfo) {
            Intrinsics.h(this$0, "this$0");
            Intrinsics.h(newLayoutInfo, "$newLayoutInfo");
            this$0.f15042c.accept(newLayoutInfo);
        }

        public final void b(final a0 newLayoutInfo) {
            Intrinsics.h(newLayoutInfo, "newLayoutInfo");
            this.f15043d = newLayoutInfo;
            this.f15041b.execute(new Runnable() {
                @Override
                public final void run() {
                    t.c.c(this.f15044a, newLayoutInfo);
                }
            });
        }

        public final Activity d() {
            return this.f15040a;
        }

        public final androidx.core.util.a e() {
            return this.f15042c;
        }

        public final a0 f() {
            return this.f15043d;
        }
    }

    public t(n nVar) {
        this.f15037a = nVar;
        n nVar2 = this.f15037a;
        if (nVar2 == null) {
            return;
        }
        nVar2.a(new b(this));
    }

    private final void f(Activity activity) {
        CopyOnWriteArrayList copyOnWriteArrayList = this.f15038b;
        if (!(copyOnWriteArrayList instanceof Collection) || !copyOnWriteArrayList.isEmpty()) {
            Iterator it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                if (Intrinsics.c(((c) it.next()).d(), activity)) {
                    return;
                }
            }
        }
        n nVar = this.f15037a;
        if (nVar == null) {
            return;
        }
        nVar.c(activity);
    }

    private final boolean i(Activity activity) {
        CopyOnWriteArrayList copyOnWriteArrayList = this.f15038b;
        if ((copyOnWriteArrayList instanceof Collection) && copyOnWriteArrayList.isEmpty()) {
            return false;
        }
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            if (Intrinsics.c(((c) it.next()).d(), activity)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public void a(Activity activity, Executor executor, androidx.core.util.a callback) {
        a0 a0VarF;
        Object next;
        Intrinsics.h(activity, "activity");
        Intrinsics.h(executor, "executor");
        Intrinsics.h(callback, "callback");
        ReentrantLock reentrantLock = f15036e;
        reentrantLock.lock();
        try {
            n nVarG = g();
            if (nVarG == null) {
                callback.accept(new a0(CollectionsKt.l()));
                return;
            }
            boolean zI = i(activity);
            c cVar = new c(activity, executor, callback);
            h().add(cVar);
            if (zI) {
                Iterator it = h().iterator();
                do {
                    a0VarF = null;
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                } while (!Intrinsics.c(activity, ((c) next).d()));
                c cVar2 = (c) next;
                if (cVar2 != null) {
                    a0VarF = cVar2.f();
                }
                if (a0VarF != null) {
                    cVar.b(a0VarF);
                }
            } else {
                nVarG.b(activity);
            }
            Unit unit = Unit.f64096a;
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override
    public void b(androidx.core.util.a callback) {
        Intrinsics.h(callback, "callback");
        synchronized (f15036e) {
            try {
                if (g() == null) {
                    return;
                }
                ArrayList arrayList = new ArrayList();
                for (c callbackWrapper : h()) {
                    if (callbackWrapper.e() == callback) {
                        Intrinsics.g(callbackWrapper, "callbackWrapper");
                        arrayList.add(callbackWrapper);
                    }
                }
                h().removeAll(arrayList);
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    f(((c) it.next()).d());
                }
                Unit unit = Unit.f64096a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final n g() {
        return this.f15037a;
    }

    public final CopyOnWriteArrayList h() {
        return this.f15038b;
    }
}
