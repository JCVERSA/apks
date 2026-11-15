package com.pgl.ssdk;

import android.content.Context;
import android.content.SharedPreferences;

public class u0 {

    private static SharedPreferences f39382a;

    public static String a(Context context, String str) {
        return a(context, str, "");
    }

    public static void b(Context context, String str, String str2) {
        SharedPreferences sharedPreferencesA = a(context);
        if (sharedPreferencesA != null) {
            sharedPreferencesA.edit().putString(str, str2).apply();
        }
    }

    public static String a(Context context, String str, String str2) {
        SharedPreferences sharedPreferencesA = a(context);
        return sharedPreferencesA != null ? sharedPreferencesA.getString(str, str2) : str2;
    }

    public static void b(Context context, String str, int i10) {
        SharedPreferences sharedPreferencesA = a(context);
        if (sharedPreferencesA != null) {
            sharedPreferencesA.edit().putInt(str, i10).apply();
        }
    }

    public static int a(Context context, String str, int i10) {
        SharedPreferences sharedPreferencesA = a(context);
        return sharedPreferencesA != null ? sharedPreferencesA.getInt(str, i10) : i10;
    }

    public static SharedPreferences a(Context context) {
        if (f39382a == null) {
            f39382a = context.getSharedPreferences("ss_config", 0);
        }
        return f39382a;
    }
}
