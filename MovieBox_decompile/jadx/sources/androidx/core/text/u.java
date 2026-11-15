package androidx.core.text;

import android.text.TextUtils;
import java.util.Locale;

public abstract class u {
    public static int a(Locale locale) {
        return TextUtils.getLayoutDirectionFromLocale(locale);
    }
}
