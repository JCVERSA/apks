package io.appmetrica.analytics.impl;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.WorkerThread;
import defpackage.x71;
import defpackage.y45;
import defpackage.y71;
import io.appmetrica.analytics.AppMetrica;
import io.appmetrica.analytics.coreapi.internal.executors.ICommonExecutor;
import io.appmetrica.analytics.coreapi.internal.executors.IHandlerExecutor;
import io.appmetrica.analytics.coreutils.internal.io.FileUtils;
import io.appmetrica.analytics.internal.CounterConfiguration;
import io.appmetrica.analytics.ndkcrashesapi.internal.NativeCrashServiceConfig;
import io.appmetrica.analytics.ndkcrashesapi.internal.NativeCrashServiceModule;
import io.appmetrica.analytics.networktasks.internal.NetworkServiceLocator;
import java.io.File;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class I1 implements InterfaceC2901u1, InterfaceC2676l0 {
    public boolean a;
    public final Context b;
    public volatile InterfaceC2876t1 c;
    public final C2854s4 d;
    public final P1 e;
    public Lg f;
    public final C2686la g;
    public final Id h;
    public final C2653k2 i;
    public final ICommonExecutor j;
    public final J1 k;
    public final G1 l;
    public final Vg m;
    public C2757o6 n;

    @MainThread
    public I1(@NonNull Context context, @NonNull InterfaceC2876t1 interfaceC2876t1) {
        this(context, interfaceC2876t1, new C2855s5(context));
    }

    @Override
    @WorkerThread
    public final void a(Intent intent, int i) {
        b(intent, i);
    }

    @Override
    @WorkerThread
    public final void b(Intent intent) {
        this.e.d(intent);
        if (intent != null) {
            String action = intent.getAction();
            Uri data = intent.getData();
            String encodedAuthority = data == null ? null : data.getEncodedAuthority();
            if ("io.appmetrica.analytics.IAppMetricaService".equals(action) && data != null && data.getPath().equals("/client")) {
                int i = Integer.parseInt(data.getQueryParameter("pid"));
                this.d.a(i, encodedAuthority, data.getQueryParameter("psid"));
                this.i.a(i);
            }
        }
    }

    @Override
    @WorkerThread
    public final void c(Intent intent) {
        P1 p1 = this.e;
        if (intent == null) {
            p1.getClass();
            return;
        }
        p1.getClass();
        String action = intent.getAction();
        if (!TextUtils.isEmpty(action)) {
            p1.a.a(action, Integer.valueOf(P1.a(intent)));
        }
        for (Map.Entry entry : p1.b.entrySet()) {
            O1 o1 = (O1) entry.getKey();
            if (((N1) entry.getValue()).a(intent)) {
                o1.a(intent);
            }
        }
    }

    @Override
    @WorkerThread
    public final void onConfigurationChanged(@NonNull Configuration configuration) {
        C2910ua.E.u().a(configuration);
    }

    @Override
    @WorkerThread
    public final void onCreate() {
        if (this.a) {
            C2910ua.E.u().a(this.b.getResources().getConfiguration());
        } else {
            this.g.b(this.b);
            C2910ua c2910ua = C2910ua.E;
            synchronized (c2910ua) {
                c2910ua.B.initAsync();
                c2910ua.u.a(c2910ua.a);
                c2910ua.u.a(new Gn(c2910ua.B));
                NetworkServiceLocator.init();
                c2910ua.k().a(c2910ua.q);
                c2910ua.C();
            }
            Jj.a.e();
            Jl jl = C2910ua.E.u;
            jl.b();
            Hl hlB = jl.b();
            C2447bk c2447bkO = C2910ua.E.o();
            c2447bkO.a(new Nj(new C2540fd(this.e)), hlB);
            jl.a(c2447bkO);
            ((C2473cl) C2910ua.E.y()).getClass();
            this.e.c(new H1(this));
            C2910ua.E.l().init();
            C2910ua.E.b().init();
            J1 j1 = this.k;
            Context context = this.b;
            C2854s4 c2854s4 = this.d;
            j1.getClass();
            this.f = new Lg(context, c2854s4, C2910ua.E.d.e(), new C2587ha());
            Context context2 = this.b;
            AbstractC2727n1.a.b(context2);
            AppMetrica.getReporter(context2, "20799a27-fa80-4b36-b2db-0f8141f24180");
            File crashesDirectory = FileUtils.getCrashesDirectory(this.b);
            if (crashesDirectory != null) {
                J1 j2 = this.k;
                G1 g1 = this.l;
                j2.getClass();
                this.n = new C2757o6(new FileObserverC2782p6(crashesDirectory, g1, new C2587ha()), crashesDirectory, new C2807q6());
                this.j.execute(new Hf(crashesDirectory, this.l, C2562ga.a(this.b)));
                C2757o6 c2757o6 = this.n;
                C2807q6 c2807q6 = c2757o6.c;
                File file = c2757o6.b;
                c2807q6.getClass();
                if (file != null) {
                    if (!file.exists()) {
                        file.mkdir();
                    } else if (!file.isDirectory() && file.delete()) {
                        file.mkdir();
                    }
                }
                c2757o6.a.startWatching();
            }
            Id id = this.h;
            Context context3 = this.b;
            Lg lg = this.f;
            id.getClass();
            File nativeCrashDirectory = FileUtils.getNativeCrashDirectory(context3);
            Gd gd = null;
            String absolutePath = nativeCrashDirectory != null ? nativeCrashDirectory.getAbsolutePath() : null;
            if (absolutePath != null) {
                id.a.init(context3, new NativeCrashServiceConfig(absolutePath));
                Gd gd2 = new Gd(lg, new Hd(id));
                id.b = gd2;
                gd2.a(id.a.getAllCrashes());
                NativeCrashServiceModule nativeCrashServiceModule = id.a;
                Gd gd3 = id.b;
                if (gd3 == null) {
                    y45.B("crashReporter");
                } else {
                    gd = gd3;
                }
                nativeCrashServiceModule.setDefaultCrashHandler(gd);
            }
            new T5(x71.e(new Qg())).run();
            this.a = true;
        }
        C2910ua.E.k().a();
    }

    @Override
    @MainThread
    public final void onDestroy() {
        Kb kbK = C2910ua.E.k();
        synchronized (kbK) {
            Iterator it = kbK.c.iterator();
            while (it.hasNext()) {
                ((Vj) it.next()).onDestroy();
            }
        }
    }

    @Override
    @WorkerThread
    public final void pauseUserSession(@NonNull Bundle bundle) {
        C2791pf c2791pf;
        bundle.setClassLoader(C2791pf.class.getClassLoader());
        String str = C2791pf.c;
        try {
            c2791pf = (C2791pf) bundle.getParcelable("PROCESS_CFG_OBJ");
        } catch (Throwable unused) {
            c2791pf = null;
        }
        Integer asInteger = c2791pf != null ? c2791pf.a.getAsInteger("PROCESS_CFG_PROCESS_ID") : null;
        if (asInteger != null) {
            this.i.b(asInteger.intValue());
        }
    }

    @Override
    @WorkerThread
    public final void reportData(int i, Bundle bundle) {
        this.m.getClass();
        List listK = (List) C2910ua.E.v.a.get(Integer.valueOf(i));
        if (listK == null) {
            listK = y71.k();
        }
        if (listK.isEmpty()) {
            return;
        }
        Iterator it = listK.iterator();
        while (it.hasNext()) {
            ((Oj) it.next()).reportData(i, bundle);
        }
    }

    @Override
    @WorkerThread
    public final void resumeUserSession(@NonNull Bundle bundle) {
        C2791pf c2791pf;
        bundle.setClassLoader(C2791pf.class.getClassLoader());
        String str = C2791pf.c;
        try {
            c2791pf = (C2791pf) bundle.getParcelable("PROCESS_CFG_OBJ");
        } catch (Throwable unused) {
            c2791pf = null;
        }
        Integer asInteger = c2791pf != null ? c2791pf.a.getAsInteger("PROCESS_CFG_PROCESS_ID") : null;
        if (asInteger != null) {
            this.i.c(asInteger.intValue());
        }
    }

    public I1(Context context, InterfaceC2876t1 interfaceC2876t1, C2855s5 c2855s5) {
        this(context, interfaceC2876t1, new C2854s4(context, c2855s5), new P1(), C2686la.d, C2910ua.j().d(), C2910ua.j().w().e(), new J1());
    }

    @Override
    @WorkerThread
    public final void a(Intent intent, int i, int i2) {
        b(intent, i2);
    }

    @Override
    @WorkerThread
    public final void a(Intent intent) {
        P1 p1 = this.e;
        if (intent != null) {
            p1.getClass();
            String action = intent.getAction();
            if (!TextUtils.isEmpty(action)) {
                p1.a.a(action, Integer.valueOf(P1.a(intent)));
            }
            for (Map.Entry entry : p1.b.entrySet()) {
                O1 o1 = (O1) entry.getKey();
                if (((N1) entry.getValue()).a(intent)) {
                    o1.a(intent);
                }
            }
            return;
        }
        p1.getClass();
    }

    public I1(Context context, InterfaceC2876t1 interfaceC2876t1, C2854s4 c2854s4, P1 p1, C2686la c2686la, C2653k2 c2653k2, IHandlerExecutor iHandlerExecutor, J1 j1) {
        this.a = false;
        this.l = new G1(this);
        this.b = context;
        this.c = interfaceC2876t1;
        this.d = c2854s4;
        this.e = p1;
        this.g = c2686la;
        this.i = c2653k2;
        this.j = iHandlerExecutor;
        this.k = j1;
        this.h = C2910ua.j().q();
        this.m = new Vg();
    }

    public final void b(Intent intent, int i) {
        Bundle extras;
        C2431b4 c2431b4A;
        if (intent != null) {
            intent.getExtras().setClassLoader(CounterConfiguration.class.getClassLoader());
            if (intent.getData() != null && (c2431b4A = C2431b4.a(this.b, (extras = intent.getExtras()))) != null) {
                C2408a6 c2408a6B = C2408a6.b(extras);
                if (!(c2408a6B.l() | c2408a6B.m())) {
                    try {
                        Lg lg = this.f;
                        C2581h4 c2581h4A = C2581h4.a(c2431b4A);
                        G4 g4 = new G4(c2431b4A);
                        lg.c.a(c2581h4A, g4).a(c2408a6B, g4);
                        lg.c.a(c2581h4A.c.intValue(), c2581h4A.b, c2581h4A.d);
                    } catch (Throwable unused) {
                    }
                }
            }
        }
        ((C2826r1) this.c).a.stopSelfResult(i);
    }

    @WorkerThread
    public final void a(Bundle bundle) {
        bundle.setClassLoader(CounterConfiguration.class.getClassLoader());
        C2408a6.b(bundle);
        Lg lg = this.f;
        C2408a6 c2408a6B = C2408a6.b(bundle);
        lg.getClass();
        if (c2408a6B.m()) {
            return;
        }
        lg.b.execute(new RunnableC2494dh(lg.a, c2408a6B, bundle, lg.c));
    }

    @Override
    public final void a(@NonNull InterfaceC2876t1 interfaceC2876t1) {
        this.c = interfaceC2876t1;
    }

    @WorkerThread
    public final void a(@NonNull File file) {
        Lg lg = this.f;
        lg.getClass();
        C2861sb c2861sb = new C2861sb();
        lg.b.execute(new Gf(file, c2861sb, c2861sb, new Hg(lg)));
    }
}
