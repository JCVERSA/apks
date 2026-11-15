package tg;

import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.blankj.utilcode.util.Utils;
import com.tencent.mmkv.MMKV;
import java.util.Locale;
import java.util.UUID;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

public final class b {

    public static final b f72740a = new b();

    private static final Lazy f72741b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return b.p();
        }
    });

    private static String f72742c;

    private static String f72743d;

    private static String f72744e;

    private b() {
    }

    public static final MMKV p() {
        return MMKV.I("vshow");
    }

    public final void b(Context context) {
        Intrinsics.h(context, "context");
        if (context instanceof Application) {
            String string = m().getString("apkgaid", "");
            if (TextUtils.isEmpty(string)) {
                Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
                intent.setPackage("com.google.android.gms");
                ug.b.f73065c.a(context, intent);
            } else {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("gid has get gid ");
                sb2.append(string);
            }
        }
    }

    public final String c() {
        if (TextUtils.isEmpty(f72742c)) {
            f72742c = m().getString("apkandroidid", "");
        }
        String string = f72742c;
        if (TextUtils.isEmpty(string)) {
            try {
                Result.Companion companion = Result.INSTANCE;
                Application applicationA = Utils.a();
                string = Settings.System.getString(applicationA != null ? applicationA.getContentResolver() : null, "android_id");
                Result.m453constructorimpl(Unit.f64096a);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m453constructorimpl(ResultKt.a(th2));
            }
        }
        return string == null ? "" : string;
    }

    public final String d() {
        String BRAND = Build.BRAND;
        Intrinsics.g(BRAND, "BRAND");
        return BRAND;
    }

    public final String e() {
        return StringsKt.Q(StringsKt.Q(ArraysKt.c(Build.SUPPORTED_ABIS), "[", "", false, 4, null), "]", "", false, 4, null);
    }

    public final String f() {
        String country = Locale.getDefault().getCountry();
        Intrinsics.g(country, "getCountry(...)");
        return country;
    }

    public final String g() {
        Application applicationA = Utils.a();
        Object systemService = applicationA != null ? applicationA.getSystemService("phone") : null;
        TelephonyManager telephonyManager = systemService instanceof TelephonyManager ? (TelephonyManager) systemService : null;
        String simCountryIso = telephonyManager != null ? telephonyManager.getSimCountryIso() : null;
        if (simCountryIso == null || simCountryIso.length() == 0) {
            if (telephonyManager != null) {
                return telephonyManager.getNetworkCountryIso();
            }
            return null;
        }
        if (telephonyManager != null) {
            return telephonyManager.getSimCountryIso();
        }
        return null;
    }

    public final String h() {
        String string;
        if (TextUtils.isEmpty(f72744e)) {
            f72744e = m().getString("apkdeviceid", "");
        }
        String strValueOf = String.valueOf(f72744e);
        if (TextUtils.isEmpty(f72742c)) {
            f72742c = m().getString("apkandroidid", "");
        }
        String strValueOf2 = String.valueOf(f72742c);
        if (!TextUtils.isEmpty(strValueOf)) {
            return strValueOf;
        }
        if (!TextUtils.isEmpty(strValueOf2)) {
            String strD = wg.a.f74277a.d(strValueOf2);
            r(strD);
            return strD;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            Application applicationA = Utils.a();
            string = Settings.System.getString(applicationA != null ? applicationA.getContentResolver() : null, "android_id");
            Intrinsics.g(string, "getString(...)");
            try {
                Result.m453constructorimpl(Unit.f64096a);
            } catch (Throwable th2) {
                strValueOf2 = string;
                th = th2;
                Result.Companion companion2 = Result.INSTANCE;
                Result.m453constructorimpl(ResultKt.a(th));
                string = strValueOf2;
            }
        } catch (Throwable th3) {
            th = th3;
        }
        if (!TextUtils.isEmpty(string) && !Intrinsics.c(string, "9774d56d682e549c")) {
            String strD2 = wg.a.f74277a.d(string);
            r(strD2);
            q(string);
            return strD2;
        }
        String string2 = UUID.randomUUID().toString();
        Intrinsics.g(string2, "toString(...)");
        String strD3 = wg.a.f74277a.d(string2);
        r(strD3);
        return strD3;
    }

    public final String i() {
        if (TextUtils.isEmpty(f72743d)) {
            f72743d = m().getString("apkgaid", "");
        }
        String strValueOf = String.valueOf(f72743d);
        if (!TextUtils.isEmpty(strValueOf)) {
            return strValueOf;
        }
        String strC = c();
        if (!TextUtils.isEmpty(strC)) {
            return strC;
        }
        String string = UUID.randomUUID().toString();
        Intrinsics.g(string, "toString(...)");
        return string;
    }

    public final String j() {
        String language = Locale.getDefault().getLanguage();
        Intrinsics.e(language);
        return language;
    }

    public final ActivityManager.MemoryInfo k(Context context) {
        Intrinsics.h(context, "context");
        Object systemService = context.getSystemService("activity");
        Intrinsics.f(systemService, "null cannot be cast to non-null type android.app.ActivityManager");
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        ((ActivityManager) systemService).getMemoryInfo(memoryInfo);
        return memoryInfo;
    }

    public final String l() {
        String MODEL = Build.MODEL;
        Intrinsics.g(MODEL, "MODEL");
        return MODEL;
    }

    public final MMKV m() {
        return (MMKV) f72741b.getValue();
    }

    public final String n() {
        String RELEASE = Build.VERSION.RELEASE;
        Intrinsics.g(RELEASE, "RELEASE");
        return RELEASE;
    }

    public final String o() {
        Object systemService = Utils.a().getSystemService("phone");
        Intrinsics.f(systemService, "null cannot be cast to non-null type android.telephony.TelephonyManager");
        String simOperator = ((TelephonyManager) systemService).getSimOperator();
        Intrinsics.g(simOperator, "getSimOperator(...)");
        return simOperator;
    }

    public final void q(String androidId) {
        Intrinsics.h(androidId, "androidId");
        m().putString("apkandroidid", androidId);
    }

    public final void r(String deviceId) {
        Intrinsics.h(deviceId, "deviceId");
        m().putString("apkdeviceid", deviceId);
    }

    public final void s(String gid) {
        Intrinsics.h(gid, "gid");
        m().putString("apkgaid", gid);
    }
}
