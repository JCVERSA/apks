package com.google.firebase;

import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.util.Log;
import androidx.compose.animation.core.j0;
import androidx.core.os.t;
import com.google.android.gms.common.api.internal.BackgroundDetector;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Base64Utils;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.util.ProcessUtils;
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
import ob.u;

public class f {

    private static final Object f31018k = new Object();

    static final Map f31019l = new androidx.collection.a();

    public static final int f31020m = 0;

    private final Context f31021a;

    private final String f31022b;

    private final m f31023c;

    private final ob.o f31024d;

    private final u f31027g;

    private final kc.b f31028h;

    private final AtomicBoolean f31025e = new AtomicBoolean(false);

    private final AtomicBoolean f31026f = new AtomicBoolean();

    private final List f31029i = new CopyOnWriteArrayList();

    private final List f31030j = new CopyOnWriteArrayList();

    public interface a {
        void onBackgroundStateChanged(boolean z10);
    }

    private static class b implements BackgroundDetector.BackgroundStateChangeListener {

        private static AtomicReference f31031a = new AtomicReference();

        private b() {
        }

        public static void b(Context context) {
            if (PlatformVersion.isAtLeastIceCreamSandwich() && (context.getApplicationContext() instanceof Application)) {
                Application application = (Application) context.getApplicationContext();
                if (f31031a.get() == null) {
                    b bVar = new b();
                    if (j0.a(f31031a, null, bVar)) {
                        BackgroundDetector.initialize(application);
                        BackgroundDetector.getInstance().addListener(bVar);
                    }
                }
            }
        }

        @Override
        public void onBackgroundStateChanged(boolean z10) {
            synchronized (f.f31018k) {
                try {
                    for (f fVar : new ArrayList(f.f31019l.values())) {
                        if (fVar.f31025e.get()) {
                            fVar.y(z10);
                        }
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    private static class c extends BroadcastReceiver {

        private static AtomicReference f31032b = new AtomicReference();

        private final Context f31033a;

        public c(Context context) {
            this.f31033a = context;
        }

        public static void b(Context context) {
            if (f31032b.get() == null) {
                c cVar = new c(context);
                if (j0.a(f31032b, null, cVar)) {
                    context.registerReceiver(cVar, new IntentFilter("android.intent.action.USER_UNLOCKED"));
                }
            }
        }

        public void c() {
            this.f31033a.unregisterReceiver(this);
        }

        @Override
        public void onReceive(Context context, Intent intent) {
            synchronized (f.f31018k) {
                try {
                    Iterator it = f.f31019l.values().iterator();
                    while (it.hasNext()) {
                        ((f) it.next()).p();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            c();
        }
    }

    protected f(final Context context, String str, m mVar) {
        this.f31021a = (Context) Preconditions.checkNotNull(context);
        this.f31022b = Preconditions.checkNotEmpty(str);
        this.f31023c = (m) Preconditions.checkNotNull(mVar);
        n nVarB = FirebaseInitProvider.b();
        ed.c.b("Firebase");
        ed.c.b("ComponentDiscovery");
        List listB = ob.g.c(context, ComponentDiscoveryService.class).b();
        ed.c.a();
        ed.c.b("Runtime");
        ob.o.b bVarG = ob.o.m(UiExecutor.INSTANCE).d(listB).c(new FirebaseCommonRegistrar()).c(new ExecutorsRegistrar()).b(ob.c.s(context, Context.class, new Class[0])).b(ob.c.s(this, f.class, new Class[0])).b(ob.c.s(mVar, m.class, new Class[0])).g(new ed.b());
        if (t.a(context) && FirebaseInitProvider.c()) {
            bVarG.b(ob.c.s(nVarB, n.class, new Class[0]));
        }
        ob.o oVarE = bVarG.e();
        this.f31024d = oVarE;
        ed.c.a();
        this.f31027g = new u(new kc.b() {
            @Override
            public final Object get() {
                return this.f30981a.v(context);
            }
        });
        this.f31028h = oVarE.h(com.google.firebase.heartbeatinfo.a.class);
        g(new a() {
            @Override
            public final void onBackgroundStateChanged(boolean z10) {
                this.f30991a.w(z10);
            }
        });
        ed.c.a();
    }

    private void i() {
        Preconditions.checkState(!this.f31026f.get(), "FirebaseApp was deleted");
    }

    public static f l() {
        f fVar;
        synchronized (f31018k) {
            try {
                fVar = (f) f31019l.get("[DEFAULT]");
                if (fVar == null) {
                    throw new IllegalStateException("Default FirebaseApp is not initialized in this process " + ProcessUtils.getMyProcessName() + ". Make sure to call FirebaseApp.initializeApp(Context) first.");
                }
                ((com.google.firebase.heartbeatinfo.a) fVar.f31028h.get()).l();
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return fVar;
    }

    public void p() {
        if (!t.a(this.f31021a)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Device in Direct Boot Mode: postponing initialization of Firebase APIs for app ");
            sb2.append(m());
            c.b(this.f31021a);
            return;
        }
        StringBuilder sb3 = new StringBuilder();
        sb3.append("Device unlocked: initializing all Firebase APIs for app ");
        sb3.append(m());
        this.f31024d.p(u());
        ((com.google.firebase.heartbeatinfo.a) this.f31028h.get()).l();
    }

    public static f q(Context context) {
        synchronized (f31018k) {
            try {
                if (f31019l.containsKey("[DEFAULT]")) {
                    return l();
                }
                m mVarA = m.a(context);
                if (mVarA == null) {
                    Log.w("FirebaseApp", "Default FirebaseApp failed to initialize because no default options were found. This usually means that com.google.gms:google-services was not applied to your gradle project.");
                    return null;
                }
                return r(context, mVarA);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static f r(Context context, m mVar) {
        return s(context, mVar, "[DEFAULT]");
    }

    public static f s(Context context, m mVar, String str) {
        f fVar;
        b.b(context);
        String strX = x(str);
        if (context.getApplicationContext() != null) {
            context = context.getApplicationContext();
        }
        synchronized (f31018k) {
            Map map = f31019l;
            Preconditions.checkState(!map.containsKey(strX), "FirebaseApp name " + strX + " already exists!");
            Preconditions.checkNotNull(context, "Application context cannot be null.");
            fVar = new f(context, strX, mVar);
            map.put(strX, fVar);
        }
        fVar.p();
        return fVar;
    }

    public oc.a v(Context context) {
        return new oc.a(context, o(), (hc.c) this.f31024d.a(hc.c.class));
    }

    public void w(boolean z10) {
        if (z10) {
            return;
        }
        ((com.google.firebase.heartbeatinfo.a) this.f31028h.get()).l();
    }

    private static String x(String str) {
        return str.trim();
    }

    public void y(boolean z10) {
        Iterator it = this.f31029i.iterator();
        while (it.hasNext()) {
            ((a) it.next()).onBackgroundStateChanged(z10);
        }
    }

    public boolean equals(Object obj) {
        if (obj instanceof f) {
            return this.f31022b.equals(((f) obj).m());
        }
        return false;
    }

    public void g(a aVar) {
        i();
        if (this.f31025e.get() && BackgroundDetector.getInstance().isInBackground()) {
            aVar.onBackgroundStateChanged(true);
        }
        this.f31029i.add(aVar);
    }

    public void h(g gVar) {
        i();
        Preconditions.checkNotNull(gVar);
        this.f31030j.add(gVar);
    }

    public int hashCode() {
        return this.f31022b.hashCode();
    }

    public Object j(Class cls) {
        i();
        return this.f31024d.a(cls);
    }

    public Context k() {
        i();
        return this.f31021a;
    }

    public String m() {
        i();
        return this.f31022b;
    }

    public m n() {
        i();
        return this.f31023c;
    }

    public String o() {
        return Base64Utils.encodeUrlSafeNoPadding(m().getBytes(Charset.defaultCharset())) + "+" + Base64Utils.encodeUrlSafeNoPadding(n().c().getBytes(Charset.defaultCharset()));
    }

    public boolean t() {
        i();
        return ((oc.a) this.f31027g.get()).b();
    }

    public String toString() {
        return Objects.toStringHelper(this).add("name", this.f31022b).add("options", this.f31023c).toString();
    }

    public boolean u() {
        return "[DEFAULT]".equals(m());
    }
}
