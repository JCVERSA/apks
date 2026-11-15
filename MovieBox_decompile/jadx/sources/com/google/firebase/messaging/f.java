package com.google.firebase.messaging;

import android.app.ActivityManager;
import android.app.KeyguardManager;
import android.app.NotificationManager;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Process;
import android.os.SystemClock;
import android.util.Log;
import androidx.core.app.NotificationCompat;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.tasks.Tasks;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

class f {

    private final ExecutorService f31251a;

    private final Context f31252b;

    private final k0 f31253c;

    public f(Context context, k0 k0Var, ExecutorService executorService) {
        this.f31251a = executorService;
        this.f31252b = context;
        this.f31253c = k0Var;
    }

    private boolean b() {
        if (((KeyguardManager) this.f31252b.getSystemService("keyguard")).inKeyguardRestrictedInputMode()) {
            return false;
        }
        if (!PlatformVersion.isAtLeastLollipop()) {
            SystemClock.sleep(10L);
        }
        int iMyPid = Process.myPid();
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) this.f31252b.getSystemService("activity")).getRunningAppProcesses();
        if (runningAppProcesses == null) {
            return false;
        }
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
            if (runningAppProcessInfo.pid == iMyPid) {
                return runningAppProcessInfo.importance == 100;
            }
        }
        return false;
    }

    private void c(d.a aVar) {
        Log.isLoggable("FirebaseMessaging", 3);
        ((NotificationManager) this.f31252b.getSystemService("notification")).notify(aVar.f31237b, aVar.f31238c, aVar.f31236a.c());
    }

    private g0 d() {
        g0 g0VarJ = g0.j(this.f31253c.p("gcm.n.image"));
        if (g0VarJ != null) {
            g0VarJ.m(this.f31251a);
        }
        return g0VarJ;
    }

    private void e(NotificationCompat.m mVar, g0 g0Var) {
        if (g0Var == null) {
            return;
        }
        try {
            Bitmap bitmap = (Bitmap) Tasks.await(g0Var.k(), 5L, TimeUnit.SECONDS);
            mVar.A(bitmap);
            mVar.L(new NotificationCompat.j().r(bitmap).q(null));
        } catch (InterruptedException unused) {
            Log.w("FirebaseMessaging", "Interrupted while downloading image, showing notification without it");
            g0Var.close();
            Thread.currentThread().interrupt();
        } catch (ExecutionException e10) {
            Log.w("FirebaseMessaging", "Failed to download image: " + e10.getCause());
        } catch (TimeoutException unused2) {
            Log.w("FirebaseMessaging", "Failed to download image in time, showing notification without it");
            g0Var.close();
        }
    }

    boolean a() {
        if (this.f31253c.a("gcm.n.noui")) {
            return true;
        }
        if (b()) {
            return false;
        }
        g0 g0VarD = d();
        d.a aVarE = d.e(this.f31252b, this.f31253c);
        e(aVarE.f31236a, g0VarD);
        c(aVarE);
        return true;
    }
}
