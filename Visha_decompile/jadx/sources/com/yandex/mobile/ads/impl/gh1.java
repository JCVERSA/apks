package com.yandex.mobile.ads.impl;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import com.yandex.mobile.ads.impl.gh1;
import defpackage.y45;
import defpackage.zfb;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Objects;
import java.util.WeakHashMap;
import java.util.concurrent.Executor;

public final class gh1 extends BroadcastReceiver {
    public static final a h = new a(0);
    private static volatile gh1 i;
    private final Context a;
    private final pw1 b;
    private final fh1 c;
    private final eh1 d;
    private final WeakHashMap<b, Object> e;
    private final Object f;
    private dh1 g;

    public static final class a {
        private a() {
        }

        public final gh1 a(Context context) {
            y45.j(context, "context");
            gh1 gh1Var = gh1.i;
            if (gh1Var == null) {
                synchronized (this) {
                    Context applicationContext = context.getApplicationContext();
                    int i = ms0.f;
                    Executor executorC = ms0.a.a().c();
                    gh1 gh1Var2 = gh1.i;
                    if (gh1Var2 == null) {
                        y45.g(applicationContext);
                        gh1Var2 = new gh1(applicationContext, executorC);
                        gh1.i = gh1Var2;
                    }
                    gh1Var = gh1Var2;
                }
            }
            return gh1Var;
        }

        public a(int i) {
            this();
        }
    }

    public interface b {
        void a(dh1 dh1Var);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public gh1(Context context, Executor executor) {
        this(context, executor, pw1.a.a(), new fh1(context), new eh1());
        int i2 = pw1.l;
    }

    public static final void a(gh1 gh1Var) {
        y45.j(gh1Var, "this$0");
        dh1 dh1VarA = gh1Var.c.a();
        gh1Var.g = dh1VarA;
        Objects.toString(dh1VarA);
        sp0.d(new Object[0]);
        try {
            gh1Var.d.getClass();
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.SCREEN_ON");
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            intentFilter.addAction("android.intent.action.USER_PRESENT");
            if (Build.VERSION.SDK_INT >= 33) {
                gh1Var.a.registerReceiver(gh1Var, intentFilter, 2);
            } else {
                gh1Var.a.registerReceiver(gh1Var, intentFilter);
            }
        } catch (Exception unused) {
            int i2 = sp0.b;
            y45.j(new Object[0], "args");
        }
    }

    @Override
    public final void onReceive(Context context, Intent intent) {
        dh1 dh1Var;
        dh1 dh1Var2;
        HashSet hashSet;
        y45.j(context, "context");
        y45.j(intent, "intent");
        synchronized (this.f) {
            try {
                dh1 dh1Var3 = this.g;
                String action = intent.getAction();
                if (y45.e(action, "android.intent.action.SCREEN_OFF")) {
                    dh1Var = dh1.c;
                } else if (y45.e(action, "android.intent.action.USER_PRESENT")) {
                    dh1Var = dh1.d;
                } else {
                    dh1Var = (this.g == dh1.d || !y45.e(action, "android.intent.action.SCREEN_ON")) ? this.g : dh1.b;
                }
                this.g = dh1Var;
                if (dh1Var3 != dh1Var) {
                    Objects.toString(dh1Var);
                    sp0.d(new Object[0]);
                }
                dh1Var2 = this.g;
                hashSet = new HashSet(this.e.keySet());
                zfb zfbVar = zfb.a;
            } catch (Throwable th) {
                throw th;
            }
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            ((b) it.next()).a(dh1Var2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0021 A[Catch: all -> 0x001f, TRY_LEAVE, TryCatch #0 {all -> 0x001f, blocks: (B:6:0x000e, B:8:0x0014, B:10:0x001a, B:15:0x0021), top: B:23:0x000e }] */
    /* JADX WARN: Code duplicated, block: B:18:0x0028  */
    public final boolean b() {
        boolean z;
        ju1 ju1VarA = this.b.a(this.a);
        synchronized (this.f) {
            z = true;
            if (ju1VarA != null) {
                try {
                    if (ju1VarA.n0()) {
                        dh1 dh1Var = this.g;
                        if (dh1Var != dh1.b && dh1Var != dh1.d) {
                            z = false;
                        }
                    } else if (this.g != dh1.d) {
                        z = false;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            } else if (this.g != dh1.d) {
                z = false;
            }
        }
        return z;
    }

    private gh1(Context context, Executor executor, pw1 pw1Var, fh1 fh1Var, eh1 eh1Var) {
        this.a = context;
        this.b = pw1Var;
        this.c = fh1Var;
        this.d = eh1Var;
        this.e = new WeakHashMap<>();
        this.f = new Object();
        this.g = dh1.d;
        executor.execute(new Runnable() {
            @Override
            public final void run() {
                gh1.a(this.b);
            }
        });
    }

    public final void b(b bVar) {
        y45.j(bVar, "callback");
        synchronized (this.f) {
            this.e.remove(bVar);
        }
    }

    public final void a(b bVar) {
        y45.j(bVar, "callback");
        synchronized (this.f) {
            this.e.put(bVar, null);
            zfb zfbVar = zfb.a;
        }
    }
}
