package ij;

import android.app.KeyguardManager;
import android.os.PowerManager;
import com.blankj.utilcode.util.Utils;
import kotlin.jvm.internal.Intrinsics;

public final class v {

    public static final v f62124a = new v();

    private v() {
    }

    public final int a() {
        boolean zC = c();
        boolean zB = b();
        if (zC) {
            return zB ? 2 : 3;
        }
        return 1;
    }

    public final boolean b() {
        Object systemService = Utils.a().getSystemService("keyguard");
        Intrinsics.f(systemService, "null cannot be cast to non-null type android.app.KeyguardManager");
        KeyguardManager keyguardManager = (KeyguardManager) systemService;
        return keyguardManager.isDeviceLocked() || keyguardManager.isKeyguardLocked();
    }

    public final boolean c() {
        Object systemService = Utils.a().getSystemService("power");
        Intrinsics.f(systemService, "null cannot be cast to non-null type android.os.PowerManager");
        try {
            return ((PowerManager) systemService).isInteractive();
        } catch (Throwable unused) {
            return false;
        }
    }
}
