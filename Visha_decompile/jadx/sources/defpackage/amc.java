package defpackage;

import android.content.Context;
import android.net.wifi.WifiManager;

public final class amc {
    public final WifiManager a;
    public WifiManager.WifiLock b;
    public boolean c;
    public boolean d;

    public amc(Context context) {
        this.a = (WifiManager) context.getApplicationContext().getSystemService("wifi");
    }

    public void a(boolean z) {
        if (z && this.b == null) {
            WifiManager wifiManager = this.a;
            if (wifiManager == null) {
                op5.i("WifiLockManager", "WifiManager is null, therefore not creating the WifiLock.");
                return;
            } else {
                WifiManager.WifiLock wifiLockCreateWifiLock = wifiManager.createWifiLock(3, "ExoPlayer:WifiLockManager");
                this.b = wifiLockCreateWifiLock;
                wifiLockCreateWifiLock.setReferenceCounted(false);
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
        WifiManager.WifiLock wifiLock = this.b;
        if (wifiLock == null) {
            return;
        }
        if (this.c && this.d) {
            wifiLock.acquire();
        } else {
            wifiLock.release();
        }
    }
}
