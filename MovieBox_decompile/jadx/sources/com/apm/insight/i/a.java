package com.apm.insight.i;

import android.annotation.SuppressLint;
import android.content.Context;
import android.provider.Settings;
import android.text.TextUtils;
import com.apm.insight.runtime.o;
import java.util.UUID;

public class a {

    private static volatile UUID f18936a = null;

    private static String f18937b = "";

    @SuppressLint({"MissingPermission", "HardwareIds"})
    private a(Context context) {
        String string;
        if (f18936a == null) {
            synchronized (a.class) {
                if (f18936a == null) {
                    String strC = o.a().c();
                    if (strC != null) {
                        f18936a = UUID.fromString(strC);
                    } else {
                        try {
                            string = Settings.Secure.getString(context.getContentResolver(), "android_id");
                        } catch (Throwable unused) {
                            string = null;
                        }
                        try {
                            if (string != null) {
                                f18936a = UUID.nameUUIDFromBytes(string.getBytes("utf8"));
                            } else {
                                f18936a = UUID.randomUUID();
                            }
                        } catch (Throwable unused2) {
                        }
                        try {
                            o.a().b(f18936a.toString());
                        } catch (Throwable unused3) {
                        }
                    }
                }
            }
        }
    }

    public static synchronized String a(Context context) {
        try {
            if (TextUtils.isEmpty(f18937b)) {
                new a(context);
                UUID uuid = f18936a;
                if (uuid != null) {
                    f18937b = uuid.toString();
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f18937b;
    }
}
