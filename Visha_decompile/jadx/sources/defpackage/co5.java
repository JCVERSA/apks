package defpackage;

import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

public abstract class co5 {
    public static final Map a = new HashMap();
    public static Locale b = a();

    public static Locale a() {
        if ("en".equalsIgnoreCase(Locale.getDefault().getLanguage())) {
            return Locale.getDefault();
        }
        Locale[] availableLocales = Locale.getAvailableLocales();
        for (int i = 0; i != availableLocales.length; i++) {
            if ("en".equalsIgnoreCase(availableLocales[i].getLanguage())) {
                return availableLocales[i];
            }
        }
        return Locale.getDefault();
    }
}
