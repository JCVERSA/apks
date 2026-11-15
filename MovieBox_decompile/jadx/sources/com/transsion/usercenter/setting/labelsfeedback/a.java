package com.transsion.usercenter.setting.labelsfeedback;

import android.content.res.Resources;

public abstract class a {
    public static final int a(float f10) {
        return (int) (((double) (f10 * Resources.getSystem().getDisplayMetrics().density)) + 0.5d);
    }

    public static final int b(int i10) {
        return (int) (((double) (i10 * Resources.getSystem().getDisplayMetrics().density)) + 0.5d);
    }
}
