package defpackage;

import android.text.TextUtils;

public abstract class mq7 {
    public static boolean a(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.matches("^[0-9]{6,15}$");
    }
}
