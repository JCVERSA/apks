package defpackage;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Bundle;

public final class vl4 {
    public static volatile boolean b;
    public static final vl4 a = new vl4();
    public static volatile String c = "";

    public static final String a(String str) {
        y45.j(str, "baseName");
        return str + a.h();
    }

    public static final String b(String str) {
        y45.j(str, "baseName");
        return str + a.h();
    }

    public static final void f(Context context) {
        if (b || context == null) {
            return;
        }
        vl4 vl4Var = a;
        synchronized (vl4Var) {
            if (b) {
                return;
            }
            c = vl4Var.e(context, "com.cloud.hisavana.sdk.HSDataPath", "");
            b = true;
            zfb zfbVar = zfb.a;
        }
    }

    public static final boolean g() {
        a.c();
        return c.length() > 0;
    }

    public final void c() {
        if (b) {
            return;
        }
        f(ul4.a());
    }

    public final String d(Context context, String str) {
        return y45.e(context.getPackageName(), "com.transsnet.store") ? "mini_ac" : str;
    }

    public final String e(Context context, String str, String str2) {
        if (context == null || str.length() == 0) {
            return str2;
        }
        Context applicationContext = context.getApplicationContext();
        try {
            ApplicationInfo applicationInfo = applicationContext.getPackageManager().getApplicationInfo(applicationContext.getPackageName(), 128);
            y45.i(applicationInfo, "getApplicationInfo(...)");
            Bundle bundle = applicationInfo.metaData;
            if (bundle == null) {
                y45.g(applicationContext);
                return d(applicationContext, str2);
            }
            Object obj = bundle.get(str);
            if (!(obj instanceof String)) {
                if (obj != null) {
                    return obj.toString();
                }
                y45.g(applicationContext);
                return d(applicationContext, str2);
            }
            CharSequence charSequenceD = (CharSequence) obj;
            if (charSequenceD.length() == 0) {
                vl4 vl4Var = a;
                y45.g(applicationContext);
                charSequenceD = vl4Var.d(applicationContext, str2);
            }
            return (String) charSequenceD;
        } catch (Throwable th) {
            ja1.Log().w("HSDataPathHolder", "read meta-data fail: " + th.getMessage());
            y45.g(applicationContext);
            return d(applicationContext, str2);
        }
    }

    public final String h() {
        c();
        if (c.length() == 0) {
            return "";
        }
        return '_' + c;
    }
}
