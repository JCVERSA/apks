package androidx.compose.ui.text.platform.extensions;

import android.os.LocaleList;
import android.text.style.LocaleSpan;

public abstract class b {
    public static LocaleSpan a(LocaleList localeList) {
        return new LocaleSpan(localeList);
    }
}
