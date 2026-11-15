package defpackage;

import android.content.res.Resources;
import android.icu.text.CaseMap;
import android.icu.util.ULocale;
import java.util.Locale;
import kotlin.jvm.internal.DefaultConstructorMarker;

public abstract class pi5 {
    public static final a a = new a(null);

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String a() {
            String language = b().getLanguage();
            y45.i(language, "getLanguage(...)");
            return language;
        }

        public final Locale b() {
            Locale locale = Resources.getSystem().getConfiguration().getLocales().get(0);
            y45.i(locale, "get(...)");
            return locale;
        }

        public final String c(String str) {
            y45.j(str, "languageCode");
            String strApply = CaseMap.toTitle().wholeString().noLowercase().apply(new Locale(str), null, ULocale.getDisplayName(str, a()));
            y45.g(strApply);
            return strApply;
        }

        public a() {
        }
    }
}
