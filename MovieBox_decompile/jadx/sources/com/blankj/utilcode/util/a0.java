package com.blankj.utilcode.util;

import android.content.res.Resources;

public abstract class a0 {

    public interface a {
    }

    public static int a(float f10) {
        return (int) ((f10 * Resources.getSystem().getDisplayMetrics().density) + 0.5f);
    }

    public static int b(float f10) {
        return (int) ((f10 / Resources.getSystem().getDisplayMetrics().density) + 0.5f);
    }

    public static int c(float f10) {
        return (int) ((f10 / Resources.getSystem().getDisplayMetrics().scaledDensity) + 0.5f);
    }

    public static int d(float f10) {
        return (int) ((f10 * Resources.getSystem().getDisplayMetrics().scaledDensity) + 0.5f);
    }
}
