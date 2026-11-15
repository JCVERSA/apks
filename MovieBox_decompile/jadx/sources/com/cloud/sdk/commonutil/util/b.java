package com.cloud.sdk.commonutil.util;

import android.text.TextUtils;
import java.text.SimpleDateFormat;
import java.util.Date;

public abstract class b {

    private static String f22515a;

    public static String a() {
        if (TextUtils.isEmpty(f22515a) && e.a().getApplicationContext() != null) {
            try {
                f22515a = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss SSS Z").format(new Date(e.a().getApplicationContext().getPackageManager().getPackageInfo(e.a().getApplicationContext().getPackageName(), 0).firstInstallTime));
            } catch (Exception e10) {
                c.Log().d("ssp", "get installTime is error: " + e10.getMessage());
            }
        }
        return f22515a;
    }
}
