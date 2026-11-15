package androidx.compose.ui.text.platform.extensions;

import android.os.LocaleList;
import java.util.Locale;

public abstract class a {
    public static LocaleList a(Locale[] localeArr) {
        return new LocaleList(localeArr);
    }
}
