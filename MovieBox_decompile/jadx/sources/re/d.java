package re;

import android.text.TextUtils;
import android.util.Log;

public abstract class d {
    public static void a(String str) {
        if (oe.c.f67807a.booleanValue()) {
            TextUtils.isEmpty(str);
        }
    }

    public static void b(String str, Exception exc) {
        if ((!oe.c.f67807a.booleanValue() || TextUtils.isEmpty(str)) && exc == null) {
            return;
        }
        Log.e("OMIDLIB", str, exc);
    }
}
