package com.blankj.utilcode.util;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;

public abstract class a {
    public static Activity a(Context context) {
        if (context == null) {
            return null;
        }
        Activity activityB = b(context);
        if (f(activityB)) {
            return activityB;
        }
        return null;
    }

    public static Activity b(Context context) {
        if (context == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        while (context instanceof ContextWrapper) {
            if (!(context instanceof Activity)) {
                Activity activityC = c(context);
                if (activityC == null) {
                    arrayList.add(context);
                    context = ((ContextWrapper) context).getBaseContext();
                    if (context == null || arrayList.contains(context)) {
                        break;
                    }
                } else {
                    return activityC;
                }
            } else {
                return (Activity) context;
            }
        }
        return null;
    }

    public static Activity c(Context context) {
        if (context != null && context.getClass().getName().equals("com.android.internal.policy.DecorContext")) {
            try {
                Field declaredField = context.getClass().getDeclaredField("mActivityContext");
                declaredField.setAccessible(true);
                return (Activity) ((WeakReference) declaredField.get(context)).get();
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public static List d() {
        return h.i();
    }

    public static Activity e() {
        return h.t();
    }

    public static boolean f(Activity activity) {
        return (activity == null || activity.isFinishing() || activity.isDestroyed()) ? false : true;
    }

    public static boolean g(Context context) {
        return f(a(context));
    }

    public static boolean h(Activity activity) {
        return activity == null || activity.isFinishing() || activity.isDestroyed();
    }

    public static void i(Activity activity) {
        h.I(activity);
    }
}
