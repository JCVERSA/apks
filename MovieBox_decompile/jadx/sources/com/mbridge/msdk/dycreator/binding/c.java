package com.mbridge.msdk.dycreator.binding;

import android.text.TextUtils;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.mbridge.msdk.dycreator.binding.base.BaseStrategy;
import com.mbridge.msdk.dycreator.binding.strategy.d;
import com.mbridge.msdk.dycreator.binding.strategy.e;
import com.mbridge.msdk.dycreator.binding.strategy.f;
import com.mbridge.msdk.dycreator.binding.strategy.g;

public final class c {

    private static volatile c f33928a;

    private c() {
    }

    public static c a() {
        if (f33928a == null) {
            synchronized (c.class) {
                try {
                    if (f33928a == null) {
                        f33928a = new c();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f33928a;
    }

    public <T extends BaseStrategy> T a(String str) {
        T aVar = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (str.equals("close")) {
            aVar = new com.mbridge.msdk.dycreator.binding.strategy.c();
        } else if (str.equals("download")) {
            aVar = new com.mbridge.msdk.dycreator.binding.strategy.b();
        } else if (!str.equals("deeplink") && str.equals("activity")) {
            aVar = new com.mbridge.msdk.dycreator.binding.strategy.a();
        }
        if (str.equals(TmcConstants.MENU_KEY_FEEDBACK)) {
            aVar = new d();
        }
        if (str.equals("notice")) {
            aVar = new e();
        }
        if (str.equals("permissionInfo")) {
            aVar = new f();
        }
        return str.equals("privateAddress") ? new g() : aVar;
    }
}
