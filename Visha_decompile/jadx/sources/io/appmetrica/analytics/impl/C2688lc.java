package io.appmetrica.analytics.impl;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import io.appmetrica.analytics.coreutils.internal.StringUtils;

public final class C2688lc {
    public volatile String a;

    public static String a() {
        try {
            Class<?> cls = Class.forName("android.app.ActivityThread");
            return (String) cls.getMethod("getProcessName", null).invoke(cls.getMethod("currentActivityThread", null).invoke(null, null), null);
        } catch (Throwable th) {
            throw new RuntimeException(th);
        }
    }

    public final String b() {
        if (this.a != null) {
            return this.a;
        }
        synchronized (this) {
            try {
                if (this.a == null) {
                    this.a = a();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return this.a;
    }

    public final boolean c() {
        try {
            return (TextUtils.isEmpty(b()) || b().contains(StringUtils.PROCESS_POSTFIX_DELIMITER)) ? false : true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public final boolean a(@NonNull String str) {
        try {
            if (TextUtils.isEmpty(b())) {
                return false;
            }
            String strB = b();
            StringBuilder sb = new StringBuilder(StringUtils.PROCESS_POSTFIX_DELIMITER);
            sb.append(str);
            return strB.endsWith(sb.toString());
        } catch (Throwable unused) {
            return false;
        }
    }
}
