package defpackage;

import android.text.TextUtils;
import android.util.Log;

public abstract class t9d {
    public static void a(String str) {
        if (!d3d.a.booleanValue() || TextUtils.isEmpty(str)) {
            return;
        }
        Log.i("OMIDLIB", str);
    }

    public static void b(String str, Exception exc) {
        if ((!d3d.a.booleanValue() || TextUtils.isEmpty(str)) && exc == null) {
            return;
        }
        Log.e("OMIDLIB", str, exc);
    }
}
