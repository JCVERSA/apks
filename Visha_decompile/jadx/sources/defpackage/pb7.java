package defpackage;

import android.app.Application;
import android.util.Log;
import com.cloud.tupdate.TUpdate;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.LazyThreadSafetyMode;
import kotlin.Result;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class pb7 {
    public static final a e = new a(null);
    public static final yi5 f = kotlin.b.b(LazyThreadSafetyMode.SYNCHRONIZED, new c74() {
        @Override
        public final Object invoke() {
            return pb7.i();
        }
    });
    public final CopyOnWriteArrayList a = new CopyOnWriteArrayList();
    public final AtomicReference b = new AtomicReference(null);
    public final CopyOnWriteArrayList c = new CopyOnWriteArrayList();
    public final AtomicReference d = new AtomicReference(null);

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final pb7 a() {
            return b();
        }

        public final pb7 b() {
            return (pb7) pb7.f.getValue();
        }

        public a() {
        }
    }

    public static final class b implements rv4 {
        public b() {
        }

        @Override
        public void a(int i, String str) {
            y45.j(str, "message");
            pb7.this.k(new qb7(i, str));
        }

        @Override
        public void b(boolean z, boolean z2, String str) {
            y45.j(str, "updateVersion");
            pb7.this.k(new rb7(z, z2, str));
        }
    }

    public static final class c implements rv4 {
        public c() {
        }

        @Override
        public void a(int i, String str) {
            y45.j(str, "message");
            pb7.this.j(new qb7(i, str));
        }

        @Override
        public void b(boolean z, boolean z2, String str) {
            y45.j(str, "updateVersion");
            pb7.this.j(new rb7(z, z2, str));
        }
    }

    public static final pb7 h() {
        return e.a();
    }

    public static final pb7 i() {
        return new pb7();
    }

    public final void e(rv4 rv4Var) {
        if (rv4Var != null) {
            this.a.add(rv4Var);
            n((wgb) this.b.get(), rv4Var);
        }
    }

    public final void f(rv4 rv4Var) {
        if (rv4Var != null) {
            this.c.add(rv4Var);
            n((wgb) this.d.get(), rv4Var);
        }
    }

    public final void g() {
        TUpdate.a aVar = TUpdate.c;
        Application applicationA = se.a();
        y45.i(applicationA, "getApp(...)");
        aVar.c(applicationA).g(new b());
    }

    public final void j(wgb wgbVar) {
        Object objM279constructorimpl;
        Log.d("OSUpdateCheckManager", "refreshManualCheckUpdateInfo " + wgbVar);
        try {
            Result.Companion companion = Result.INSTANCE;
            this.b.set(wgbVar);
            Iterator it = this.a.iterator();
            y45.i(it, "iterator(...)");
            while (it.hasNext()) {
                n(wgbVar, (rv4) it.next());
            }
            objM279constructorimpl = Result.m279constructorimpl(zfb.a);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(kotlin.c.a(th));
        }
        Throwable thM282exceptionOrNullimpl = Result.m282exceptionOrNullimpl(objM279constructorimpl);
        if (thM282exceptionOrNullimpl != null) {
            String message = thM282exceptionOrNullimpl.getMessage();
            if (message == null) {
                message = "NULL";
            }
            Log.e("OSUpdateCheckManager", "refreshManualCheckUpdateInfo error:" + message);
        }
    }

    public final void k(wgb wgbVar) {
        Object objM279constructorimpl;
        Log.d("OSUpdateCheckManager", "refreshPreUpdateInfo " + wgbVar);
        try {
            Result.Companion companion = Result.INSTANCE;
            this.d.set(wgbVar);
            Iterator it = this.c.iterator();
            y45.i(it, "iterator(...)");
            while (it.hasNext()) {
                n(wgbVar, (rv4) it.next());
            }
            objM279constructorimpl = Result.m279constructorimpl(zfb.a);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(kotlin.c.a(th));
        }
        Throwable thM282exceptionOrNullimpl = Result.m282exceptionOrNullimpl(objM279constructorimpl);
        if (thM282exceptionOrNullimpl != null) {
            String message = thM282exceptionOrNullimpl.getMessage();
            if (message == null) {
                message = "NULL";
            }
            Log.e("OSUpdateCheckManager", "refreshPreUpdateInfo error:" + message);
        }
    }

    public final void l(rv4 rv4Var) {
        y45.j(rv4Var, "listener");
        this.a.remove(rv4Var);
    }

    public final void m(rv4 rv4Var) {
        this.c.remove(rv4Var);
    }

    public final void n(wgb wgbVar, rv4 rv4Var) {
        if (wgbVar == null || rv4Var == null) {
            return;
        }
        if (wgbVar instanceof rb7) {
            rb7 rb7Var = (rb7) wgbVar;
            rv4Var.b(rb7Var.c(), rb7Var.b(), rb7Var.a());
        } else if (wgbVar instanceof qb7) {
            qb7 qb7Var = (qb7) wgbVar;
            rv4Var.a(qb7Var.a(), qb7Var.b());
        }
    }

    public final void o() {
        this.b.set(null);
        TUpdate.a aVar = TUpdate.c;
        Application applicationA = se.a();
        y45.i(applicationA, "getApp(...)");
        aVar.c(applicationA).e(new c());
    }
}
