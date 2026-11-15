package defpackage;

import java.io.File;

public abstract class tr4 {
    public static boolean a(File file) {
        if (file == null || !file.exists()) {
            return false;
        }
        b(file);
        return file.delete();
    }

    public static qv5 b(File file) {
        return null;
    }

    public static boolean c(String str) {
        return false;
    }
}
