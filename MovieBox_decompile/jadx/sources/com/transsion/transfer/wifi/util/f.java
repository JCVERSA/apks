package com.transsion.transfer.wifi.util;

import android.net.wifi.WifiManager;
import android.os.PowerManager;
import com.blankj.utilcode.util.Utils;
import kotlin.jvm.internal.Intrinsics;

public final class f {

    public static final f f53895a = new f();

    private static WifiManager.WifiLock f53896b;

    private static PowerManager.WakeLock f53897c;

    private f() {
    }

    private final String b() {
        String simpleName = f.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    public final void a() {
        PowerManager.WakeLock wakeLock;
        WifiManager.WifiLock wifiLock;
        try {
            if (f53896b == null) {
                Object systemService = Utils.a().getApplicationContext().getSystemService("wifi");
                Intrinsics.f(systemService, "null cannot be cast to non-null type android.net.wifi.WifiManager");
                f53896b = ((WifiManager) systemService).createWifiLock(3, "MB:Wifi-Connect");
            }
            if (f53897c == null) {
                Object systemService2 = Utils.a().getSystemService("power");
                Intrinsics.f(systemService2, "null cannot be cast to non-null type android.os.PowerManager");
                f53897c = ((PowerManager) systemService2).newWakeLock(1, "MB:Wifi-Connect");
            }
            WifiManager.WifiLock wifiLock2 = f53896b;
            if (wifiLock2 != null && !wifiLock2.isHeld() && (wifiLock = f53896b) != null) {
                wifiLock.acquire();
            }
            PowerManager.WakeLock wakeLock2 = f53897c;
            if (wakeLock2 == null || wakeLock2.isHeld() || (wakeLock = f53897c) == null) {
                return;
            }
            wakeLock.acquire(600000L);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public final void c() {
        WifiManager.WifiLock wifiLock = f53896b;
        if (wifiLock != null && wifiLock.isHeld()) {
            WifiManager.WifiLock wifiLock2 = f53896b;
            if (wifiLock2 != null) {
                wifiLock2.release();
            }
            f53896b = null;
            g.b(g.f53898a, b() + " --> release() --> mWifiLock?.release() --> success", false, 2, null);
        }
        PowerManager.WakeLock wakeLock = f53897c;
        if (wakeLock == null || !wakeLock.isHeld()) {
            return;
        }
        PowerManager.WakeLock wakeLock2 = f53897c;
        if (wakeLock2 != null) {
            wakeLock2.release();
        }
        f53897c = null;
        g.b(g.f53898a, b() + " --> release() --> mWakeLock?.release() --> success", false, 2, null);
    }
}
