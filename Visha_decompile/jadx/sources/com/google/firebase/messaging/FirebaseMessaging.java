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
import com.google.firebase.messaging.FirebaseMessaging;
import com.google.firebase.messaging.g;
import com.transsion.audiotagger.tag.id3.AbstractID3v1Tag;
import defpackage.as1;
import defpackage.b9b;
import defpackage.e2a;
import defpackage.kw3;
import defpackage.lb;
import defpackage.lf7;
import defpackage.mp3;
import defpackage.mw3;
import defpackage.np3;
import defpackage.op3;
import defpackage.pj8;
import defpackage.q6a;
import defpackage.sd3;
import defpackage.wd3;
import defpackage.wd8;
import defpackage.wi4;
import defpackage.xda;
import defpackage.xj8;
import defpackage.zda;
import defpackage.zj8;
import defpackage.zn6;
import defpackage.zv3;
import java.io.IOException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class FirebaseMessaging {
    public static f m;
    public static ScheduledExecutorService o;
    public final zv3 a;
    public final Context b;
    public final wi4 c;
    public final e d;
    public final a e;
    public final Executor f;
    public final Executor g;
    public final xda h;
    public final zn6 i;
    public boolean j;
    public final Application.ActivityLifecycleCallbacks k;
    public static final long l = TimeUnit.HOURS.toSeconds(8);
    public static pj8 n = new pj8() {
        @Override
        public final Object get() {
            return FirebaseMessaging.F();
        }
    };

    public class a {
        public final e2a a;
        public boolean b;
        public wd3 c;
        public Boolean d;

        public a(e2a e2aVar) {
            this.a = e2aVar;
        }

        public synchronized void b() {
            try {
                if (this.b) {
                    return;
                }
                Boolean boolE = e();
                this.d = boolE;
                if (boolE == null) {
                    wd3 wd3Var = new wd3() {
                        @Override
                        public final void a(sd3 sd3Var) {
                            this.a.d(sd3Var);
                        }
                    };
                    this.c = wd3Var;
                    this.a.b(as1.class, wd3Var);
                }
                this.b = true;
            } catch (Throwable th) {
                throw th;
            }
        }

        public synchronized boolean c() {
            Boolean bool;
            try {
                b();
                bool = this.d;
            } catch (Throwable th) {
                throw th;
            }
            return bool != null ? bool.booleanValue() : FirebaseMessaging.this.a.s();
        }

        public final void d(sd3 sd3Var) {
            if (c()) {
                FirebaseMessaging.this.J();
            }
        }

        public final Boolean e() {
            ApplicationInfo applicationInfo;
            Bundle bundle;
            Context contextJ = FirebaseMessaging.this.a.j();
            SharedPreferences sharedPreferences = contextJ.getSharedPreferences("com.google.firebase.messaging", 0);
            if (sharedPreferences.contains("auto_init")) {
                return Boolean.valueOf(sharedPreferences.getBoolean("auto_init", false));
            }
            try {
                PackageManager packageManager = contextJ.getPackageManager();
                if (packageManager == null || (applicationInfo = packageManager.getApplicationInfo(contextJ.getPackageName(), 128)) == null || (bundle = applicationInfo.metaData) == null || !bundle.containsKey("firebase_messaging_auto_init_enabled")) {
                    return null;
                }
                return Boolean.valueOf(applicationInfo.metaData.getBoolean("firebase_messaging_auto_init_enabled"));
            } catch (PackageManager.NameNotFoundException unused) {
                return null;
            }
        }
    }

    public FirebaseMessaging(zv3 zv3Var, mw3 mw3Var, pj8 pj8Var, pj8 pj8Var2, kw3 kw3Var, pj8 pj8Var3, e2a e2aVar) {
        this(zv3Var, mw3Var, pj8Var, pj8Var2, kw3Var, pj8Var3, e2aVar, new zn6(zv3Var.j()));
    }

    public static b9b F() {
        return null;
    }

    @NonNull
    @Keep
    public static synchronized FirebaseMessaging getInstance(@NonNull zv3 zv3Var) {
        FirebaseMessaging firebaseMessaging;
        firebaseMessaging = (FirebaseMessaging) zv3Var.i(FirebaseMessaging.class);
        wd8.m(firebaseMessaging, "Firebase Messaging component is not present");
        return firebaseMessaging;
    }

    public static synchronized FirebaseMessaging n() {
        return getInstance(zv3.k());
    }

    public static synchronized f o(Context context) {
        try {
            if (m == null) {
                m = new f(context);
            }
        } catch (Throwable th) {
            throw th;
        }
        return m;
    }

    public static b9b s() {
        return (b9b) n.get();
    }

    public final void A(zda zdaVar) {
        try {
            zdaVar.c(k());
        } catch (Exception e) {
            zdaVar.b(e);
        }
    }

    public final void B(CloudMessage cloudMessage) {
        if (cloudMessage != null) {
            b.y(cloudMessage.getIntent());
            t();
        }
    }

    public final void C() {
        if (w()) {
            J();
        }
    }

    public final void D(g gVar) {
        if (w()) {
            gVar.o();
        }
    }

    public synchronized void G(boolean z) {
        this.j = z;
    }

    public final boolean H() {
        xj8.c(this.b);
        if (!xj8.d(this.b)) {
            return false;
        }
        if (this.a.i(lb.class) != null) {
            return true;
        }
        return b.a() && n != null;
    }

    public final synchronized void I() {
        if (!this.j) {
            K(0L);
        }
    }

    public final void J() {
        if (L(r())) {
            I();
        }
    }

    public synchronized void K(long j) {
        l(new SyncTask(this, Math.min(Math.max(30L, 2 * j), l)), j);
        this.j = true;
    }

    public boolean L(f.a aVar) {
        return aVar == null || aVar.b(this.i.a());
    }

    public String k() throws IOException {
        final f.a aVarR = r();
        if (!L(aVarR)) {
            return aVarR.a;
        }
        final String strC = zn6.c(this.a);
        try {
            return (String) com.google.android.gms.tasks.a.a(this.d.b(strC, new e.a() {
                @Override
                public final xda start() {
                    return this.a.z(strC, aVarR);
                }
            }));
        } catch (InterruptedException | ExecutionException e) {
            throw new IOException(e);
        }
    }

    public void l(Runnable runnable, long j) {
        synchronized (FirebaseMessaging.class) {
            try {
                if (o == null) {
                    o = new ScheduledThreadPoolExecutor(1, new com.google.android.gms.common.util.concurrent.a(AbstractID3v1Tag.TAG));
                }
                o.schedule(runnable, j, TimeUnit.SECONDS);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public Context m() {
        return this.b;
    }

    public final String p() {
        return "[DEFAULT]".equals(this.a.l()) ? "" : this.a.n();
    }

    public xda q() {
        final zda zdaVar = new zda();
        this.f.execute(new Runnable() {
            @Override
            public final void run() {
                this.b.A(zdaVar);
            }
        });
        return zdaVar.a();
    }

    public f.a r() {
        return o(this.b).d(p(), zn6.c(this.a));
    }

    public final void t() {
        this.c.e().g(this.f, new lf7() {
            @Override
            public final void onSuccess(Object obj) {
                this.a.B((CloudMessage) obj);
            }
        });
    }

    public final void E() {
        xj8.c(this.b);
        zj8.g(this.b, this.c, H());
        if (H()) {
            t();
        }
    }

    public final void v(String str) {
        if ("[DEFAULT]".equals(this.a.l())) {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                Log.d("FirebaseMessaging", "Invoking onNewToken for app: " + this.a.l());
            }
            Intent intent = new Intent("com.google.firebase.messaging.NEW_TOKEN");
            intent.putExtra("token", str);
            new mp3(this.b).k(intent);
        }
    }

    public boolean w() {
        return this.e.c();
    }

    public boolean x() {
        return this.i.g();
    }

    public final xda y(String str, f.a aVar, String str2) {
        o(this.b).f(p(), str, str2, this.i.a());
        if (aVar == null || !str2.equals(aVar.a)) {
            v(str2);
        }
        return com.google.android.gms.tasks.a.e(str2);
    }

    public final xda z(final String str, final f.a aVar) {
        return this.c.f().r(this.g, new q6a() {
            @Override
            public final xda a(Object obj) {
                return this.a.y(str, aVar, (String) obj);
            }
        });
    }

    public FirebaseMessaging(zv3 zv3Var, mw3 mw3Var, pj8 pj8Var, pj8 pj8Var2, kw3 kw3Var, pj8 pj8Var3, e2a e2aVar, zn6 zn6Var) {
        this(zv3Var, mw3Var, pj8Var3, e2aVar, zn6Var, new wi4(zv3Var, zn6Var, pj8Var, pj8Var2, kw3Var), np3.f(), np3.c(), np3.b());
    }

    public FirebaseMessaging(zv3 zv3Var, mw3 mw3Var, pj8 pj8Var, e2a e2aVar, zn6 zn6Var, wi4 wi4Var, Executor executor, Executor executor2, Executor executor3) {
        this.j = false;
        n = pj8Var;
        this.a = zv3Var;
        this.e = new a(e2aVar);
        Context contextJ = zv3Var.j();
        this.b = contextJ;
        op3 op3Var = new op3();
        this.k = op3Var;
        this.i = zn6Var;
        this.c = wi4Var;
        this.d = new e(executor);
        this.f = executor2;
        this.g = executor3;
        Context contextJ2 = zv3Var.j();
        if (contextJ2 instanceof Application) {
            ((Application) contextJ2).registerActivityLifecycleCallbacks(op3Var);
        } else {
            Log.w("FirebaseMessaging", "Context " + contextJ2 + " was not an application, can't register for lifecycle callbacks. Some notification events may be dropped as a result.");
        }
        if (mw3Var != null) {
            mw3Var.a(new mw3.a() {
            });
        }
        executor2.execute(new Runnable() {
            @Override
            public final void run() {
                this.b.C();
            }
        });
        xda xdaVarE = g.e(this, zn6Var, wi4Var, contextJ, np3.g());
        this.h = xdaVarE;
        xdaVarE.g(executor2, new lf7() {
            @Override
            public final void onSuccess(Object obj) {
                this.a.D((g) obj);
            }
        });
        executor2.execute(new Runnable() {
            @Override
            public final void run() {
                this.b.E();
            }
        });
    }
}
