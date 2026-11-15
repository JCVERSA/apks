package com.google.android.exoplayer2;

import android.content.Context;
import android.net.wifi.WifiManager;

final class s3 {

    private final WifiManager f24986a;

    private WifiManager.WifiLock f24987b;

    private boolean f24988c;

    private boolean f24989d;

    public s3(Context context) {
        this.f24986a = (WifiManager) context.getApplicationContext().getSystemService("wifi");
    }

    private void c() {
        WifiManager.WifiLock wifiLock = this.f24987b;
        if (wifiLock == null) {
            return;
        }
        if (this.f24988c && this.f24989d) {
            wifiLock.acquire();
        } else {
            wifiLock.release();
        }
    }

    public void a(boolean z10) {
        if (z10 && this.f24987b == null) {
            WifiManager wifiManager = this.f24986a;
            if (wifiManager == null) {
                com.google.android.exoplayer2.util.s.i("WifiLockManager", "WifiManager is null, therefore not creating the WifiLock.");
                return;
            } else {
                WifiManager.WifiLock wifiLockCreateWifiLock = wifiManager.createWifiLock(3, "ExoPlayer:WifiLockManager");
                this.f24987b = wifiLockCreateWifiLock;
                wifiLockCreateWifiLock.setReferenceCounted(false);
            }
        }
        this.f24988c = z10;
        c();
    }

    public void b(boolean z10) {
        this.f24989d = z10;
        c();
    }
}
