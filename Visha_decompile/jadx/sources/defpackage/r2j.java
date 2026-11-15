package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;

public abstract class r2j {
    public static String a(Context context, String str, String str2) {
        wd8.l(context);
        Resources resources = context.getResources();
        if (TextUtils.isEmpty(str2)) {
            str2 = izh.a(context);
        }
        return izh.b("google_app_id", resources, str2);
    }
}
