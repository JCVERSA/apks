package defpackage;

import com.blankj.utilcode.util.Utils;
import com.blankj.utilcode.util.h;
import java.io.File;

public abstract class ky7 {
    public static final char a = File.separatorChar;

    public static String a(File file) {
        return file == null ? "" : file.getAbsolutePath();
    }

    public static String b() {
        return !h.B() ? "" : a(Utils.a().getExternalFilesDir(null));
    }
}
