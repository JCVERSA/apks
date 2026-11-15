package com.transsion.shorttv_pugc.base.locale;

import android.app.Application;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.LocaleList;
import android.text.TextUtils;
import com.blankj.utilcode.util.ThreadUtils;
import com.blankj.utilcode.util.Utils;
import com.transsion.shorttv_pugc.utils.h;
import java.util.Locale;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class d {

    public static final b f51772f = new b(null);

    private static final String[] f51773g = {null, "English", "Bahasa Indonesia", "Français", "Português", "العربية", "বাংলা", "Русский", "ਪੰਜਾਬੀ", "اردو", "Filipino"};

    private static final String[] f51774h = {null, Locale.ENGLISH.getLanguage(), "in", "fr", "pt", "ar", "bn", "ru", "pa", "ur", "fil"};

    private static final Lazy f51775i = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return d.i();
        }
    });

    private Locale f51776a;

    private Locale f51777b;

    private String f51778c;

    private final Context f51779d;

    private final e f51780e;

    public static final class a implements ComponentCallbacks2 {

        final Context f51782b;

        a(Context context) {
            this.f51782b = context;
        }

        public static final void b(d dVar, Locale locale, Locale locale2, Context context) {
            if (dVar.h() == locale) {
                String country = locale2.getCountry();
                Intrinsics.g(country, "getCountry(...)");
                dVar.k(null, country, true);
            } else {
                Intrinsics.e(context);
                dVar.m(context, dVar.h());
            }
            wf.a.C0922a.f(wf.a.f74274a, "LocaleManager", "onConfigurationChanged()-> locale = " + locale2, false, 4, null);
        }

        @Override
        public void onConfigurationChanged(Configuration newConfig) {
            Intrinsics.h(newConfig, "newConfig");
            final Locale locale = Build.VERSION.SDK_INT >= 24 ? newConfig.getLocales().get(0) : newConfig.locale;
            final Locale locale2 = d.this.f51777b;
            if (Intrinsics.c(locale, locale2)) {
                return;
            }
            d dVar = d.this;
            Intrinsics.e(locale);
            dVar.f51777b = locale;
            final d dVar2 = d.this;
            final Context context = this.f51782b;
            ThreadUtils.j(new Runnable() {
                @Override
                public final void run() {
                    d.a.b(dVar2, locale2, locale, context);
                }
            });
        }

        @Override
        public void onLowMemory() {
        }

        @Override
        public void onTrimMemory(int i10) {
        }
    }

    public static final class b {
        public b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Locale f(String str, String str2) {
            if (str == null || str.length() == 0) {
                return null;
            }
            return new Locale(str, str2);
        }

        public final String g() {
            return h.f52436a.g().getString("k_language_short_name", null);
        }

        public final void h(String str) {
            if (str != null) {
                int length = str.length() - 1;
                int i10 = 0;
                boolean z10 = false;
                while (i10 <= length) {
                    boolean z11 = Intrinsics.j(str.charAt(!z10 ? i10 : length), 32) <= 0;
                    if (z10) {
                        if (!z11) {
                            break;
                        } else {
                            length--;
                        }
                    } else if (z11) {
                        i10++;
                    } else {
                        z10 = true;
                    }
                }
                if (str.subSequence(i10, length + 1).toString().length() != 0) {
                    h.f52436a.g().putString("k_language_short_name", str);
                    return;
                }
            }
            h.f52436a.g().remove("k_language_short_name");
        }

        public final Locale d(Context context) {
            Intrinsics.h(context, "context");
            wf.a.C0922a.f(wf.a.f74274a, "LocaleManager", "getContextLocale()-> context = " + context, false, 4, null);
            Configuration configuration = context.getResources().getConfiguration();
            if (Build.VERSION.SDK_INT >= 24) {
                Locale locale = configuration.getLocales().get(0);
                Intrinsics.e(locale);
                return locale;
            }
            Locale locale2 = configuration.locale;
            Intrinsics.e(locale2);
            return locale2;
        }

        public final d e() {
            return (d) d.f51775i.getValue();
        }

        public final Context i(Context context, Locale locale) {
            Intrinsics.h(context, "context");
            Configuration configuration = new Configuration(context.getResources().getConfiguration());
            if (Build.VERSION.SDK_INT >= 24) {
                com.transsion.baselib.locale.e.a();
                LocaleList localeListA = androidx.compose.ui.text.platform.extensions.a.a(new Locale[]{locale});
                configuration.setLocales(localeListA);
                LocaleList.setDefault(localeListA);
            } else {
                configuration.setLocale(locale);
            }
            Context contextCreateConfigurationContext = context.createConfigurationContext(configuration);
            Intrinsics.g(contextCreateConfigurationContext, "createConfigurationContext(...)");
            return contextCreateConfigurationContext;
        }

        private b() {
        }
    }

    private d(Context context) {
        e eVar = new e();
        this.f51780e = eVar;
        Context applicationContext = context.getApplicationContext();
        Intrinsics.f(applicationContext, "null cannot be cast to non-null type android.app.Application");
        Application application = (Application) applicationContext;
        Context baseContext = application.getBaseContext();
        Intrinsics.e(baseContext);
        this.f51779d = baseContext;
        b bVar = f51772f;
        Locale localeD = bVar.d(baseContext);
        this.f51777b = localeD;
        String country = localeD.getCountry();
        wf.a.C0922a.f(wf.a.f74274a, "LocaleManager", "LocaleManager()->  system locale =" + this.f51777b + ", countryCode = " + country, false, 4, null);
        application.registerActivityLifecycleCallbacks(eVar);
        application.registerComponentCallbacks(new a(baseContext));
        String strG = bVar.g();
        Intrinsics.e(country);
        k(strG, country, true);
    }

    public static final d i() {
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return new d(applicationA);
    }

    public final void k(String str, String str2, boolean z10) {
        jg.b.f63119a.l(str);
        Context context = this.f51779d;
        if (str != null) {
            int length = str.length() - 1;
            int i10 = 0;
            boolean z11 = false;
            while (i10 <= length) {
                boolean z12 = Intrinsics.j(str.charAt(!z11 ? i10 : length), 32) <= 0;
                if (z11) {
                    if (!z12) {
                        break;
                    } else {
                        length--;
                    }
                } else if (z12) {
                    i10++;
                } else {
                    z11 = true;
                }
            }
            if (str.subSequence(i10, length + 1).toString().length() == 0) {
                str = null;
            }
        }
        if (z10 || !TextUtils.equals(str, this.f51778c)) {
            b bVar = f51772f;
            final Locale localeF = bVar.f(str, str2);
            if (localeF == null) {
                localeF = this.f51777b;
            }
            wf.a.C0922a.f(wf.a.f74274a, "LocaleManager", "setLocale()-> locale = " + localeF + " , language = " + ((Object) str), false, 4, null);
            synchronized (this) {
                this.f51778c = str;
                this.f51776a = localeF;
                Locale.setDefault(localeF);
                Unit unit = Unit.f64096a;
            }
            m(context, localeF);
            bVar.h(str);
            ThreadUtils.j(new Runnable() {
                @Override
                public final void run() {
                    d.l(this.f51766a, localeF);
                }
            });
        }
    }

    public static final void l(d dVar, Locale locale) {
        wf.a.C0922a.f(wf.a.f74274a, "LocaleManager", "notify changed()-> ", false, 4, null);
        dVar.f51780e.e(locale);
    }

    public final void m(Context context, Locale locale) {
        Locale locale2;
        Resources resources = context.getResources();
        Configuration configuration = resources.getConfiguration();
        if (Build.VERSION.SDK_INT >= 24) {
            locale2 = configuration.getLocales().get(0);
            Intrinsics.e(locale2);
        } else {
            locale2 = configuration.locale;
            Intrinsics.e(locale2);
        }
        wf.a.C0922a.f(wf.a.f74274a, "LocaleManager", "updateConfig()-> old app locale = " + locale2 + " , new app locale = " + locale, false, 4, null);
        Configuration configuration2 = new Configuration(configuration);
        configuration2.setLocale(locale);
        resources.updateConfiguration(configuration2, resources.getDisplayMetrics());
    }

    public final synchronized Locale h() {
        return this.f51776a;
    }

    public final void j(String str) {
        if (Build.VERSION.SDK_INT == 23 && Intrinsics.c("ur", str)) {
            k(str, "PK", false);
            return;
        }
        String country = this.f51777b.getCountry();
        Intrinsics.g(country, "getCountry(...)");
        k(str, country, false);
    }
}
