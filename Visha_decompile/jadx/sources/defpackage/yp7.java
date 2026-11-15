package defpackage;

import androidx.core.graphics.ColorUtils;

public abstract class yp7 {
    public static boolean a(int i) {
        return i != 0 && ColorUtils.calculateLuminance(i) > 0.5d;
    }
}
