package com.blankj.utilcode.util;

import android.content.res.Resources;
import android.util.DisplayMetrics;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public abstract class AdaptScreenUtils {
    public static List a;

    public static void b(Resources resources, float f) {
        resources.getDisplayMetrics().xdpi = f;
        Utils.a().getResources().getDisplayMetrics().xdpi = f;
        d(resources, f);
    }

    public static void c(Resources resources, float f) {
        Iterator it = a.iterator();
        while (it.hasNext()) {
            try {
                DisplayMetrics displayMetrics = (DisplayMetrics) ((Field) it.next()).get(resources);
                if (displayMetrics != null) {
                    displayMetrics.xdpi = f;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public static void d(Resources resources, float f) {
        if (a != null) {
            c(resources, f);
            return;
        }
        a = new ArrayList();
        Class<?> superclass = resources.getClass();
        Field[] declaredFields = superclass.getDeclaredFields();
        while (declaredFields != null && declaredFields.length > 0) {
            for (Field field : declaredFields) {
                if (field.getType().isAssignableFrom(DisplayMetrics.class)) {
                    field.setAccessible(true);
                    DisplayMetrics displayMetricsE = e(resources, field);
                    if (displayMetricsE != null) {
                        a.add(field);
                        displayMetricsE.xdpi = f;
                    }
                }
            }
            superclass = superclass.getSuperclass();
            if (superclass == null) {
                return;
            } else {
                declaredFields = superclass.getDeclaredFields();
            }
        }
    }

    public static DisplayMetrics e(Resources resources, Field field) {
        try {
            return (DisplayMetrics) field.get(resources);
        } catch (Exception unused) {
            return null;
        }
    }

    public static Runnable f() {
        return new Runnable() {
            @Override
            public void run() {
                AdaptScreenUtils.g();
            }
        };
    }

    public static void g() {
        b(Resources.getSystem(), Resources.getSystem().getDisplayMetrics().xdpi);
    }

    public static int h(float f) {
        return (int) (((double) ((f * Utils.a().getResources().getDisplayMetrics().xdpi) / 72.0f)) + 0.5d);
    }
}
