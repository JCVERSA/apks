package com.cloud.hisavana.sdk.common.util;

import android.text.TextUtils;
import com.cloud.hisavana.sdk.J0;
import com.cloud.hisavana.sdk.b4;

public class d0 {
    public static int a(int i10, String str, String str2) {
        if (TextUtils.isEmpty(str) && TextUtils.isEmpty(str2)) {
            return 0;
        }
        boolean zY = J0.y(com.cloud.sdk.commonutil.util.e.a(), str, str2);
        if (i10 == 2 && zY) {
            b4.b().d(com.cloud.sdk.commonutil.util.c.LOAD_TAG, "app is exist,not fill");
            return 1;
        }
        if (i10 != 3 || zY) {
            return 0;
        }
        b4.b().d(com.cloud.sdk.commonutil.util.c.LOAD_TAG, "app is not exist,not fill");
        return 2;
    }
}
