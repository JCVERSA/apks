package com.transsion.postdetail.util;

import android.app.Activity;
import android.view.Window;

public final class s {

    public static final s f48087a = new s();

    private s() {
    }

    public final String a(Integer num) {
        int iIntValue = num != null ? num.intValue() : 0;
        if (1 > iIntValue || iIntValue >= 10) {
            return String.valueOf(iIntValue);
        }
        return "0" + iIntValue;
    }

    public final void b(Activity activity, boolean z10) {
        Window window = activity != null ? activity.getWindow() : null;
        if (z10) {
            if (window != null) {
                window.addFlags(128);
            }
        } else if (window != null) {
            window.clearFlags(128);
        }
    }
}
