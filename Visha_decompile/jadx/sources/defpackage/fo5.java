package defpackage;

import android.content.Context;
import java.util.Locale;
import org.schabi.newpipe.extractor.localization.ContentCountry;
import org.schabi.newpipe.extractor.localization.Localization;

public abstract class fo5 {
    public static ContentCountry a(Context context) {
        return new ContentCountry(Locale.getDefault().getCountry());
    }

    public static Localization b(Context context) {
        return Localization.fromLocale(Locale.getDefault());
    }
}
