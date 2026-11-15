package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.text.TextUtils;
import mgtv.qt.c;
import mgtv.qt.f;

public abstract class tid {
    public static String a;

    public static String a() {
        return c(c.j);
    }

    public static String b(Context context) throws Throwable {
        f fVarC = f.c(context);
        String strB = fVarC.b("TruthUid");
        if (!TextUtils.isEmpty(strB)) {
            return strB;
        }
        String strC = c(context);
        fVarC.e("TruthUid", strC);
        return strC;
    }

    public static String c(Context context) {
        if (TextUtils.isEmpty(a)) {
            a = f(context);
        }
        return a;
    }

    public static String d(Context context) {
        try {
            return dpd.a(hld.D(context) + (Build.BRAND + Build.MODEL) + hld.x(context)).toUpperCase();
        } catch (Exception e) {
            e.printStackTrace();
            return dpd.a(hld.x(context)).toUpperCase();
        }
    }

    public static String e(Context context) {
        try {
            return dpd.a(hld.D(context) + (hld.G() + hld.y() + Build.BRAND + Build.CPU_ABI + Build.DEVICE + Build.MANUFACTURER + Build.MODEL + Build.PRODUCT) + hld.x(context) + hld.E()).toUpperCase();
        } catch (Exception e) {
            e.printStackTrace();
            return dpd.a(hld.x(context)).toUpperCase();
        }
    }

    public static String f(Context context) {
        try {
            SharedPreferences sharedPreferences = context.getSharedPreferences("arch", 0);
            SharedPreferences.Editor editorEdit = sharedPreferences.edit();
            y4d.i("");
            String string = sharedPreferences.getString("hbuid", "");
            if (!y4d.i(string)) {
                return string;
            }
            String strD = d(context);
            editorEdit.putString("hbuid", strD).apply();
            return strD;
        } catch (Exception unused) {
            return d(context);
        }
    }
}
