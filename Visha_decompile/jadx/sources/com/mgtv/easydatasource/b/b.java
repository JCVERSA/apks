package com.mgtv.easydatasource.b;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import java.lang.reflect.Field;

public class b {
    public static String a(Context context) {
        try {
            if (context == null) {
                return Build.CPU_ABI;
            }
            ApplicationInfo applicationInfo = context.getApplicationInfo();
            Field declaredField = applicationInfo.getClass().getDeclaredField("primaryCpuAbi");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(applicationInfo);
            if ((obj instanceof String) && !"".equals(((String) obj).trim())) {
                return (String) obj;
            }
            return Build.CPU_ABI;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
