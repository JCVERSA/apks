package com.bytedance.sdk.component.adexpress.EjP;

import android.content.Context;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import androidx.annotation.NonNull;
import com.bytedance.sdk.component.utils.ib;
import java.lang.reflect.Method;
import java.util.Locale;

public class Jcg {
    private static boolean Sj;

    private static float EjP(Context context) {
        try {
            if (Sj) {
                Class<?> clsLoadClass = context.getClassLoader().loadClass("android.util.DisplayMetrics");
                Method declaredMethod = clsLoadClass.getDeclaredMethod("getDeviceDensity", null);
                declaredMethod.setAccessible(true);
                return ((Integer) declaredMethod.invoke(clsLoadClass, null)).intValue() / 160.0f;
            }
        } catch (Exception unused) {
        }
        return context.getResources().getDisplayMetrics().density;
    }

    public static int Sj(float f10, float f11, float f12, float f13) {
        return (((int) ((f10 * 255.0f) + 0.5f)) << 24) | (((int) ((f11 * 255.0f) + 0.5f)) << 16) | (((int) ((f12 * 255.0f) + 0.5f)) << 8) | ((int) ((f13 * 255.0f) + 0.5f));
    }

    public static float TKC(Context context, float f10) {
        if (context == null) {
            context = com.bytedance.sdk.component.adexpress.Sj.Sj.Sj.Sj().TKC().sP();
        }
        return f10 * EjP(context);
    }

    public static int sP(Context context, float f10) {
        if (context == null) {
            context = com.bytedance.sdk.component.adexpress.Sj.Sj.Sj.Sj().TKC().sP();
        }
        float fEjP = EjP(context);
        if (fEjP <= 0.0f) {
            fEjP = 1.0f;
        }
        return (int) ((f10 / fEjP) + 0.5f);
    }

    public static float Sj(Context context, float f10) {
        if (context == null) {
            context = com.bytedance.sdk.component.adexpress.Sj.Sj.Sj.Sj().TKC().sP();
        }
        return (f10 * EjP(context)) + 0.5f;
    }

    public static String TKC(@NonNull Context context) {
        String language;
        Locale locale;
        try {
            if (Build.VERSION.SDK_INT >= 24) {
                locale = ib.sP(context).getConfiguration().getLocales().get(0);
            } else {
                locale = Locale.getDefault();
            }
            language = locale.getLanguage();
            try {
                if (locale.getCountry().equals("TW")) {
                    language = "zhHant";
                }
            } catch (Throwable unused) {
            }
        } catch (Throwable unused2) {
            language = "";
        }
        return Sj(language);
    }

    public static int sP(Context context) {
        if (context == null) {
            context = com.bytedance.sdk.component.adexpress.Sj.Sj.Sj.Sj().TKC().sP();
        }
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getRealMetrics(displayMetrics);
        return displayMetrics.heightPixels;
    }

    public static int Sj(Context context) {
        if (context == null) {
            context = com.bytedance.sdk.component.adexpress.Sj.Sj.Sj.Sj().TKC().sP();
        }
        return context.getResources().getDisplayMetrics().widthPixels;
    }

    private static String Sj(String str) {
        str.hashCode();
        switch (str) {
            case "ar":
                return "aa";
            case "ja":
                return "japan";
            case "ko":
                return "korea";
            case "ms":
                return "my";
            case "zh":
                return "cn";
            default:
                return str;
        }
    }
}
