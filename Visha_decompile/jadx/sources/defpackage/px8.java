package defpackage;

import android.os.Environment;

public abstract class px8 {
    public static String a() {
        return b() ? Environment.getExternalStorageDirectory().getAbsolutePath() : "";
    }

    public static boolean b() {
        return "mounted".equals(Environment.getExternalStorageState());
    }
}
