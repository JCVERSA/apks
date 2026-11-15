package defpackage;

import android.content.Context;
import android.os.PowerManager;

public final class ogc {
    public final PowerManager a;
    public PowerManager.WakeLock b;
    public boolean c;
    public boolean d;

    public ogc(Context context) {
        this.a = (PowerManager) context.getApplicationContext().getSystemService("power");
    }

    public void a(boolean z) {
        if (z && this.b == null) {
            PowerManager powerManager = this.a;
            if (powerManager == null) {
                op5.i("WakeLockManager", "PowerManager is null, therefore not creating the WakeLock.");
                return;
            } else {
                PowerManager.WakeLock wakeLockNewWakeLock = powerManager.newWakeLock(1, "ExoPlayer:WakeLockManager");
                this.b = wakeLockNewWakeLock;
                wakeLockNewWakeLock.setReferenceCounted(false);
            }
        }
        this.c = z;
        c();
    }

    public void b(boolean z) {
        this.d = z;
        c();
    }

    public final void c() {
        PowerManager.WakeLock wakeLock = this.b;
        if (wakeLock == null) {
            return;
        }
        if (this.c && this.d) {
            wakeLock.acquire();
        } else {
            wakeLock.release();
        }
    }
}
