package defpackage;

import android.content.Context;

public abstract class rr7 {
    public static Boolean a(Context context, String str, boolean z) {
        try {
            Class<?> clsLoadClass = context.getClassLoader().loadClass("android.os.SystemProperties");
            return (Boolean) clsLoadClass.getMethod("getBoolean", String.class, Boolean.TYPE).invoke(clsLoadClass, new String(str), new Boolean(z));
        } catch (IllegalArgumentException e) {
            throw e;
        } catch (Exception unused) {
            return Boolean.valueOf(z);
        }
    }
}
