package defpackage;

import java.io.File;

public abstract class b2d {
    public static boolean a(String str) {
        if (str == null || str.isEmpty()) {
            return false;
        }
        File file = new File(str);
        return file.exists() && file.isFile();
    }

    public static void b(String str) {
        if (str == null || str.isEmpty()) {
            return;
        }
        File file = new File(str);
        if (file.exists() && file.isFile()) {
            try {
                file.delete();
            } catch (Exception unused) {
            }
        }
    }

    public static File c(String str) {
        if (str == null || str.isEmpty() || !d(str)) {
            return null;
        }
        File file = new File(str);
        if (file.exists()) {
            return file;
        }
        try {
            file.createNewFile();
            return file;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static boolean d(String str) {
        File file = new File(str);
        if (file.exists()) {
            return true;
        }
        File parentFile = file.getParentFile();
        if (parentFile.exists()) {
            return true;
        }
        try {
            return parentFile.mkdirs();
        } catch (Exception unused) {
        }
    }
}
