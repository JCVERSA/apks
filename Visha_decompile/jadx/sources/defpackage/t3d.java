package defpackage;

import android.content.Context;
import android.os.Environment;
import com.mgmi.ads.api.c;
import java.io.File;
import java.io.IOException;

public abstract class t3d {
    public static long a(double d) {
        return ((long) d) * 1048576;
    }

    public static File b(Context context) {
        return c(context, true);
    }

    public static File c(Context context, boolean z) {
        File cacheDir;
        try {
            cacheDir = f(context);
        } catch (Exception e) {
            e.printStackTrace();
            cacheDir = null;
        }
        if (cacheDir == null) {
            cacheDir = context.getCacheDir();
        }
        if (cacheDir != null) {
            return cacheDir;
        }
        return new File("/data/data/" + context.getPackageName() + "/cache/");
    }

    public static String d() {
        try {
            File externalFilesDir = c.b().getExternalFilesDir(Environment.DIRECTORY_DOWNLOADS);
            return externalFilesDir != null ? externalFilesDir.toString() : "";
        } catch (Throwable th) {
            th.printStackTrace();
            return "";
        }
    }

    public static File e() {
        try {
            return c.b().getExternalFilesDir(Environment.DIRECTORY_DOWNLOADS);
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public static File f(Context context) {
        File fileG = g();
        if (!fileG.exists()) {
            if (!fileG.mkdirs()) {
                return null;
            }
            try {
                new File(fileG, ".nomedia").createNewFile();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return fileG;
    }

    public static File g() {
        try {
            return c.b().getExternalCacheDir();
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }
}
