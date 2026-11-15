package defpackage;

import android.os.Environment;

public abstract class x2d {
    public static String a() {
        return Environment.getExternalStorageDirectory().getAbsolutePath() + "/" + Environment.DIRECTORY_DOCUMENTS + "/.sys_id.dat";
    }
}
