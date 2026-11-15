package com.mgtv.ssp.utils.language;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.text.TextUtils;
import androidx.annotation.StringRes;
import com.hunantv.imgo.BaseApplication;
import com.mgmi.ssp.MGTVAdFactory;
import com.mgtv.ssp.R;
import com.transsion.audiotagger.tag.datatype.DataTypes;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

public class c {
    private static final String a = "c";
    private static c j;
    private AreaInfo c;
    private Locale d;
    private String e;
    private String f;
    private String g;
    private String h;
    private List<AreaInfo> b = new ArrayList();
    private boolean i = true;

    private c() {
    }

    private void a(String str) {
    }

    private void c() {
        AreaInfo areaInfo = this.c;
        if (areaInfo != null) {
            int i = areaInfo.areaCode;
            if (i == -1) {
                Locale localeA = a(BaseApplication.getContext().getResources().getConfiguration());
                String country = localeA.getCountry();
                Locale locale = Locale.SIMPLIFIED_CHINESE;
                if (country.equals(locale.getCountry()) && localeA.getLanguage().equals(locale.getLanguage())) {
                    com.hunantv.imgo.b.a.a(0);
                    com.hunantv.imgo.b.a.b(12);
                } else if ((localeA.getCountry().equals("HK") || localeA.getCountry().equals("MO") || localeA.getCountry().equals("TW")) && localeA.getLanguage().equals(Locale.TRADITIONAL_CHINESE.getLanguage())) {
                    com.hunantv.imgo.b.a.a(1);
                    com.hunantv.imgo.b.a.b(12);
                } else if (localeA.getLanguage().equals("in")) {
                    com.hunantv.imgo.b.a.a(18);
                    com.hunantv.imgo.b.a.b(12);
                } else if (localeA.getLanguage().equals("ms")) {
                    com.hunantv.imgo.b.a.a(6);
                    com.hunantv.imgo.b.a.b(12);
                } else if (localeA.getLanguage().equals("vi")) {
                    com.hunantv.imgo.b.a.a(19);
                    com.hunantv.imgo.b.a.b(12);
                } else if (localeA.getLanguage().equals("th")) {
                    com.hunantv.imgo.b.a.a(23);
                    com.hunantv.imgo.b.a.b(12);
                } else {
                    com.hunantv.imgo.b.a.a(10);
                    com.hunantv.imgo.b.a.b(12);
                }
            } else {
                com.hunantv.imgo.b.a.a(i);
                com.hunantv.imgo.b.a.b(12);
            }
            MGTVAdFactory.getInstance().setAreaCode(com.hunantv.imgo.b.a.a());
            MGTVAdFactory.getInstance().setIsOverSea(com.hunantv.imgo.util.b.f() ? 1 : 0);
        }
    }

    private void d() {
        if (this.b == null) {
            this.b = new ArrayList();
        }
        this.b.clear();
        this.b.add(new AreaInfo(-1));
        this.b.add(new AreaInfo(0));
        this.b.add(new AreaInfo(1));
        this.b.add(new AreaInfo(6));
        this.b.add(new AreaInfo(10));
        this.b.add(new AreaInfo(18));
        this.b.add(new AreaInfo(19));
        this.b.add(new AreaInfo(23));
    }

    public Locale b() {
        AreaInfo areaInfo = this.c;
        if (areaInfo == null) {
            return Locale.TRADITIONAL_CHINESE;
        }
        int i = areaInfo.areaCode;
        if (i != -1) {
            if (i == 1) {
                return Locale.TRADITIONAL_CHINESE;
            }
            if (i == 6) {
                return new Locale("ms", "MY");
            }
            if (i == 10) {
                return Locale.ENGLISH;
            }
            if (i == 23) {
                return new Locale("th", "TH");
            }
            if (i != 18) {
                return i != 19 ? Locale.SIMPLIFIED_CHINESE : new Locale("vi", "VN");
            }
            return new Locale("in", DataTypes.OBJ_ID);
        }
        Locale localeA = a(BaseApplication.getContext().getResources().getConfiguration());
        String country = localeA.getCountry();
        Locale locale = Locale.SIMPLIFIED_CHINESE;
        if (!country.equals(locale.getCountry()) || !localeA.getLanguage().equals(locale.getLanguage())) {
            String country2 = localeA.getCountry();
            Locale locale2 = Locale.ENGLISH;
            if ((!country2.equals(locale2.getCountry()) || !localeA.getLanguage().equals(locale2.getLanguage())) && ((!localeA.getCountry().equalsIgnoreCase("HK") || !localeA.getLanguage().equals(Locale.TRADITIONAL_CHINESE.getLanguage())) && ((!localeA.getCountry().equalsIgnoreCase("TW") || !localeA.getLanguage().equals(Locale.TRADITIONAL_CHINESE.getLanguage())) && ((!localeA.getCountry().equalsIgnoreCase("MO") || !localeA.getLanguage().equals(Locale.TRADITIONAL_CHINESE.getLanguage())) && !localeA.getLanguage().equals("in") && !localeA.getLanguage().equals("ms") && !localeA.getLanguage().equals("th") && !localeA.getLanguage().equals("vi"))))) {
                return locale2;
            }
        }
        return localeA;
    }

    public static c a() {
        if (j == null) {
            synchronized (c.class) {
                try {
                    if (j == null) {
                        j = new c();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return j;
    }

    @StringRes
    public static int a(int i) {
        int iA = com.hunantv.imgo.b.a.C0126a.a(i);
        if (iA == -1) {
            return R.string.area_self;
        }
        if (iA == 0) {
            return R.string.area_cn;
        }
        if (iA == 1) {
            return R.string.area_hk_tw_mo;
        }
        if (iA == 6) {
            return R.string.area_malaysia;
        }
        if (iA == 10) {
            return R.string.area_en;
        }
        if (iA == 23) {
            return R.string.area_thailand;
        }
        if (iA == 18) {
            return R.string.area_indonesia;
        }
        if (iA != 19) {
            return 0;
        }
        return R.string.area_vietnam;
    }

    public void a(Context context) throws Throwable {
        if (this.c != null) {
            return;
        }
        Object objA = b.a().a("ssp_area_current");
        if (objA != null) {
            this.c = (AreaInfo) objA;
            a("current area found in cache " + this.c.toString());
        } else {
            this.c = new AreaInfo();
            if (com.hunantv.imgo.util.b.f()) {
                this.c.areaCode = -1;
            } else {
                this.c.areaCode = 0;
            }
            a("current area default set to HK_TW_MO");
        }
        a(b());
        c();
        d();
    }

    private Locale b(Configuration configuration) {
        if (TextUtils.isEmpty(this.f) && TextUtils.isEmpty(this.e)) {
            a(configuration.locale.getCountry(), configuration.locale.getLanguage());
        }
        AreaInfo areaInfo = this.c;
        if (areaInfo == null) {
            return configuration.locale;
        }
        if (areaInfo.areaCode == -1) {
            if (this.i) {
                a(configuration.locale.getCountry(), configuration.locale.getLanguage());
            }
            if (TextUtils.isEmpty(this.e) && TextUtils.isEmpty(this.f)) {
                return configuration.locale;
            }
            String str = this.e;
            Locale locale = Locale.SIMPLIFIED_CHINESE;
            if (str.equals(locale.getLanguage()) && this.f.equals(locale.getCountry())) {
                return locale;
            }
            if (this.f.equals("HK") || this.f.equals("MO") || this.f.equals("TW")) {
                String str2 = this.e;
                Locale locale2 = Locale.TRADITIONAL_CHINESE;
                if (str2.equals(locale2.getLanguage())) {
                    return locale2;
                }
            }
            String str3 = this.e;
            Locale locale3 = Locale.TRADITIONAL_CHINESE;
            if (str3.equals(locale3.getLanguage()) && this.f.equals("HK")) {
                return locale3;
            }
            if (!this.e.equals("in") && !this.e.equals("ms") && !this.e.equals("vi") && !this.e.equals("th")) {
                return Locale.ENGLISH;
            }
            return configuration.locale;
        }
        return configuration.locale;
    }

    public void a(int i, boolean z) throws Throwable {
        this.i = false;
        this.d = b();
        AreaInfo areaInfo = null;
        for (AreaInfo areaInfo2 : this.b) {
            if (areaInfo2.areaCode == i) {
                areaInfo = areaInfo2;
            }
        }
        if (areaInfo == null || areaInfo.equals(this.c)) {
            return;
        }
        this.c = areaInfo;
        a("setCurrentArea to " + this.c.toString());
        b.a().a("ssp_area_current", this.c);
        c();
        if (z) {
            a(b());
            Intent intent = new Intent("ssp.language.change");
            intent.putExtra("area_code", this.c.areaCode);
            BaseApplication.getContext().sendBroadcast(intent);
        }
    }

    public void a(Locale locale) {
        a("country:" + locale.getCountry() + ",laung:" + locale.getLanguage());
        Context context = BaseApplication.getContext();
        Configuration configuration = context.getResources().getConfiguration();
        if (TextUtils.isEmpty(this.h) || TextUtils.isEmpty(this.g) || !this.h.equals(locale.getCountry()) || !this.g.equals(locale.getLanguage())) {
            a("currentSystemCountry:" + this.f);
            a("currentSystemLaunage:" + this.e);
            a("currentAppCountry:" + this.h);
            a("currentAppLaunage:" + this.g);
            Locale.setDefault(locale);
            b(configuration, locale);
            this.h = locale.getCountry();
            this.g = locale.getLanguage();
            this.i = true;
            context.getResources().updateConfiguration(configuration, context.getResources().getDisplayMetrics());
        }
    }

    @TargetApi(24)
    private void b(Configuration configuration, Locale locale) {
        configuration.setLocale(locale);
    }

    @TargetApi(24)
    public Locale a(Configuration configuration) {
        if (TextUtils.isEmpty(this.f) && TextUtils.isEmpty(this.e)) {
            a(configuration.getLocales().get(0).getCountry(), configuration.getLocales().get(0).getLanguage());
        }
        AreaInfo areaInfo = this.c;
        if (areaInfo == null) {
            return configuration.getLocales().get(0);
        }
        if (areaInfo.areaCode == -1) {
            if (this.i) {
                a(configuration.getLocales().get(0).getCountry(), configuration.getLocales().get(0).getLanguage());
            }
            if (TextUtils.isEmpty(this.e) && TextUtils.isEmpty(this.f)) {
                return configuration.getLocales().get(0);
            }
            String str = this.e;
            Locale locale = Locale.SIMPLIFIED_CHINESE;
            if (str.equals(locale.getLanguage()) && this.f.equals(locale.getCountry())) {
                return locale;
            }
            if (this.f.equals("HK") || this.f.equals("MO") || this.f.equals("TW")) {
                String str2 = this.e;
                Locale locale2 = Locale.TRADITIONAL_CHINESE;
                if (str2.equals(locale2.getLanguage())) {
                    return locale2;
                }
            }
            String str3 = this.e;
            Locale locale3 = Locale.TRADITIONAL_CHINESE;
            if (str3.equals(locale3.getLanguage()) && this.f.equals("HK")) {
                return locale3;
            }
            if (!this.e.equals("in") && !this.e.equals("ms") && !this.e.equals("vi") && !this.e.equals("th")) {
                return Locale.ENGLISH;
            }
            return new Locale(this.e, this.f);
        }
        return configuration.getLocales().get(0);
    }

    public void a(Configuration configuration, Locale locale) {
        configuration.locale = locale;
    }

    private void a(String str, String str2) {
        this.f = str;
        this.e = str2;
        com.hunantv.imgo.b.a.a(str2);
    }
}
