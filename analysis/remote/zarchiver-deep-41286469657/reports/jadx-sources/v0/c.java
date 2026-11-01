package v0;

import android.os.Process;
import java.io.File;

public final class c {

    public static final String f2184a = System.getenv("EMULATED_STORAGE_SOURCE");

    public static final String f2185b = System.getenv("EMULATED_STORAGE_TARGET");

    public static final String f2186c = System.getenv("EXTERNAL_STORAGE");

    public static String f2187d = null;

    public static String a(String str) {
        String str2 = f2184a;
        if (h.e(str2)) {
            return str;
        }
        String str3 = f2185b;
        if (h.e(str3)) {
            return str;
        }
        String str4 = f2186c;
        if (h.e(str4)) {
            return str;
        }
        if (str.startsWith(str2)) {
            str = str.replace(str2, str3);
        }
        return str.startsWith(str4) ? str.replace(str4, new File(str3, String.valueOf(Process.myUid() / 100000)).getAbsolutePath()) : str;
    }

    public static String b(String str) {
        if (str.startsWith("/SAF")) {
            String strN = x0.d.n(str);
            return strN != null ? strN : str;
        }
        String str2 = f2184a;
        if (h.e(str2)) {
            return str;
        }
        String str3 = f2185b;
        if (h.e(str3)) {
            return str;
        }
        String str4 = f2186c;
        if (h.e(str4)) {
            return str;
        }
        if (str.startsWith(str2)) {
            str = str.replace(str2, str3);
        }
        if (f2187d == null) {
            f2187d = new File(str3, String.valueOf(Process.myUid() / 100000)).getAbsolutePath();
        }
        return str.startsWith(f2187d) ? str.replace(f2187d, str4) : str;
    }
}
