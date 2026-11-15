package defpackage;

import android.text.TextUtils;
import android.util.Log;

public abstract class pe5 {
    public static boolean a(String str) {
        return TextUtils.isEmpty(str) || str.equals("\n") || str.equals("\t") || TextUtils.isEmpty(str.trim());
    }

    public static void b(String str, boolean z) {
        if (z) {
            Log.d(str, "╔═══════════════════════════════════════════════════════════════════════════════════════");
        } else {
            Log.d(str, "╚═══════════════════════════════════════════════════════════════════════════════════════");
        }
    }
}
