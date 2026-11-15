package defpackage;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.IInterface;
import com.google.android.gms.internal.ads.m6;
import defpackage.w1i;
import java.util.ArrayList;
import java.util.List;

public final class w1i {
    public final k3i a;
    public final Context b;
    public final x1i c;
    public boolean f;
    public final Intent g;
    public ServiceConnection i;
    public IInterface j;
    public final List e = new ArrayList();
    public final String d = "OverlayDisplayService";
    public final IBinder.DeathRecipient h = new IBinder.DeathRecipient() {
        @Override
        public final void binderDied() {
            w1i.h(this.b);
        }
    };

    public w1i(Context context, x1i x1iVar, String str, Intent intent, i1i i1iVar) {
        this.b = context;
        this.c = x1iVar;
        final String str2 = "OverlayDisplayService";
        this.g = intent;
        this.a = m6.a(new k3i(str2) {
            public final String b = "OverlayDisplayService";

            @Override
            public final Object zza() {
                HandlerThread handlerThread = new HandlerThread(this.b, 10);
                handlerThread.start();
                return new Handler(handlerThread.getLooper());
            }
        });
    }

    public static void f(w1i w1iVar, Runnable runnable) {
        try {
            runnable.run();
        } catch (RuntimeException e) {
            w1iVar.c.a("error caused by ", e);
        }
    }

    public static void g(w1i w1iVar, Runnable runnable) {
        if (w1iVar.j != null || w1iVar.f) {
            if (!w1iVar.f) {
                runnable.run();
                return;
            }
            w1iVar.c.c("Waiting to bind to the service.", new Object[0]);
            List list = w1iVar.e;
            synchronized (list) {
                list.add(runnable);
            }
            return;
        }
        w1iVar.c.c("Initiate binding to the service.", new Object[0]);
        List list2 = w1iVar.e;
        synchronized (list2) {
            list2.add(runnable);
        }
        u1i u1iVar = new u1i(w1iVar, null);
        w1iVar.i = u1iVar;
        w1iVar.f = true;
        if (w1iVar.b.bindService(w1iVar.g, u1iVar, 1)) {
            return;
        }
        w1iVar.c.c("Failed to bind to the service.", new Object[0]);
        w1iVar.f = false;
        List list3 = w1iVar.e;
        synchronized (list3) {
            list3.clear();
        }
    }

    public static void h(w1i w1iVar) {
        w1iVar.c.c("%s : Binder has died.", w1iVar.d);
        List list = w1iVar.e;
        synchronized (list) {
            list.clear();
        }
    }

    public static void i(w1i w1iVar) {
        if (w1iVar.j != null) {
            w1iVar.c.c("Unbind from service.", new Object[0]);
            Context context = w1iVar.b;
            ServiceConnection serviceConnection = w1iVar.i;
            serviceConnection.getClass();
            context.unbindService(serviceConnection);
            w1iVar.f = false;
            w1iVar.j = null;
            w1iVar.i = null;
            List list = w1iVar.e;
            synchronized (list) {
                list.clear();
            }
        }
    }

    public final IInterface c() {
        return this.j;
    }

    public final void m(final Runnable runnable) {
        o(new Runnable() {
            @Override
            public final void run() {
                w1i.g(this.zza, runnable);
            }
        });
    }

    public final void n() {
        o(new Runnable() {
            @Override
            public final void run() {
                w1i.i(this.zza);
            }
        });
    }

    public final void o(final Runnable runnable) {
        ((Handler) this.a.zza()).post(new Runnable() {
            @Override
            public final void run() {
                w1i.f(this.zza, runnable);
            }
        });
    }
}
