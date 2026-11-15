package androidx.work.impl.foreground;

import android.app.ForegroundServiceStartNotAllowedException;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.Service;
import android.content.Intent;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import androidx.p009lifecycle.LifecycleService;
import androidx.work.j;

public class SystemForegroundService extends LifecycleService implements SystemForegroundDispatcher.a {

    private static final String f15281f = j.i("SystemFgService");

    private static SystemForegroundService f15282g = null;

    private Handler f15283b;

    private boolean f15284c;

    SystemForegroundDispatcher f15285d;

    NotificationManager f15286e;

    static class a {
        static void a(Service service, int i10, Notification notification, int i11) {
            service.startForeground(i10, notification, i11);
        }
    }

    static class b {
        static void a(Service service, int i10, Notification notification, int i11) {
            try {
                service.startForeground(i10, notification, i11);
            } catch (ForegroundServiceStartNotAllowedException e10) {
                j.e().l(SystemForegroundService.f15281f, "Unable to start foreground service", e10);
            }
        }
    }

    private void f() {
        this.f15283b = new Handler(Looper.getMainLooper());
        this.f15286e = (NotificationManager) getApplicationContext().getSystemService("notification");
        SystemForegroundDispatcher systemForegroundDispatcher = new SystemForegroundDispatcher(getApplicationContext());
        this.f15285d = systemForegroundDispatcher;
        systemForegroundDispatcher.n(this);
    }

    @Override
    public void a(final int i10, final Notification notification) {
        this.f15283b.post(new Runnable() {
            @Override
            public void run() {
                SystemForegroundService.this.f15286e.notify(i10, notification);
            }
        });
    }

    @Override
    public void c(final int i10, final int i11, final Notification notification) {
        this.f15283b.post(new Runnable() {
            @Override
            public void run() {
                int i12 = Build.VERSION.SDK_INT;
                if (i12 >= 31) {
                    b.a(SystemForegroundService.this, i10, notification, i11);
                } else if (i12 >= 29) {
                    a.a(SystemForegroundService.this, i10, notification, i11);
                } else {
                    SystemForegroundService.this.startForeground(i10, notification);
                }
            }
        });
    }

    @Override
    public void d(final int i10) {
        this.f15283b.post(new Runnable() {
            @Override
            public void run() {
                SystemForegroundService.this.f15286e.cancel(i10);
            }
        });
    }

    @Override
    public void onCreate() {
        super.onCreate();
        f15282g = this;
        f();
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        this.f15285d.l();
    }

    @Override
    public int onStartCommand(Intent intent, int i10, int i11) {
        super.onStartCommand(intent, i10, i11);
        if (this.f15284c) {
            j.e().f(f15281f, "Re-initializing SystemForegroundService after a request to shut-down.");
            this.f15285d.l();
            f();
            this.f15284c = false;
        }
        if (intent == null) {
            return 3;
        }
        this.f15285d.m(intent);
        return 3;
    }

    @Override
    public void stop() {
        this.f15284c = true;
        j.e().a(f15281f, "All commands completed.");
        if (Build.VERSION.SDK_INT >= 26) {
            stopForeground(true);
        }
        f15282g = null;
        stopSelf();
    }
}
