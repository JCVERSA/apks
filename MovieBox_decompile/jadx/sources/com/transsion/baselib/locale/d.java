package com.transsion.baselib.locale;

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
import java.util.Locale;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class d {

    public static final b f42155f = new b(null);

    private static final String[] f42156g = {null, "English", "Bahasa Indonesia", "Français", "Português", "العربية", "বাংলা", "Русский", "ਪੰਜਾਬੀ", "اردو", "Filipino", "Bahasa Melayu", "Español"};

    private static final String[] f42157h = {null, Locale.ENGLISH.getLanguage(), "in", "fr", "pt", "ar", "bn", "ru", "pa", "ur", "fil", "ms", "es"};

    private static final Lazy f42158i = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return d.m();
        }
    });

    private Locale f42159a;

    private Locale f42160b;

    private String f42161c;

    private final Context f42162d;

    private final f f42163e;

    public static final class a implements ComponentCallbacks2 {

        final Context f42165b;

        a(Context context) {
            this.f42165b = context;
        }

        public static final void b(d dVar, Locale locale, Locale locale2, Context context) {
            if (dVar.j() == locale) {
                String country = locale2.getCountry();
                Intrinsics.g(country, "getCountry(...)");
                dVar.o(null, country, true);
            } else {
                Intrinsics.e(context);
                dVar.r(context, dVar.j());
            }
            wf.a.C0922a.f(wf.a.f74274a, "LocaleManager", "onConfigurationChanged()-> locale = " + locale2, false, 4, null);
        }

        @Override
        public void onConfigurationChanged(Configuration newConfig) {
            Intrinsics.h(newConfig, "newConfig");
            final Locale locale = Build.VERSION.SDK_INT >= 24 ? newConfig.getLocales().get(0) : newConfig.locale;
            final Locale locale2 = d.this.f42160b;
            if (Intrinsics.c(locale, locale2)) {
                return;
            }
            d dVar = d.this;
            Intrinsics.e(locale);
            dVar.f42160b = locale;
            final d dVar2 = d.this;
            final Context context = this.f42165b;
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

        public final Locale h(String str, String str2) {
            if (str == null || str.length() == 0) {
                return null;
            }
            return new Locale(str, str2);
        }

        public final String i() {
            return com.transsion.baselib.report.launch.b.f42221a.b().getString("k_language_short_name", null);
        }

        public final void j(String str) {
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
                    com.transsion.baselib.report.launch.b.f42221a.b().putString("k_language_short_name", str);
                    return;
                }
            }
            com.transsion.baselib.report.launch.b.f42221a.b().remove("k_language_short_name");
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
            return (d) d.f42158i.getValue();
        }

        public final String[] f() {
            return d.f42157h;
        }

        public final String[] g() {
            return d.f42156g;
        }

        public final Context k(Context context, Locale locale) {
            Intrinsics.h(context, "context");
            Configuration configuration = new Configuration(context.getResources().getConfiguration());
            if (Build.VERSION.SDK_INT >= 24) {
                e.a();
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
        f fVar = new f();
        this.f42163e = fVar;
        Context applicationContext = context.getApplicationContext();
        Intrinsics.f(applicationContext, "null cannot be cast to non-null type android.app.Application");
        Application application = (Application) applicationContext;
        Context baseContext = application.getBaseContext();
        Intrinsics.e(baseContext);
        this.f42162d = baseContext;
        b bVar = f42155f;
        Locale localeD = bVar.d(baseContext);
        this.f42160b = localeD;
        String country = localeD.getCountry();
        wf.a.C0922a.f(wf.a.f74274a, "LocaleManager", "LocaleManager()->  system locale =" + this.f42160b + ", countryCode = " + country, false, 4, null);
        application.registerActivityLifecycleCallbacks(fVar);
        application.registerComponentCallbacks(new a(baseContext));
        String strI = bVar.i();
        Intrinsics.e(country);
        o(strI, country, true);
    }

    public static final d m() {
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return new d(applicationA);
    }

    public final void o(String str, String str2, boolean z10) {
        jg.b.f63119a.l(str);
        Context context = this.f42162d;
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
        if (z10 || !TextUtils.equals(str, this.f42161c)) {
            b bVar = f42155f;
            final Locale localeH = bVar.h(str, str2);
            if (localeH == null) {
                localeH = this.f42160b;
            }
            wf.a.C0922a.f(wf.a.f74274a, "LocaleManager", "setLocale()-> locale = " + localeH + " , language = " + ((Object) str), false, 4, null);
            synchronized (this) {
                this.f42161c = str;
                this.f42159a = localeH;
                Locale.setDefault(localeH);
                Unit unit = Unit.f64096a;
            }
            r(context, localeH);
            bVar.j(str);
            ThreadUtils.j(new Runnable() {
                @Override
                public final void run() {
                    d.p(this.f42149a, localeH);
                }
            });
        }
    }

    public static final void p(d dVar, Locale locale) {
        wf.a.C0922a.f(wf.a.f74274a, "LocaleManager", "notify changed()-> ", false, 4, null);
        dVar.f42163e.e(locale);
    }

    public final void r(Context context, Locale locale) {
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

    public final synchronized Locale j() {
        return this.f42159a;
    }

    public final Locale k() {
        return this.f42159a;
    }

    public final Locale l() {
        return this.f42160b;
    }

    public final void n(String str) {
        if (Build.VERSION.SDK_INT == 23 && Intrinsics.c("ur", str)) {
            o(str, "PK", false);
            return;
        }
        String country = this.f42160b.getCountry();
        Intrinsics.g(country, "getCountry(...)");
        o(str, country, false);
    }

    public final boolean q(Locale locale) {
        Intrinsics.h(locale, "locale");
        return this.f42160b == locale;
    }
}
