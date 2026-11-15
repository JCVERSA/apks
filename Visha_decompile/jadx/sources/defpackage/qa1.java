package defpackage;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.LocaleList;
import android.text.TextUtils;
import android.util.Log;
import com.cloud.tupdate.bean.UpdateContent;
import com.cloud.tupdate.net.utils.LogUtil;
import com.just.agentweb.DefaultWebClient;
import com.transsion.core.deviceinfo.DeviceInfo;
import java.util.Locale;

public final class qa1 {
    public static int d;
    public static Locale e;
    public static final qa1 a = new qa1();
    public static String b = "";
    public static String c = "";
    public static String f = "";
    public static String g = "";
    public static String h = "";
    public static String i = "";
    public static String j = "";
    public static String k = "";

    public final void a(Context context, Dialog dialog, UpdateContent updateContent) {
        if (updateContent == null) {
            return;
        }
        try {
            if (y45.e(updateContent.getForce(), Boolean.FALSE) && dialog != null) {
                dialog.dismiss();
            }
        } catch (Exception e2) {
            LogUtil.a.d(e2);
        }
    }

    public final String b(Context context) {
        if (context == null) {
            return "";
        }
        try {
            if (b.length() == 0) {
                String str = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
                y45.i(str, "packageInfo.versionName");
                b = str;
            }
        } catch (Exception e2) {
            o6.j().a(Log.getStackTraceString(e2));
        }
        return b;
    }

    public final String c() {
        if (h.length() == 0) {
            String str = Build.BRAND;
            if (str == null || j1a.o0(str)) {
                str = "";
            } else {
                y45.i(str, "BRAND");
            }
            h = str;
        }
        return h;
    }

    public final String d() {
        if (f.length() == 0) {
            try {
                Class<?> cls = Class.forName("android.os.SystemProperties");
                Object objInvoke = cls.getMethod("get", String.class, String.class).invoke(cls, "persist.sys.oobe_country", "unknown");
                if (objInvoke == null) {
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.String");
                }
                f = (String) objInvoke;
                try {
                    if (j1a.o0(f) || y45.e("unknown", f)) {
                        Locale localeE = e();
                        f = String.valueOf(localeE == null ? null : localeE.getCountry());
                    }
                } catch (Exception e2) {
                    o6.j().a(Log.getStackTraceString(e2));
                    f = "";
                }
            } catch (Exception e3) {
                o6.j().a(Log.getStackTraceString(e3));
            }
        }
        return f;
    }

    public final Locale e() {
        if (e == null) {
            try {
                e = LocaleList.getDefault().get(0);
            } catch (Exception e2) {
                e = Locale.getDefault();
                o6.j().a(Log.getStackTraceString(e2));
            }
        }
        return e;
    }

    public final String f() {
        String strSubstring;
        try {
            if (g.length() == 0) {
                String strF = DeviceInfo.f();
                if (TextUtils.isEmpty(strF) || strF.length() < 3) {
                    strSubstring = "";
                } else {
                    y45.i(strF, "deviceOperator");
                    strSubstring = strF.substring(0, 3);
                    y45.i(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
                }
                g = strSubstring;
            }
        } catch (Exception e2) {
            o6.j().a(Log.getStackTraceString(e2));
        }
        return g;
    }

    public final String g() {
        if (j.length() == 0) {
            String osType = olb.getOsType();
            y45.i(osType, "getOsType()");
            j = osType;
        }
        return j;
    }

    public final PackageInfo h(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
        } catch (PackageManager.NameNotFoundException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public final String i() {
        String language;
        if (k.length() == 0) {
            Locale localeE = e();
            String str = "";
            if (localeE != null && (language = localeE.getLanguage()) != null) {
                str = language;
            }
            k = str;
        }
        return k;
    }

    public final int j(Context context) {
        y45.j(context, "context");
        try {
            if (d == 0) {
                PackageInfo packageInfoH = h(context);
                d = packageInfoH == null ? -1 : packageInfoH.versionCode;
            }
        } catch (Exception e2) {
            o6.j().a(Log.getStackTraceString(e2));
        }
        return d;
    }

    public final String k(Context context) {
        String str;
        y45.j(context, "context");
        if (c.length() == 0) {
            PackageInfo packageInfoH = h(context);
            if (packageInfoH != null) {
                str = packageInfoH.versionName;
                y45.i(str, "packageInfo.versionName");
            } else {
                str = "";
            }
            c = str;
        }
        return c;
    }

    public final void l(Context context, String str) {
        y45.j(context, "context");
        if (str == null || j1a.o0(str)) {
            return;
        }
        if (g1a.R(str, DefaultWebClient.HTTP_SCHEME, false, 2, null) || g1a.R(str, "https://", false, 2, null)) {
            n(context, str);
            return;
        }
        try {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
            if (!(context instanceof Activity)) {
                intent.addFlags(268435456);
            }
            context.startActivity(intent);
        } catch (Exception unused) {
            o(context, false);
        }
    }

    public final void m(UpdateContent updateContent, ww4 ww4Var, Dialog dialog) {
        Context context;
        y45.j(ww4Var, "updateManager");
        String updateUrl = updateContent == null ? null : updateContent.getUpdateUrl();
        if (updateUrl == null || j1a.o0(updateUrl) || (context = ww4Var.getContext()) == null) {
            return;
        }
        if (!g1a.R(updateUrl, DefaultWebClient.HTTP_SCHEME, false, 2, null) && !g1a.R(updateUrl, "https://", false, 2, null)) {
            p(context, updateContent, dialog);
        } else {
            a(context, dialog, updateContent);
            n(context, updateUrl);
        }
    }

    public final void n(Context context, String str) {
        if (context == null || str == null || j1a.o0(str)) {
            return;
        }
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(Uri.parse(str));
            if (!(context instanceof Activity)) {
                intent.addFlags(268435456);
            }
            context.startActivity(intent);
        } catch (Exception e2) {
            LogUtil.a.d(e2);
        }
    }

    public final void o(Context context, boolean z) {
        Bundle bundle = new Bundle();
        bundle.putString("page", z ? "upgrade" : "score");
        bundle.putString("action", z ? "upgrade_click" : "score_click");
        bundle.putString("button_type", z ? "upgrade" : "score");
        bundle.putString("action_url", "http://www.palmplaystore.com/");
        vk.a.z("open_palmstore_home", bundle);
        n(context, "http://www.palmplaystore.com/");
    }

    public final void p(Context context, UpdateContent updateContent, Dialog dialog) {
        String updateUrl = updateContent == null ? null : updateContent.getUpdateUrl();
        if (updateUrl == null || j1a.o0(updateUrl) || context == null) {
            return;
        }
        try {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(updateUrl));
            if (!(context instanceof Activity)) {
                intent.addFlags(268435456);
            }
            a(context, dialog, updateContent);
            context.startActivity(intent);
        } catch (Exception unused) {
            o(context, true);
        }
    }

    public final String q() {
        if (i.length() == 0) {
            String str = Build.VERSION.RELEASE;
            if (str == null || j1a.o0(str)) {
                str = "";
            } else {
                y45.i(str, "RELEASE");
            }
            i = str;
        }
        return i;
    }
}
