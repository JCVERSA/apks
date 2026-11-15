package com.google.firebase.messaging;

import android.annotation.SuppressLint;
import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.util.Log;
import defpackage.ngc;
import defpackage.np3;
import defpackage.pe7;
import defpackage.ur1;
import defpackage.xda;
import defpackage.zda;
import java.util.concurrent.ExecutorService;

@SuppressLint({"UnwrappedWakefulBroadcastReceiver"})
public abstract class EnhancedIntentService extends Service {
    public Binder c;
    public int e;
    public final ExecutorService b = np3.d();
    public final Object d = new Object();
    public int f = 0;

    public class a implements h.a {
        public a() {
        }

        @Override
        public xda a(Intent intent) {
            return EnhancedIntentService.this.j(intent);
        }
    }

    public final void d(Intent intent) {
        if (intent != null) {
            ngc.c(intent);
        }
        synchronized (this.d) {
            try {
                int i = this.f - 1;
                this.f = i;
                if (i == 0) {
                    k(this.e);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public Intent e(Intent intent) {
        return intent;
    }

    public abstract void f(Intent intent);

    public boolean g(Intent intent) {
        return false;
    }

    public final void h(Intent intent, xda xdaVar) {
        d(intent);
    }

    public final void i(Intent intent, zda zdaVar) {
        try {
            f(intent);
        } finally {
            zdaVar.c(null);
        }
    }

    public final xda j(final Intent intent) {
        if (g(intent)) {
            return com.google.android.gms.tasks.a.e(null);
        }
        final zda zdaVar = new zda();
        this.b.execute(new Runnable() {
            @Override
            public final void run() {
                this.b.i(intent, zdaVar);
            }
        });
        return zdaVar.a();
    }

    public boolean k(int i) {
        return stopSelfResult(i);
    }

    @Override
    public final synchronized IBinder onBind(Intent intent) {
        try {
            if (Log.isLoggable("EnhancedIntentService", 3)) {
                Log.d("EnhancedIntentService", "Service received bind request");
            }
            if (this.c == null) {
                this.c = new h(new a());
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.c;
    }

    @Override
    public void onDestroy() {
        this.b.shutdown();
        super.onDestroy();
    }

    @Override
    public final int onStartCommand(final Intent intent, int i, int i2) {
        synchronized (this.d) {
            this.e = i2;
            this.f++;
        }
        Intent intentE = e(intent);
        if (intentE == null) {
            d(intent);
            return 2;
        }
        xda xdaVarJ = j(intentE);
        if (xdaVarJ.p()) {
            d(intent);
            return 2;
        }
        xdaVarJ.c(new ur1(), new pe7() {
            @Override
            public final void onComplete(xda xdaVar) {
                this.a.h(intent, xdaVar);
            }
        });
        return 3;
    }
}
