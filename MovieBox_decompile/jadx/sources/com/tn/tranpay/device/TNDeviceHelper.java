package com.tn.tranpay.device;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.provider.Settings;
import android.text.TextUtils;
import com.tencent.mmkv.MMKV;
import com.tn.tranpay.TranPay;
import java.util.UUID;
import kh.b;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public final class TNDeviceHelper {

    public static final TNDeviceHelper f40534a = new TNDeviceHelper();

    private static final Lazy f40535b = LazyKt.b(new Function0<MMKV>() {
        @Override
        public final MMKV invoke() {
            return MMKV.I("tran_v_show");
        }
    });

    private static String f40536c;

    private static String f40537d;

    private static String f40538e;

    private TNDeviceHelper() {
    }

    private final MMKV e() {
        Object value = f40535b.getValue();
        Intrinsics.g(value, "<get-tranMmkv>(...)");
        return (MMKV) value;
    }

    public final void a(Context context) {
        Intrinsics.h(context, "context");
        if (!(context instanceof Application)) {
            System.out.println((Object) "please pass in application to avoid Service not registered exception ");
            return;
        }
        String string = e().getString("sdk_ga_id", "");
        if (TextUtils.isEmpty(string)) {
            Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
            intent.setPackage("com.google.android.gms");
            b.f63991c.a(context, intent);
        } else {
            System.out.println((Object) ("gid has get gid " + string));
        }
    }

    public final String b() {
        if (TextUtils.isEmpty(f40536c)) {
            f40536c = e().getString("sdk_android_id", "");
        }
        String string = f40536c;
        if (TextUtils.isEmpty(string)) {
            try {
                string = Settings.System.getString(TranPay.f40491a.d().getContentResolver(), "android_id");
            } catch (Exception e10) {
                lh.a.e(lh.a.f65699a, "Failed to get Android ID: " + e10.getMessage(), null, 2, null);
                string = "";
            }
        }
        return string == null ? "" : string;
    }

    public final String c() {
        String str = "";
        if (TextUtils.isEmpty(f40538e)) {
            f40538e = e().getString("sdk_device_id", "");
        }
        String strValueOf = String.valueOf(f40538e);
        if (TextUtils.isEmpty(f40536c)) {
            f40536c = e().getString("sdk_android_id", "");
        }
        String strValueOf2 = String.valueOf(f40536c);
        if (!TextUtils.isEmpty(strValueOf)) {
            return strValueOf;
        }
        if (!TextUtils.isEmpty(strValueOf2)) {
            String strA = a.f40539a.a(strValueOf2);
            g(strA);
            return strA;
        }
        try {
            String string = Settings.System.getString(TranPay.f40491a.d().getContentResolver(), "android_id");
            Intrinsics.g(string, "{\n            // 使用 Tran…D\n            )\n        }");
            str = string;
        } catch (Exception e10) {
            lh.a.e(lh.a.f65699a, "Failed to get Android ID: " + e10.getMessage(), null, 2, null);
        }
        if (!TextUtils.isEmpty(str) && !Intrinsics.c(str, "9774d56d682e549c")) {
            String strA2 = a.f40539a.a(str);
            g(strA2);
            f(str);
            return strA2;
        }
        String string2 = UUID.randomUUID().toString();
        Intrinsics.g(string2, "randomUUID().toString()");
        String strA3 = a.f40539a.a(string2);
        g(strA3);
        return strA3;
    }

    public final String d() {
        if (TextUtils.isEmpty(f40537d)) {
            f40537d = e().getString("sdk_ga_id", "");
        }
        String strValueOf = String.valueOf(f40537d);
        if (!TextUtils.isEmpty(strValueOf)) {
            return strValueOf;
        }
        String strB = b();
        if (!TextUtils.isEmpty(strB)) {
            return strB;
        }
        String string = UUID.randomUUID().toString();
        Intrinsics.g(string, "randomUUID().toString()");
        return string;
    }

    public final void f(String androidId) {
        Intrinsics.h(androidId, "androidId");
        e().putString("sdk_android_id", androidId);
    }

    public final void g(String deviceId) {
        Intrinsics.h(deviceId, "deviceId");
        e().putString("sdk_device_id", deviceId);
    }

    public final void h(String gid) {
        Intrinsics.h(gid, "gid");
        e().putString("sdk_ga_id", gid);
    }
}
