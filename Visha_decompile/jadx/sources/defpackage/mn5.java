package defpackage;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.text.TextUtils;
import android.util.Log;
import com.transsion.dbdata.beans.adsbean.AdItemBean;
import com.transsion.vishaads.R;
import com.transsion.widgetslib.widget.timepicker.OSDateTimePicker;

public class mn5 {
    public static boolean a = true;
    public static volatile mn5 b;
    public static boolean c;
    public static boolean d;
    public static int e;
    public static boolean f;
    public static boolean g;

    public static mn5 a() {
        if (b == null) {
            synchronized (mn5.class) {
                try {
                    if (b == null) {
                        b = new mn5();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return b;
    }

    public static void f() {
        if (!qha.c()) {
            c = true;
            return;
        }
        boolean zC = sg9.e("visha_local_ad").c("local_ad_disable_show", false);
        c = zC;
        if (zC) {
            return;
        }
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) se.a().getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo == null || !activeNetworkInfo.isAvailable()) {
            j();
        } else {
            l(true);
        }
        k();
    }

    public static boolean g() {
        return c;
    }

    public static boolean h() {
        String str = "local_launch_ad_" + it1.c(OSDateTimePicker.FORMAT_Y_M_D);
        int iF = sg9.e("visha_local_ad").f("local_launch_ad_" + str);
        if (a) {
            Log.d("LocalAdsManager", "isShowLocalSplashAd day:" + str + " have show " + iF);
        }
        if (iF >= 2) {
            return false;
        }
        int iF2 = sg9.e("visha_local_ad").f("local_ad_show_mark_on_day_" + str);
        if (a) {
            Log.d("LocalAdsManager", "isShowLocalSplashAd startTime:" + e + ", lastMarkDay" + iF2);
        }
        return iF2 == 0 || e - iF2 > 1;
    }

    public static void i() {
        String str = "local_launch_ad_" + it1.c(OSDateTimePicker.FORMAT_Y_M_D);
        String str2 = "local_launch_ad_" + str;
        int iF = sg9.e("visha_local_ad").f(str2) + 1;
        sg9.e("visha_local_ad").p(str2, iF);
        sg9.e("visha_local_ad").p("local_ad_show_mark_on_day_" + str, e);
        if (a) {
            Log.d("LocalAdsManager", "markLocalSplashAdShow todayCnt:" + iF + ",startTime" + e);
        }
    }

    public static void j() {
        String strC = it1.c(OSDateTimePicker.FORMAT_Y_M_D);
        String strJ = sg9.e("visha_local_ad").j("local_ad_no_network_date");
        int iAbs = Math.abs(it1.a(strJ, strC, OSDateTimePicker.FORMAT_Y_M_D));
        if (a) {
            Log.e("LocalAdsManager", "markNoNetworkDay internalDay:" + iAbs);
        }
        if (TextUtils.isEmpty(strJ) || iAbs >= 1) {
            sg9.e("visha_local_ad").r("local_ad_no_network_date", strC);
            int iF = sg9.e("visha_local_ad").f("local_ad_no_network_day");
            if (a) {
                Log.e("LocalAdsManager", "markNoNetworkDay haveMarkDays:" + iF);
            }
            if (iF >= 3) {
                l(true);
            } else {
                sg9.e("visha_local_ad").p("local_ad_no_network_day", iF + 1);
            }
        }
    }

    public static void k() {
        String str = "local_ad_start_on_day_" + it1.c(OSDateTimePicker.FORMAT_Y_M_D);
        int iF = sg9.e("visha_local_ad").f(str) + 1;
        sg9.e("visha_local_ad").p(str, iF);
        e = iF;
        if (a) {
            Log.d("LocalAdsManager", "markStartTime " + e);
        }
    }

    public static void l(boolean z) {
        if (!c) {
            sg9.e("visha_local_ad").m("local_ad_disable_show", z);
        }
        c = z;
    }

    public AdItemBean b() {
        if (c || !d || !g) {
            return null;
        }
        AdItemBean adItemBean = new AdItemBean();
        adItemBean.isLocalAd = true;
        adItemBean.localAdResourceId = R.drawable.re_local_banner_ad;
        adItemBean.setAdSourceType(2);
        if (a) {
            Log.e("LocalAdsManager", "getLocalAudioBannerAdAd " + adItemBean);
        }
        return adItemBean;
    }

    public AdItemBean c() {
        if (c) {
            return null;
        }
        boolean zH = h();
        d = zH;
        n(zH);
        m(d);
        if (!d) {
            return null;
        }
        AdItemBean adItemBean = new AdItemBean();
        adItemBean.isLocalAd = true;
        adItemBean.localAdResourceId = R.drawable.re_local_splash_ad;
        adItemBean.setAdSourceType(2);
        adItemBean.setDuration(3L);
        if (a) {
            Log.e("LocalAdsManager", "getLocalSplashAd " + adItemBean);
        }
        return adItemBean;
    }

    public AdItemBean d() {
        if (c || !d || !f) {
            return null;
        }
        AdItemBean adItemBean = new AdItemBean();
        adItemBean.isLocalAd = true;
        adItemBean.localAdResourceId = R.drawable.re_local_banner_ad;
        adItemBean.setAdSourceType(2);
        if (a) {
            Log.e("LocalAdsManager", "getLocalVideoBannerAdAd " + adItemBean);
        }
        return adItemBean;
    }

    public AdItemBean e() {
        return null;
    }

    public void m(boolean z) {
        g = z;
    }

    public void n(boolean z) {
        f = z;
    }
}
