package io.appmetrica.analytics.impl;

import android.content.Context;
import android.os.UserManager;
import io.appmetrica.analytics.coreutils.internal.system.SystemServiceUtils;

public final class C2948vn {
    public static boolean a(Context context) {
        return ((Boolean) SystemServiceUtils.accessSystemServiceSafelyOrDefault((UserManager) context.getSystemService(UserManager.class), "detect unlocked user state", "User manager", Boolean.TRUE, new C2923un())).booleanValue();
    }
}
