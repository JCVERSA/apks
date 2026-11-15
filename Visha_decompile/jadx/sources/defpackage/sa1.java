package defpackage;

import android.content.Context;
import android.os.Environment;
import java.io.File;
import java.lang.reflect.Field;

public abstract class sa1 {
    public static File a(Context context) {
        boolean z = true;
        try {
            Field declaredField = Environment.class.getDeclaredField("sUserRequired");
            declaredField.setAccessible(true);
            z = declaredField.getBoolean(new Environment());
        } catch (Exception unused) {
        }
        if (z) {
            return null;
        }
        try {
            return context.getExternalCacheDir();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
