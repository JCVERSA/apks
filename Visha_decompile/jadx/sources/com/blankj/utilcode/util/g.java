package com.blankj.utilcode.util;

import android.content.res.Resources;

public abstract class g {

    public interface a {
    }

    public static int a(float f) {
        return (int) ((f * Resources.getSystem().getDisplayMetrics().density) + 0.5f);
    }
}
