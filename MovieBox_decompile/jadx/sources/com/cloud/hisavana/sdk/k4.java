package com.cloud.hisavana.sdk;

import android.util.ArrayMap;
import java.lang.ref.WeakReference;

public class k4 {

    private final int f21956a;

    private final ArrayMap f21957b;

    private static class b {

        public static k4 f21958a = new k4();
    }

    public static k4 b() {
        return b.f21958a;
    }

    public e1 a(String str) {
        WeakReference weakReference = (WeakReference) this.f21957b.get(str);
        if (weakReference == null) {
            return null;
        }
        return (e1) weakReference.get();
    }

    public void c(String str, e1 e1Var) {
        try {
            if (this.f21957b.size() >= 100) {
                this.f21957b.removeAt(0);
                b4.b().d("AdSplashManager", "spalsh attachTranSplash map clear");
            }
            this.f21957b.put(str, new WeakReference(e1Var));
            b4.b().d("AdSplashManager", "spalsh attachTranSplash map size = " + this.f21957b.size());
        } catch (Exception e10) {
            b4.b().w("AdSplashManager", e10.getMessage());
        }
    }

    public void d(String str) {
        this.f21957b.remove(str);
        b4.b().d("AdSplashManager", "spalsh unAttach map size = " + this.f21957b.size());
    }

    private k4() {
        this.f21956a = 100;
        this.f21957b = new ArrayMap();
    }
}
