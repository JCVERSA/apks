package xe;

import android.text.TextUtils;
import android.util.Log;

public abstract class d {
    public static void a(String str) {
        if (ue.b.f73058a.booleanValue()) {
            TextUtils.isEmpty(str);
        }
    }

    public static void b(String str, Exception exc) {
        if ((!ue.b.f73058a.booleanValue() || TextUtils.isEmpty(str)) && exc == null) {
            return;
        }
        Log.e("OMIDLIB", str, exc);
    }
}
