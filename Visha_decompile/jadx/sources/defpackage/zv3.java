package defpackage;

import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.util.Log;
import androidx.collection.ArrayMap;
import androidx.core.os.UserManagerCompat;
import com.google.firebase.FirebaseCommonRegistrar;
import com.google.firebase.components.ComponentDiscoveryService;
import com.google.firebase.concurrent.ExecutorsRegistrar;
import com.google.firebase.concurrent.UiExecutor;
import com.google.firebase.provider.FirebaseInitProvider;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import org.slf4j.Marker;

public class zv3 {
    public static final Object k = new Object();
    public static final Map l = new ArrayMap();
    public final Context a;
    public final String b;
    public final yw3 c;
    public final xc1 d;
    public final zi5 g;
    public final pj8 h;
    public final AtomicBoolean e = new AtomicBoolean(false);
    public final AtomicBoolean f = new AtomicBoolean();
    public final List i = new CopyOnWriteArrayList();
    public final List j = new CopyOnWriteArrayList();

    public interface a {
        void a(boolean z);
    }

    public static class b implements com.google.android.gms.common.api.internal.a.InterfaceC0092a {
        public static AtomicReference a = new AtomicReference();

        public static void c(Context context) {
            if (d28.a() && (context.getApplicationContext() instanceof Application)) {
                Application application = (Application) context.getApplicationContext();
                if (a.get() == null) {
                    b bVar = new b();
                    if (wk5.a(a, null, bVar)) {
                        com.google.android.gms.common.api.internal.a.c(application);
                        com.google.android.gms.common.api.internal.a.b().a(bVar);
                    }
                }
            }
        }

        @Override
        public void a(boolean z) {
            synchronized (zv3.k) {
                try {
                    for (zv3 zv3Var : new ArrayList(zv3.l.values())) {
                        if (zv3Var.e.get()) {
                            zv3Var.x(z);
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public static class c extends BroadcastReceiver {
        public static AtomicReference b = new AtomicReference();
        public final Context a;

        public c(Context context) {
            this.a = context;
        }

        public static void b(Context context) {
            if (b.get() == null) {
                c cVar = new c(context);
                if (wk5.a(b, null, cVar)) {
                    context.registerReceiver(cVar, new IntentFilter("android.intent.action.USER_UNLOCKED"));
                }
            }
        }

        public void c() {
            this.a.unregisterReceiver(this);
        }

        @Override
        public void onReceive(Context context, Intent intent) {
            synchronized (zv3.k) {
                try {
                    Iterator it = zv3.l.values().iterator();
                    while (it.hasNext()) {
                        ((zv3) it.next()).o();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            c();
        }
    }

    public zv3(final Context context, String str, yw3 yw3Var) {
        this.a = (Context) wd8.l(context);
        this.b = wd8.f(str);
        this.c = (yw3) wd8.l(yw3Var);
        dx9 dx9VarB = FirebaseInitProvider.b();
        zw3.b("Firebase");
        zw3.b("ComponentDiscovery");
        List listB = mc1.c(context, ComponentDiscoveryService.class).b();
        zw3.a();
        zw3.b("Runtime");
        xc1.b bVarG = xc1.k(UiExecutor.INSTANCE).d(listB).c(new FirebaseCommonRegistrar()).c(new ExecutorsRegistrar()).b(zb1.s(context, Context.class, new Class[0])).b(zb1.s(this, zv3.class, new Class[0])).b(zb1.s(yw3Var, yw3.class, new Class[0])).g(new qc1());
        if (UserManagerCompat.isUserUnlocked(context) && FirebaseInitProvider.c()) {
            bVarG.b(zb1.s(dx9VarB, dx9.class, new Class[0]));
        }
        xc1 xc1VarE = bVarG.e();
        this.d = xc1VarE;
        zw3.a();
        this.g = new zi5(new pj8() {
            @Override
            public final Object get() {
                return this.a.u(context);
            }
        });
        this.h = xc1VarE.e(com.google.firebase.heartbeatinfo.a.class);
        g(new a() {
            @Override
            public final void a(boolean z) {
                this.a.v(z);
            }
        });
        zw3.a();
    }

    public static zv3 k() {
        zv3 zv3Var;
        synchronized (k) {
            try {
                zv3Var = (zv3) l.get("[DEFAULT]");
                if (zv3Var == null) {
                    throw new IllegalStateException("Default FirebaseApp is not initialized in this process " + ch8.a() + ". Make sure to call FirebaseApp.initializeApp(Context) first.");
                }
                ((com.google.firebase.heartbeatinfo.a) zv3Var.h.get()).l();
            } catch (Throwable th) {
                throw th;
            }
        }
        return zv3Var;
    }

    public static zv3 p(Context context) {
        synchronized (k) {
            try {
                if (l.containsKey("[DEFAULT]")) {
                    return k();
                }
                yw3 yw3VarA = yw3.a(context);
                if (yw3VarA == null) {
                    Log.w("FirebaseApp", "Default FirebaseApp failed to initialize because no default options were found. This usually means that com.google.gms:google-services was not applied to your gradle project.");
                    return null;
                }
                return q(context, yw3VarA);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static zv3 q(Context context, yw3 yw3Var) {
        return r(context, yw3Var, "[DEFAULT]");
    }

    public static zv3 r(Context context, yw3 yw3Var, String str) {
        zv3 zv3Var;
        b.c(context);
        String strW = w(str);
        if (context.getApplicationContext() != null) {
            context = context.getApplicationContext();
        }
        synchronized (k) {
            Map map = l;
            wd8.p(!map.containsKey(strW), "FirebaseApp name " + strW + " already exists!");
            wd8.m(context, "Application context cannot be null.");
            zv3Var = new zv3(context, strW, yw3Var);
            map.put(strW, zv3Var);
        }
        zv3Var.o();
        return zv3Var;
    }

    public static String w(String str) {
        return str.trim();
    }

    public boolean equals(Object obj) {
        if (obj instanceof zv3) {
            return this.b.equals(((zv3) obj).l());
        }
        return false;
    }

    public void g(a aVar) {
        h();
        if (this.e.get() && com.google.android.gms.common.api.internal.a.b().d()) {
            aVar.a(true);
        }
        this.i.add(aVar);
    }

    public final void h() {
        wd8.p(!this.f.get(), "FirebaseApp was deleted");
    }

    public int hashCode() {
        return this.b.hashCode();
    }

    public Object i(Class cls) {
        h();
        return this.d.a(cls);
    }

    public Context j() {
        h();
        return this.a;
    }

    public String l() {
        h();
        return this.b;
    }

    public yw3 m() {
        h();
        return this.c;
    }

    public String n() {
        return h80.c(l().getBytes(Charset.defaultCharset())) + Marker.ANY_NON_NULL_MARKER + h80.c(m().c().getBytes(Charset.defaultCharset()));
    }

    public final void o() {
        if (!UserManagerCompat.isUserUnlocked(this.a)) {
            Log.i("FirebaseApp", "Device in Direct Boot Mode: postponing initialization of Firebase APIs for app " + l());
            c.b(this.a);
            return;
        }
        Log.i("FirebaseApp", "Device unlocked: initializing all Firebase APIs for app " + l());
        this.d.n(t());
        ((com.google.firebase.heartbeatinfo.a) this.h.get()).l();
    }

    public boolean s() {
        h();
        return ((zr1) this.g.get()).b();
    }

    public boolean t() {
        return "[DEFAULT]".equals(l());
    }

    public String toString() {
        return jc7.c(this).a("name", this.b).a("options", this.c).toString();
    }

    public final zr1 u(Context context) {
        return new zr1(context, n(), (kk8) this.d.a(kk8.class));
    }

    public final void v(boolean z) {
        if (z) {
            return;
        }
        ((com.google.firebase.heartbeatinfo.a) this.h.get()).l();
    }

    public final void x(boolean z) {
        Log.d("FirebaseApp", "Notifying background state change listeners.");
        Iterator it = this.i.iterator();
        while (it.hasNext()) {
            ((a) it.next()).a(z);
        }
    }
}
