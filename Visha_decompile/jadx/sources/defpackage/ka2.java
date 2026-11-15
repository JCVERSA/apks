package defpackage;

import android.os.Build;
import android.text.TextUtils;

public abstract class ka2 {
    public static boolean a() {
        String str = Build.DEVICE;
        if (TextUtils.isEmpty(str)) {
            return true;
        }
        return str.contains("AD10");
    }

    public static boolean b() {
        String str = Build.DEVICE;
        if (TextUtils.isEmpty(str)) {
            return true;
        }
        return str.contains("AD11");
    }
}
