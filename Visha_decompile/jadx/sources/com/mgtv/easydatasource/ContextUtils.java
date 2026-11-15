package com.mgtv.easydatasource;

import android.content.Context;
import java.lang.reflect.Method;

public class ContextUtils {
    private static Context applicationContext;

    private static Object getActivityThread() {
        try {
            Method declaredMethod = Class.forName("android.app.ActivityThread").getDeclaredMethod("currentActivityThread", null);
            declaredMethod.setAccessible(true);
            return declaredMethod.invoke(null, null);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static Context getApplicationContext() {
        Context context = applicationContext;
        if (context != null) {
            return context;
        }
        Object activityThread = getActivityThread();
        if (activityThread != null) {
            try {
                Method declaredMethod = activityThread.getClass().getDeclaredMethod("getApplication", null);
                declaredMethod.setAccessible(true);
                applicationContext = (Context) declaredMethod.invoke(activityThread, null);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return applicationContext;
    }

    public static String getPackageName() {
        try {
            Context applicationContext2 = getApplicationContext();
            return applicationContext2 != null ? applicationContext2.getPackageName() : "";
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }
}
