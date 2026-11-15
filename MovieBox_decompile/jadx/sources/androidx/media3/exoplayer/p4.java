package androidx.media3.exoplayer;

import android.content.Context;
import android.os.Looper;
import android.os.PowerManager;

final class p4 {

    private final a f12136a;

    private final androidx.media3.common.util.p f12137b;

    private boolean f12138c;

    private boolean f12139d;

    private static final class a {

        private final Context f12140a;

        private PowerManager.WakeLock f12141b;

        public a(Context context) {
            this.f12140a = context;
        }

        public void a(boolean z10, boolean z11) {
            if (z10 && this.f12141b == null) {
                PowerManager powerManager = (PowerManager) this.f12140a.getSystemService("power");
                if (powerManager == null) {
                    androidx.media3.common.util.u.h("WakeLockManager", "PowerManager is null, therefore not creating the WakeLock.");
                    return;
                } else {
                    PowerManager.WakeLock wakeLockNewWakeLock = powerManager.newWakeLock(1, "ExoPlayer:WakeLockManager");
                    this.f12141b = wakeLockNewWakeLock;
                    wakeLockNewWakeLock.setReferenceCounted(false);
                }
            }
            PowerManager.WakeLock wakeLock = this.f12141b;
            if (wakeLock == null) {
                return;
            }
            if (z10 && z11) {
                wakeLock.acquire();
            } else {
                wakeLock.release();
            }
        }
    }

    public p4(Context context, Looper looper, androidx.media3.common.util.i iVar) {
        this.f12136a = new a(context.getApplicationContext());
        this.f12137b = iVar.createHandler(looper, null);
    }

    public void c(boolean z10, boolean z11) {
        this.f12136a.a(z10, z11);
    }

    public void d(boolean z10) {
        this.f12136a.a(true, z10);
    }

    public void e(final boolean z10) {
        if (this.f12138c == z10) {
            return;
        }
        this.f12138c = z10;
        final boolean z11 = this.f12139d;
        this.f12137b.post(new Runnable() {
            @Override
            public final void run() {
                this.f11994a.c(z10, z11);
            }
        });
    }

    public void f(final boolean z10) {
        if (this.f12139d == z10) {
            return;
        }
        this.f12139d = z10;
        if (this.f12138c) {
            this.f12137b.post(new Runnable() {
                @Override
                public final void run() {
                    this.f11972a.d(z10);
                }
            });
        }
    }
}
