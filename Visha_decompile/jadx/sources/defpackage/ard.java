package defpackage;

import android.content.Context;
import android.os.Environment;
import android.os.StatFs;

public abstract class ard {
    public static long a(String str) {
        try {
            StatFs statFs = new StatFs(str);
            return statFs.getAvailableBlocksLong() * statFs.getBlockSizeLong();
        } catch (Exception unused) {
            return 0L;
        }
    }

    public static String b(Context context) {
        if (!"mounted".equals(Environment.getExternalStorageState()) && Environment.isExternalStorageRemovable()) {
            return context.getFilesDir().getAbsolutePath();
        }
        try {
            return context.getExternalFilesDir(null).getAbsolutePath();
        } catch (Exception e) {
            e.printStackTrace();
            return context.getFilesDir().getAbsolutePath();
        }
    }
}
