package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.os.Build;
import android.os.LocaleList;
import defpackage.kwd;
import defpackage.y45;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.util.List;
import java.util.Locale;
import kotlin.Result;

public final class vs0 {
    private final ts0 a = new ts0();

    public final String a(Context context) {
        Object objM279constructorimpl;
        String strC;
        y45.j(context, "context");
        try {
            Result.Companion companion = Result.INSTANCE;
            if (Build.VERSION.SDK_INT >= 33) {
                Object systemService = context.getSystemService(CommonUrlParts.LOCALE);
                y45.h(systemService, "null cannot be cast to non-null type android.app.LocaleManager");
                LocaleList applicationLocales = kwd.a(systemService).getApplicationLocales();
                y45.i(applicationLocales, "getApplicationLocales(...)");
                if (applicationLocales.isEmpty()) {
                    y45.j(context, "context");
                    Locale locale = context.getResources().getConfiguration().locale;
                    ts0 ts0Var = this.a;
                    y45.g(locale);
                    ts0Var.getClass();
                    strC = ts0.a(locale);
                } else {
                    ts0 ts0Var2 = this.a;
                    Locale locale2 = applicationLocales.get(0);
                    y45.i(locale2, "get(...)");
                    ts0Var2.getClass();
                    strC = ts0.a(locale2);
                }
            } else {
                strC = c(context);
            }
            objM279constructorimpl = Result.m279constructorimpl(strC);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(kotlin.c.a(th));
        }
        if (Result.m285isFailureimpl(objM279constructorimpl)) {
            objM279constructorimpl = null;
        }
        return (String) objM279constructorimpl;
    }

    public final List<String> b(Context context) {
        y45.j(context, "context");
        try {
            Result.Companion companion = Result.INSTANCE;
            LocaleList locales = context.getResources().getConfiguration().getLocales();
            y45.i(locales, "getLocales(...)");
            List listC = defpackage.x71.c();
            int size = locales.size();
            for (int i = 0; i < size; i++) {
                ts0 ts0Var = this.a;
                Locale locale = locales.get(i);
                y45.i(locale, "get(...)");
                ts0Var.getClass();
                listC.add(ts0.a(locale));
            }
            return defpackage.x71.a(listC);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Object objM279constructorimpl = Result.m279constructorimpl(kotlin.c.a(th));
            if (Result.m285isFailureimpl(objM279constructorimpl)) {
                objM279constructorimpl = null;
            }
            return (List) objM279constructorimpl;
        }
    }

    public final String c(Context context) {
        y45.j(context, "context");
        Locale locale = context.getResources().getConfiguration().locale;
        ts0 ts0Var = this.a;
        y45.g(locale);
        ts0Var.getClass();
        return ts0.a(locale);
    }
}
