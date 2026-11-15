package com.mbridge.msdk.foundation.tools;

import android.content.ContentResolver;
import android.content.Context;
import android.os.Build;
import android.provider.Settings;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.mbsignalcommon.webEnvCheck.WebEnvCheckEntry;
import org.json.JSONObject;

public class f {

    public static volatile String f34895a = null;

    public static String f34896b = null;

    public static boolean f34897c = false;

    public static int f34898d = 0;

    private static String f34899e = "";

    private static boolean f34900f = false;

    private static String f34901g = "";

    private static boolean f34902h;

    private static boolean f34903i;

    class a implements Runnable {

        final Context f34904a;

        a(Context context) {
            this.f34904a = context;
        }

        @Override
        public void run() {
            if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_DEVICE_ID) && com.mbridge.msdk.foundation.controller.authoritycontroller.b.i()) {
                try {
                    AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(this.f34904a);
                    f.a(advertisingIdInfo.getId());
                    f.f34898d = advertisingIdInfo.isLimitAdTrackingEnabled() ? 1 : 0;
                    f.b(this.f34904a, advertisingIdInfo.getId(), f.f34898d);
                } catch (Exception unused) {
                    o0.d("DomainSameDiTool", "GET ADID ERROR TRY TO GET FROM GOOGLE PLAY APP");
                    try {
                        b.C0470b c0470bA = new b().a(this.f34904a);
                        f.a(c0470bA.a());
                        f.f34898d = c0470bA.b() ? 1 : 0;
                        f.b(this.f34904a, c0470bA.a(), f.f34898d);
                    } catch (Exception unused2) {
                        o0.d("DomainSameDiTool", "GET ADID FROM GOOGLE PLAY APP ERROR");
                    }
                } catch (Throwable th2) {
                    o0.b("DomainSameDiTool", th2.getMessage());
                }
            }
        }
    }

    public static void b(Context context, String str, int i10) {
        try {
            if (y0.b(str)) {
                w0.b(context, MBridgeConstans.SP_GA_ID, str);
            }
            w0.b(context, MBridgeConstans.SP_GA_ID_LIMIT, Integer.valueOf(i10));
        } catch (Exception e10) {
            o0.b("DomainSameDiTool", e10.getMessage());
        }
    }

    public static String c() {
        if (!com.mbridge.msdk.foundation.controller.authoritycontroller.c.l() || !com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_DEVICE_ID)) {
            return "";
        }
        if (!com.mbridge.msdk.foundation.controller.authoritycontroller.b.i()) {
            return TextUtils.isEmpty(f34896b) ? "" : f34896b;
        }
        if (!TextUtils.isEmpty(f34896b)) {
            if (com.mbridge.msdk.foundation.controller.authoritycontroller.b.j()) {
                return f34896b;
            }
            return f34898d == 0 ? f34896b : "";
        }
        if (!f34897c) {
            a(com.mbridge.msdk.foundation.controller.c.m().d());
            f34897c = true;
        }
        return "";
    }

    public static String d() {
        if (!com.mbridge.msdk.foundation.controller.authoritycontroller.c.l() || !com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_DEVICE_ID)) {
            return "";
        }
        if (!com.mbridge.msdk.foundation.controller.authoritycontroller.b.i()) {
            return TextUtils.isEmpty(f34895a) ? "" : f34895a;
        }
        if (!TextUtils.isEmpty(f34895a)) {
            if (com.mbridge.msdk.foundation.controller.authoritycontroller.b.j()) {
                return f34895a;
            }
            return f34898d == 0 ? f34895a : "";
        }
        k0.k();
        if (!f34897c) {
            a(com.mbridge.msdk.foundation.controller.c.m().d());
            f34897c = true;
        }
        return TextUtils.isEmpty(f34895a) ? "" : f34895a;
    }

    public static String e() {
        if (TextUtils.isEmpty(f34901g) && !f34900f) {
            b();
        }
        return f34901g;
    }

    public static int a() {
        return f34898d;
    }

    public static void a(int i10) {
        f34898d = i10;
    }

    public static void a(Context context) {
        new Thread(new a(context)).start();
    }

    public static String b() {
        if (!com.mbridge.msdk.foundation.controller.authoritycontroller.c.l() || !com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_DEVICE_ID)) {
            return "";
        }
        if (f34900f) {
            return f34899e;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            try {
                ContentResolver contentResolver = com.mbridge.msdk.foundation.controller.c.m().d().getContentResolver();
                int i10 = Settings.Secure.getInt(contentResolver, "limit_ad_tracking");
                String string = Settings.Secure.getString(contentResolver, "advertising_id");
                jSONObject.put(NotificationCompat.CATEGORY_STATUS, i10);
                jSONObject.put("amazonId", string);
                String string2 = jSONObject.toString();
                if (!TextUtils.isEmpty(string2)) {
                    f34901g = string2;
                    f34899e = i0.b(string2);
                }
            } catch (Settings.SettingNotFoundException e10) {
                o0.b("DomainSameDiTool", e10.getMessage());
            }
        } catch (Throwable th2) {
            o0.b("DomainSameDiTool", th2.getMessage());
        }
        f34900f = true;
        return f34899e;
    }

    public static void a(String str) {
        f34896b = i0.b(str);
        f34895a = str;
    }

    public static void c(Context context) {
        if (context == null) {
            return;
        }
        try {
            WebEnvCheckEntry.class.getMethod("check", Context.class).invoke(WebEnvCheckEntry.class.newInstance(), context);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static boolean b(Context context) {
        try {
            if (f34903i) {
                return f34902h;
            }
            if (Build.VERSION.SDK_INT >= 30) {
                f34902h = context.getPackageManager().checkPermission(i0.a("DkP3hrKuHoPMH+zwL+fALkK/WQc5x5zH+TcincKNNVfWNVJcVM=="), context.getPackageName()) == 0;
            } else {
                f34902h = true;
            }
            f34903i = true;
            return f34902h;
        } catch (Exception unused) {
            f34902h = false;
        }
    }
}
