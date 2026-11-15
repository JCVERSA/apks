package com.pgl.ssdk;

import android.content.Context;
import android.text.TextUtils;
import com.vungle.ads.internal.protos.Sdk$SDKError;

public class c1 {

    public static int f39260a = 504;

    public static String f39261b = null;

    public static String f39262c = "";

    static boolean f39263d;

    private static long f39264e;

    private static Context f39265f;

    public static void a(Context context, String str) {
        if (f39265f == null) {
            f39265f = context;
        }
        int i10 = f39260a;
        if (i10 == 102 || i10 == 202 || i10 == 200) {
            return;
        }
        f39264e = System.currentTimeMillis();
        f39263d = false;
        f39261b = str;
        f39260a = 102;
        o0.b(new l0(context, Sdk$SDKError.Reason.MRAID_ERROR_VALUE, null));
    }

    public static void b() {
        Context context = f39265f;
        if (context != null) {
            o0.b(new l0(context, Sdk$SDKError.Reason.MRAID_ERROR_VALUE, null));
            f39260a = 102;
            com.pgl.ssdk.ces.b.h().a();
            x.a();
        }
    }

    public static synchronized String a() {
        try {
            if (TextUtils.isEmpty(f39262c)) {
                f39262c = (String) com.pgl.ssdk.ces.a.meta(303, f39265f, null);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f39262c;
    }

    public static synchronized Object a(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return com.pgl.ssdk.ces.a.meta(Sdk$SDKError.Reason.INVALID_IFA_STATUS_VALUE, f39265f, bArr);
    }
}
