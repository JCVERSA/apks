package androidx.media3.exoplayer;

import android.content.Context;
import android.net.wifi.WifiManager;
import android.os.Looper;

final class s4 {

    private final a f12263a;

    private final androidx.media3.common.util.p f12264b;

    private boolean f12265c;

    private boolean f12266d;

    private static final class a {

        private final Context f12267a;

        private WifiManager.WifiLock f12268b;

        public a(Context context) {
            this.f12267a = context;
        }

        public void a(boolean z10, boolean z11) {
            if (z10 && this.f12268b == null) {
                WifiManager wifiManager = (WifiManager) this.f12267a.getApplicationContext().getSystemService("wifi");
                if (wifiManager == null) {
                    androidx.media3.common.util.u.h("WifiLockManager", "WifiManager is null, therefore not creating the WifiLock.");
                    return;
                } else {
                    WifiManager.WifiLock wifiLockCreateWifiLock = wifiManager.createWifiLock(3, "ExoPlayer:WifiLockManager");
                    this.f12268b = wifiLockCreateWifiLock;
                    wifiLockCreateWifiLock.setReferenceCounted(false);
                }
            }
            WifiManager.WifiLock wifiLock = this.f12268b;
            if (wifiLock == null) {
                return;
            }
            if (z10 && z11) {
                wifiLock.acquire();
            } else {
                wifiLock.release();
            }
        }
    }

    public s4(Context context, Looper looper, androidx.media3.common.util.i iVar) {
        this.f12263a = new a(context.getApplicationContext());
        this.f12264b = iVar.createHandler(looper, null);
    }

    public void c(boolean z10, boolean z11) {
        this.f12263a.a(z10, z11);
    }

    public void d(boolean z10) {
        this.f12263a.a(true, z10);
    }

    public void e(final boolean z10) {
        if (this.f12265c == z10) {
            return;
        }
        this.f12265c = z10;
        final boolean z11 = this.f12266d;
        this.f12264b.post(new Runnable() {
            @Override
            public final void run() {
                this.f12170a.c(z10, z11);
            }
        });
    }

    public void f(final boolean z10) {
        if (this.f12266d == z10) {
            return;
        }
        this.f12266d = z10;
        if (this.f12265c) {
            this.f12264b.post(new Runnable() {
                @Override
                public final void run() {
                    this.f12251a.d(z10);
                }
            });
        }
    }
}
