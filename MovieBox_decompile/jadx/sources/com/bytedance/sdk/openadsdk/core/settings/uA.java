package com.bytedance.sdk.openadsdk.core.settings;

import android.util.Log;
import com.bytedance.sdk.component.utils.sU;
import java.util.concurrent.atomic.AtomicInteger;

public class uA {
    private static final AtomicInteger Sj = new AtomicInteger(1);

    public static boolean Sj() {
        return Sj.get() == 1;
    }

    protected static void Sj(int i10) {
        boolean z10 = true;
        if (i10 == 1 || i10 == 2) {
            try {
                AtomicInteger atomicInteger = Sj;
                if (atomicInteger.get() != i10) {
                    try {
                        atomicInteger.set(i10);
                    } catch (Throwable th2) {
                        th = th2;
                        sU.sP("SdkSwitch", th.getMessage());
                    }
                } else {
                    z10 = false;
                }
            } catch (Throwable th3) {
                th = th3;
                z10 = false;
            }
            if (z10) {
                Log.e("SdkSwitch", "switch status changed: " + Sj());
                if (Sj()) {
                    com.bytedance.sdk.openadsdk.EjP.Sj.EjP.sP();
                } else {
                    com.bytedance.sdk.openadsdk.EjP.Sj.EjP.TKC();
                }
            }
        }
    }
}
