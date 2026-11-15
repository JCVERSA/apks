package sz;

import java.util.Locale;

public final class b {
    public static String a(String str) {
        return str != null ? str.toLowerCase(Locale.ENGLISH) : "";
    }

    public static String b(String str) {
        return a(str).trim();
    }
}
