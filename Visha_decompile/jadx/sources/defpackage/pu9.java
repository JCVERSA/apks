package defpackage;

import android.app.Activity;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public abstract class pu9 {
    public static Method a;
    public static Method b;
    public static Field c;
    public static int d;

    static {
        try {
            a = Activity.class.getMethod("setStatusBarDarkIcon", Integer.TYPE);
        } catch (NoSuchMethodException unused) {
        }
        try {
            b = Activity.class.getMethod("setStatusBarDarkIcon", Boolean.TYPE);
        } catch (NoSuchMethodException unused2) {
        }
        try {
            c = WindowManager.LayoutParams.class.getField("statusBarColor");
        } catch (NoSuchFieldException unused3) {
        }
        try {
            d = View.class.getField("SYSTEM_UI_FLAG_LIGHT_STATUS_BAR").getInt(null);
        } catch (IllegalAccessException | NoSuchFieldException unused4) {
        }
    }

    public static boolean a(int i, int i2) {
        return j(i) < i2;
    }

    public static void b(Window window, String str, boolean z) {
        if (window != null) {
            Class<?> cls = window.getClass();
            try {
                Class<?> cls2 = Class.forName("android.view.MiuiWindowManager$LayoutParams");
                int i = cls2.getField(str).getInt(cls2);
                Class cls3 = Integer.TYPE;
                Method method = cls.getMethod("setExtraFlags", cls3, cls3);
                if (z) {
                    method.invoke(window, Integer.valueOf(i), Integer.valueOf(i));
                } else {
                    method.invoke(window, 0, Integer.valueOf(i));
                }
            } catch (Exception unused) {
            }
        }
    }

    public static void c(Window window, int i) {
        WindowManager.LayoutParams attributes = window.getAttributes();
        Field field = c;
        if (field != null) {
            try {
                if (field.getInt(attributes) != i) {
                    c.set(attributes, Integer.valueOf(i));
                    window.setAttributes(attributes);
                }
            } catch (IllegalAccessException e) {
                e.printStackTrace();
            }
        }
    }

    public static void d(Activity activity, int i) {
        Method method = a;
        if (method == null) {
            boolean zA = a(i, 50);
            if (c == null) {
                e(activity, zA);
                return;
            } else {
                f(activity, zA, zA);
                h(activity.getWindow(), i);
                return;
            }
        }
        try {
            method.invoke(activity, Integer.valueOf(i));
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e2) {
            e2.printStackTrace();
        }
    }

    public static void e(Activity activity, boolean z) {
        f(activity, z, true);
    }

    public static void f(Activity activity, boolean z, boolean z2) {
        Method method = b;
        if (method == null) {
            if (z2) {
                i(activity.getWindow(), z);
                return;
            }
            return;
        }
        try {
            method.invoke(activity, Boolean.valueOf(z));
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e2) {
            e2.printStackTrace();
        }
    }

    public static void g(View view, boolean z) {
        int systemUiVisibility = view.getSystemUiVisibility();
        int i = z ? d | systemUiVisibility : (~d) & systemUiVisibility;
        if (i != systemUiVisibility) {
            view.setSystemUiVisibility(i);
        }
    }

    public static void h(Window window, int i) {
        try {
            c(window, i);
            g(window.getDecorView(), true);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void i(Window window, boolean z) {
        g(window.getDecorView(), z);
        c(window, 0);
    }

    public static int j(int i) {
        return (((((i & 16711680) >> 16) * 38) + (((65280 & i) >> 8) * 75)) + ((i & 255) * 15)) >> 7;
    }
}
