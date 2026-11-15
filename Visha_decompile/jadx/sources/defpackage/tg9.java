package defpackage;

import android.content.Context;
import android.content.SharedPreferences;

public abstract class tg9 {
    public static void a(Context context, SharedPreferences.Editor editor, String str) {
        throw new IllegalStateException("world-readable shared preferences should only be used by apk");
    }
}
