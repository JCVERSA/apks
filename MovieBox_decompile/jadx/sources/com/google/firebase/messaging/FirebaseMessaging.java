package com.google.firebase.messaging;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import com.google.android.gms.cloudmessaging.CloudMessage;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.concurrent.NamedThreadFactory;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import java.io.IOException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class FirebaseMessaging {

    private static y0 f31140m;

    static ScheduledExecutorService f31142o;

    private final com.google.firebase.f f31143a;

    private final Context f31144b;

    private final e0 f31145c;

    private final u0 f31146d;

    private final a f31147e;

    private final Executor f31148f;

    private final Executor f31149g;

    private final Task f31150h;

    private final j0 f31151i;

    private boolean f31152j;

    private final Application.ActivityLifecycleCallbacks f31153k;

    private static final long f31139l = TimeUnit.HOURS.toSeconds(8);

    static kc.b f31141n = new kc.b() {
        @Override
        public final Object get() {
            return FirebaseMessaging.H();
        }
    };

    class a {

        private final hc.d f31154a;

        private boolean f31155b;

        private hc.b f31156c;

        private Boolean f31157d;

        a(hc.d dVar) {
            this.f31154a = dVar;
        }

        public void d(hc.a aVar) {
            if (c()) {
                FirebaseMessaging.this.N();
            }
        }

        private Boolean e() {
            ApplicationInfo applicationInfo;
            Bundle bundle;
            Context contextK = FirebaseMessaging.this.f31143a.k();
            SharedPreferences sharedPreferences = contextK.getSharedPreferences("com.google.firebase.messaging", 0);
            if (sharedPreferences.contains("auto_init")) {
                return Boolean.valueOf(sharedPreferences.getBoolean("auto_init", false));
            }
            try {
                PackageManager packageManager = contextK.getPackageManager();
                if (packageManager == null || (applicationInfo = packageManager.getApplicationInfo(contextK.getPackageName(), 128)) == null || (bundle = applicationInfo.metaData) == null || !bundle.containsKey("firebase_messaging_auto_init_enabled")) {
                    return null;
                }
                return Boolean.valueOf(applicationInfo.metaData.getBoolean("firebase_messaging_auto_init_enabled"));
            } catch (PackageManager.NameNotFoundException unused) {
                return null;
            }
        }

        synchronized void b() {
            try {
                if (this.f31155b) {
                    return;
                }
                Boolean boolE = e();
                this.f31157d = boolE;
                if (boolE == null) {
                    hc.b bVar = new hc.b() {
                        @Override
                        public final void a(hc.a aVar) {
                            this.f31219a.d(aVar);
                        }
                    };
                    this.f31156c = bVar;
                    this.f31154a.a(com.google.firebase.b.class, bVar);
                }
                this.f31155b = true;
            } catch (Throwable th2) {
                throw th2;
            }
        }

        synchronized boolean c() {
            Boolean bool;
            try {
                b();
                bool = this.f31157d;
            } catch (Throwable th2) {
                throw th2;
            }
            return bool != null ? bool.booleanValue() : FirebaseMessaging.this.f31143a.t();
        }
    }

    FirebaseMessaging(com.google.firebase.f fVar, jc.a aVar, kc.b bVar, kc.b bVar2, lc.e eVar, kc.b bVar3, hc.d dVar) {
        this(fVar, aVar, bVar, bVar2, eVar, bVar3, dVar, new j0(fVar.k()));
    }

    public Task A(String str, y0.a aVar, String str2) {
        q(this.f31144b).f(r(), str, str2, this.f31151i.a());
        if (aVar == null || !str2.equals(aVar.f31360a)) {
            x(str2);
        }
        return Tasks.forResult(str2);
    }

    public Task B(final String str, final y0.a aVar) {
        return this.f31145c.f().onSuccessTask(this.f31149g, new SuccessContinuation() {
            @Override
            public final Task then(Object obj) {
                return this.f31363a.A(str, aVar, (String) obj);
            }
        });
    }

    public void C(TaskCompletionSource taskCompletionSource) {
        try {
            taskCompletionSource.setResult(m());
        } catch (Exception e10) {
            taskCompletionSource.setException(e10);
        }
    }

    public void D(CloudMessage cloudMessage) {
        if (cloudMessage != null) {
            i0.y(cloudMessage.getIntent());
            v();
        }
    }

    public void E() {
        if (y()) {
            N();
        }
    }

    public void F(c1 c1Var) {
        if (y()) {
            c1Var.q();
        }
    }

    public static t8.i H() {
        return null;
    }

    public static Task I(String str, c1 c1Var) {
        return c1Var.r(str);
    }

    public static Task J(String str, c1 c1Var) {
        return c1Var.u(str);
    }

    private boolean L() {
        p0.c(this.f31144b);
        if (!p0.d(this.f31144b)) {
            return false;
        }
        if (this.f31143a.j(mb.a.class) != null) {
            return true;
        }
        return i0.a() && f31141n != null;
    }

    private synchronized void M() {
        if (!this.f31152j) {
            P(0L);
        }
    }

    public void N() {
        if (Q(t())) {
            M();
        }
    }

    @NonNull
    @Keep
    static synchronized FirebaseMessaging getInstance(@NonNull com.google.firebase.f fVar) {
        FirebaseMessaging firebaseMessaging;
        firebaseMessaging = (FirebaseMessaging) fVar.j(FirebaseMessaging.class);
        Preconditions.checkNotNull(firebaseMessaging, "Firebase Messaging component is not present");
        return firebaseMessaging;
    }

    public static synchronized FirebaseMessaging p() {
        return getInstance(com.google.firebase.f.l());
    }

    private static synchronized y0 q(Context context) {
        try {
            if (f31140m == null) {
                f31140m = new y0(context);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f31140m;
    }

    private String r() {
        return "[DEFAULT]".equals(this.f31143a.m()) ? "" : this.f31143a.o();
    }

    public static t8.i u() {
        return (t8.i) f31141n.get();
    }

    private void v() {
        this.f31145c.e().addOnSuccessListener(this.f31148f, new OnSuccessListener() {
            @Override
            public final void onSuccess(Object obj) {
                this.f31357a.D((CloudMessage) obj);
            }
        });
    }

    public void G() {
        p0.c(this.f31144b);
        r0.g(this.f31144b, this.f31145c, L());
        if (L()) {
            v();
        }
    }

    private void x(String str) {
        if ("[DEFAULT]".equals(this.f31143a.m())) {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Invoking onNewToken for app: ");
                sb2.append(this.f31143a.m());
            }
            Intent intent = new Intent("com.google.firebase.messaging.NEW_TOKEN");
            intent.putExtra("token", str);
            new m(this.f31144b).k(intent);
        }
    }

    synchronized void K(boolean z10) {
        this.f31152j = z10;
    }

    public Task O(final String str) {
        return this.f31150h.onSuccessTask(new SuccessContinuation() {
            @Override
            public final Task then(Object obj) {
                return FirebaseMessaging.I(str, (c1) obj);
            }
        });
    }

    synchronized void P(long j10) {
        n(new SyncTask(this, Math.min(Math.max(30L, 2 * j10), f31139l)), j10);
        this.f31152j = true;
    }

    boolean Q(y0.a aVar) {
        return aVar == null || aVar.b(this.f31151i.a());
    }

    public Task R(final String str) {
        return this.f31150h.onSuccessTask(new SuccessContinuation() {
            @Override
            public final Task then(Object obj) {
                return FirebaseMessaging.J(str, (c1) obj);
            }
        });
    }

    String m() throws IOException {
        final y0.a aVarT = t();
        if (!Q(aVarT)) {
            return aVarT.f31360a;
        }
        final String strC = j0.c(this.f31143a);
        try {
            return (String) Tasks.await(this.f31146d.b(strC, new u0.a() {
                @Override
                public final Task start() {
                    return this.f31334a.B(strC, aVarT);
                }
            }));
        } catch (InterruptedException | ExecutionException e10) {
            throw new IOException(e10);
        }
    }

    void n(Runnable runnable, long j10) {
        synchronized (FirebaseMessaging.class) {
            try {
                if (f31142o == null) {
                    f31142o = new ScheduledThreadPoolExecutor(1, new NamedThreadFactory("TAG"));
                }
                f31142o.schedule(runnable, j10, TimeUnit.SECONDS);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    Context o() {
        return this.f31144b;
    }

    public Task s() {
        final TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.f31148f.execute(new Runnable() {
            @Override
            public final void run() {
                this.f31332a.C(taskCompletionSource);
            }
        });
        return taskCompletionSource.getTask();
    }

    y0.a t() {
        return q(this.f31144b).d(r(), j0.c(this.f31143a));
    }

    public boolean y() {
        return this.f31147e.c();
    }

    boolean z() {
        return this.f31151i.g();
    }

    FirebaseMessaging(com.google.firebase.f fVar, jc.a aVar, kc.b bVar, kc.b bVar2, lc.e eVar, kc.b bVar3, hc.d dVar, j0 j0Var) {
        this(fVar, aVar, bVar3, dVar, j0Var, new e0(fVar, j0Var, bVar, bVar2, eVar), n.f(), n.c(), n.b());
    }

    FirebaseMessaging(com.google.firebase.f fVar, jc.a aVar, kc.b bVar, hc.d dVar, j0 j0Var, e0 e0Var, Executor executor, Executor executor2, Executor executor3) {
        this.f31152j = false;
        f31141n = bVar;
        this.f31143a = fVar;
        this.f31147e = new a(dVar);
        Context contextK = fVar.k();
        this.f31144b = contextK;
        p pVar = new p();
        this.f31153k = pVar;
        this.f31151i = j0Var;
        this.f31145c = e0Var;
        this.f31146d = new u0(executor);
        this.f31148f = executor2;
        this.f31149g = executor3;
        Context contextK2 = fVar.k();
        if (contextK2 instanceof Application) {
            ((Application) contextK2).registerActivityLifecycleCallbacks(pVar);
        } else {
            Log.w("FirebaseMessaging", "Context " + contextK2 + " was not an application, can't register for lifecycle callbacks. Some notification events may be dropped as a result.");
        }
        if (aVar != null) {
            aVar.a(new jc.a.InterfaceC0773a() {
            });
        }
        executor2.execute(new Runnable() {
            @Override
            public final void run() {
                this.f31342a.E();
            }
        });
        Task taskF = c1.f(this, j0Var, e0Var, contextK, n.g());
        this.f31150h = taskF;
        taskF.addOnSuccessListener(executor2, new OnSuccessListener() {
            @Override
            public final void onSuccess(Object obj) {
                this.f31348a.F((c1) obj);
            }
        });
        executor2.execute(new Runnable() {
            @Override
            public final void run() {
                this.f31350a.G();
            }
        });
    }
}
