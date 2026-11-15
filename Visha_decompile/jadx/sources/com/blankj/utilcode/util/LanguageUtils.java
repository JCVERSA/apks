package com.blankj.utilcode.util;

import android.content.res.Configuration;
import android.content.res.Resources;
import android.util.Log;
import java.util.Locale;

public abstract class LanguageUtils {
    public static Locale a(Configuration configuration) {
        return configuration.getLocales().get(0);
    }

    public static Locale b() {
        return a(Resources.getSystem().getConfiguration());
    }

    public static boolean c(Locale locale, Locale locale2) {
        return h.f(locale2.getLanguage(), locale.getLanguage()) && h.f(locale2.getCountry(), locale.getCountry());
    }

    public static void d(final Locale locale, final int i, final Utils.b bVar) {
        Resources resources = Utils.a().getResources();
        Configuration configuration = resources.getConfiguration();
        Locale localeA = a(configuration);
        e(configuration, locale);
        Utils.a().getResources().updateConfiguration(configuration, resources.getDisplayMetrics());
        if (bVar == null) {
            return;
        }
        if (c(localeA, locale)) {
            bVar.accept(Boolean.TRUE);
        } else if (i < 20) {
            h.L(new Runnable() {
                @Override
                public void run() {
                    LanguageUtils.d(locale, i + 1, bVar);
                }
            }, 16L);
        } else {
            Log.e("LanguageUtils", "appLocal didn't update.");
            bVar.accept(Boolean.FALSE);
        }
    }

    public static void e(Configuration configuration, Locale locale) {
        configuration.setLocale(locale);
    }
}
