package com.blankj.utilcode.util;

import android.content.res.Resources;
import android.util.DisplayMetrics;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public abstract class AdaptScreenUtils {

    private static List f19386a;

    private static void b(Resources resources, float f10) {
        resources.getDisplayMetrics().xdpi = f10;
        Utils.a().getResources().getDisplayMetrics().xdpi = f10;
        d(resources, f10);
    }

    private static void c(Resources resources, float f10) {
        Iterator it = f19386a.iterator();
        while (it.hasNext()) {
            try {
                DisplayMetrics displayMetrics = (DisplayMetrics) ((Field) it.next()).get(resources);
                if (displayMetrics != null) {
                    displayMetrics.xdpi = f10;
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    private static void d(Resources resources, float f10) {
        if (f19386a != null) {
            c(resources, f10);
            return;
        }
        f19386a = new ArrayList();
        Class<?> superclass = resources.getClass();
        Field[] declaredFields = superclass.getDeclaredFields();
        while (declaredFields != null && declaredFields.length > 0) {
            for (Field field : declaredFields) {
                if (field.getType().isAssignableFrom(DisplayMetrics.class)) {
                    field.setAccessible(true);
                    DisplayMetrics displayMetricsE = e(resources, field);
                    if (displayMetricsE != null) {
                        f19386a.add(field);
                        displayMetricsE.xdpi = f10;
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

    private static DisplayMetrics e(Resources resources, Field field) {
        try {
            return (DisplayMetrics) field.get(resources);
        } catch (Exception unused) {
            return null;
        }
    }

    static Runnable f() {
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
}
