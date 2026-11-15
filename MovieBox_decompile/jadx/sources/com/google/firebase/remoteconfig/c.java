package com.google.firebase.remoteconfig;

import android.app.Application;
import android.content.Context;
import androidx.compose.animation.core.j0;
import com.google.android.gms.common.api.internal.BackgroundDetector;
import com.google.android.gms.common.util.BiConsumer;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.f;
import com.google.firebase.remoteconfig.internal.ConfigFetchHandler;
import com.google.firebase.remoteconfig.internal.ConfigFetchHttpClient;
import com.google.firebase.remoteconfig.internal.m;
import com.google.firebase.remoteconfig.internal.n;
import com.google.firebase.remoteconfig.internal.o;
import com.google.firebase.remoteconfig.internal.r;
import com.google.firebase.remoteconfig.internal.u;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.atomic.AtomicReference;
import lc.e;

public class c implements cd.a {

    private static final Clock f31596j = DefaultClock.getInstance();

    private static final Random f31597k = new Random();

    private static final Map f31598l = new HashMap();

    private final Map f31599a;

    private final Context f31600b;

    private final ScheduledExecutorService f31601c;

    private final f f31602d;

    private final e f31603e;

    private final jb.b f31604f;

    private final kc.b f31605g;

    private final String f31606h;

    private Map f31607i;

    private static class a implements BackgroundDetector.BackgroundStateChangeListener {

        private static final AtomicReference f31608a = new AtomicReference();

        private a() {
        }

        public static void b(Context context) {
            Application application = (Application) context.getApplicationContext();
            AtomicReference atomicReference = f31608a;
            if (atomicReference.get() == null) {
                a aVar = new a();
                if (j0.a(atomicReference, null, aVar)) {
                    BackgroundDetector.initialize(application);
                    BackgroundDetector.getInstance().addListener(aVar);
                }
            }
        }

        @Override
        public void onBackgroundStateChanged(boolean z10) {
            c.r(z10);
        }
    }

    c(Context context, ScheduledExecutorService scheduledExecutorService, f fVar, e eVar, jb.b bVar, kc.b bVar2) {
        this(context, scheduledExecutorService, fVar, eVar, bVar, bVar2, true);
    }

    private com.google.firebase.remoteconfig.internal.e f(String str, String str2) {
        return com.google.firebase.remoteconfig.internal.e.h(this.f31601c, r.c(this.f31600b, String.format("%s_%s_%s_%s.json", "frc", this.f31606h, str, str2)));
    }

    private m j(com.google.firebase.remoteconfig.internal.e eVar, com.google.firebase.remoteconfig.internal.e eVar2) {
        return new m(this.f31601c, eVar, eVar2);
    }

    static n k(Context context, String str, String str2) {
        return new n(context.getSharedPreferences(String.format("%s_%s_%s_%s", "frc", str, str2, "settings"), 0));
    }

    private static u l(f fVar, String str, kc.b bVar) {
        if (p(fVar) && str.equals("firebase")) {
            return new u(bVar);
        }
        return null;
    }

    private bd.e n(com.google.firebase.remoteconfig.internal.e eVar, com.google.firebase.remoteconfig.internal.e eVar2) {
        return new bd.e(eVar, bd.a.a(eVar, eVar2), this.f31601c);
    }

    private static boolean o(f fVar, String str) {
        return str.equals("firebase") && p(fVar);
    }

    private static boolean p(f fVar) {
        return fVar.m().equals("[DEFAULT]");
    }

    public static mb.a q() {
        return null;
    }

    public static synchronized void r(boolean z10) {
        Iterator it = f31598l.values().iterator();
        while (it.hasNext()) {
            ((com.google.firebase.remoteconfig.a) it.next()).x(z10);
        }
    }

    @Override
    public void a(String str, dd.f fVar) {
        e(str).o().h(fVar);
    }

    synchronized com.google.firebase.remoteconfig.a d(f fVar, String str, e eVar, jb.b bVar, Executor executor, com.google.firebase.remoteconfig.internal.e eVar2, com.google.firebase.remoteconfig.internal.e eVar3, com.google.firebase.remoteconfig.internal.e eVar4, ConfigFetchHandler configFetchHandler, m mVar, n nVar, bd.e eVar5) {
        try {
            if (!this.f31599a.containsKey(str)) {
                com.google.firebase.remoteconfig.a aVar = new com.google.firebase.remoteconfig.a(this.f31600b, fVar, eVar, o(fVar, str) ? bVar : null, executor, eVar2, eVar3, eVar4, configFetchHandler, mVar, nVar, m(fVar, eVar, configFetchHandler, eVar3, this.f31600b, str, nVar), eVar5);
                aVar.y();
                this.f31599a.put(str, aVar);
                f31598l.put(str, aVar);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return (com.google.firebase.remoteconfig.a) this.f31599a.get(str);
    }

    public synchronized com.google.firebase.remoteconfig.a e(String str) {
        com.google.firebase.remoteconfig.internal.e eVarF;
        com.google.firebase.remoteconfig.internal.e eVarF2;
        com.google.firebase.remoteconfig.internal.e eVarF3;
        n nVarK;
        m mVarJ;
        try {
            eVarF = f(str, "fetch");
            eVarF2 = f(str, "activate");
            eVarF3 = f(str, "defaults");
            nVarK = k(this.f31600b, this.f31606h, str);
            mVarJ = j(eVarF2, eVarF3);
            final u uVarL = l(this.f31602d, str, this.f31605g);
            if (uVarL != null) {
                mVarJ.b(new BiConsumer() {
                    @Override
                    public final void accept(Object obj, Object obj2) {
                        uVarL.a((String) obj, (com.google.firebase.remoteconfig.internal.f) obj2);
                    }
                });
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return d(this.f31602d, str, this.f31603e, this.f31604f, this.f31601c, eVarF, eVarF2, eVarF3, h(str, eVarF, nVarK), mVarJ, nVarK, n(eVarF2, eVarF3));
    }

    com.google.firebase.remoteconfig.a g() {
        return e("firebase");
    }

    synchronized ConfigFetchHandler h(String str, com.google.firebase.remoteconfig.internal.e eVar, n nVar) {
        try {
        } catch (Throwable th2) {
            throw th2;
        }
        return new ConfigFetchHandler(this.f31603e, p(this.f31602d) ? this.f31605g : new kc.b() {
            @Override
            public final Object get() {
                return com.google.firebase.remoteconfig.c.q();
            }
        }, this.f31601c, f31596j, f31597k, eVar, i(this.f31602d.n().b(), str, nVar), nVar, this.f31607i);
    }

    ConfigFetchHttpClient i(String str, String str2, n nVar) {
        return new ConfigFetchHttpClient(this.f31600b, this.f31602d.n().c(), str, str2, nVar.b(), nVar.b());
    }

    synchronized o m(f fVar, e eVar, ConfigFetchHandler configFetchHandler, com.google.firebase.remoteconfig.internal.e eVar2, Context context, String str, n nVar) {
        return new o(fVar, eVar, configFetchHandler, eVar2, context, str, nVar, this.f31601c);
    }

    protected c(Context context, ScheduledExecutorService scheduledExecutorService, f fVar, e eVar, jb.b bVar, kc.b bVar2, boolean z10) {
        this.f31599a = new HashMap();
        this.f31607i = new HashMap();
        this.f31600b = context;
        this.f31601c = scheduledExecutorService;
        this.f31602d = fVar;
        this.f31603e = eVar;
        this.f31604f = bVar;
        this.f31605g = bVar2;
        this.f31606h = fVar.n().c();
        a.b(context);
        if (z10) {
            Tasks.call(scheduledExecutorService, new Callable() {
                @Override
                public final Object call() {
                    return this.f31595a.g();
                }
            });
        }
    }
}
