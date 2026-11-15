package com.google.android.exoplayer2;

import android.content.Context;
import android.os.PowerManager;

final class r3 {

    private final PowerManager f24978a;

    private PowerManager.WakeLock f24979b;

    private boolean f24980c;

    private boolean f24981d;

    public r3(Context context) {
        this.f24978a = (PowerManager) context.getApplicationContext().getSystemService("power");
    }

    private void c() {
        PowerManager.WakeLock wakeLock = this.f24979b;
        if (wakeLock == null) {
            return;
        }
        if (this.f24980c && this.f24981d) {
            wakeLock.acquire();
        } else {
            wakeLock.release();
        }
    }

    public void a(boolean z10) {
        if (z10 && this.f24979b == null) {
            PowerManager powerManager = this.f24978a;
            if (powerManager == null) {
                com.google.android.exoplayer2.util.s.i("WakeLockManager", "PowerManager is null, therefore not creating the WakeLock.");
                return;
            } else {
                PowerManager.WakeLock wakeLockNewWakeLock = powerManager.newWakeLock(1, "ExoPlayer:WakeLockManager");
                this.f24979b = wakeLockNewWakeLock;
                wakeLockNewWakeLock.setReferenceCounted(false);
            }
        }
        this.f24980c = z10;
        c();
    }

    public void b(boolean z10) {
        this.f24981d = z10;
        c();
    }
}
