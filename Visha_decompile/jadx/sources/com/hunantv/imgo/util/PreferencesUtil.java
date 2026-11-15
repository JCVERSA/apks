package com.hunantv.imgo.util;

import android.content.SharedPreferences;
import com.hunantv.imgo.BaseApplication;

public final class PreferencesUtil {
    public static String a = "DATA_RAW";
    public static String b = "MGTVCommon";
    public static String c = "ERROR";

    public static boolean a(String str, String str2) {
        SharedPreferences sharedPreferencesB = b(b);
        if (sharedPreferencesB == null) {
            return false;
        }
        SharedPreferences.Editor editorEdit = sharedPreferencesB.edit();
        editorEdit.putString(str, str2);
        return a(editorEdit);
    }

    public static void b(String str, String str2) {
        SharedPreferences sharedPreferencesB = b(b);
        if (sharedPreferencesB != null) {
            SharedPreferences.Editor editorEdit = sharedPreferencesB.edit();
            editorEdit.putString(str, str2);
            editorEdit.apply();
        }
    }

    public static String c(String str, String str2) {
        SharedPreferences sharedPreferencesB = b(b);
        return sharedPreferencesB == null ? str2 : sharedPreferencesB.getString(str, str2);
    }

    public static boolean putInt(String str, int i) {
        SharedPreferences sharedPreferencesB = b(b);
        if (sharedPreferencesB == null) {
            return false;
        }
        SharedPreferences.Editor editorEdit = sharedPreferencesB.edit();
        editorEdit.putInt(str, i);
        return a(editorEdit);
    }

    public static String a(String str) {
        return c(str, null);
    }

    public static long b(String str, long j) {
        SharedPreferences sharedPreferencesB = b(b);
        return sharedPreferencesB != null ? sharedPreferencesB.getLong(str, j) : j;
    }

    public static int a(String str, int i) {
        SharedPreferences sharedPreferencesB = b(b);
        return sharedPreferencesB != null ? sharedPreferencesB.getInt(str, i) : i;
    }

    public static boolean b(String str, boolean z) {
        SharedPreferences sharedPreferencesB = b(b);
        return sharedPreferencesB != null ? sharedPreferencesB.getBoolean(str, z) : z;
    }

    public static boolean a(String str, long j) {
        SharedPreferences sharedPreferencesB = b(b);
        if (sharedPreferencesB == null) {
            return false;
        }
        SharedPreferences.Editor editorEdit = sharedPreferencesB.edit();
        editorEdit.putLong(str, j);
        return a(editorEdit);
    }

    private static SharedPreferences b(String str) {
        if (BaseApplication.getContext() == null) {
            return null;
        }
        try {
            return BaseApplication.getContext().getSharedPreferences(str, 0);
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public static boolean a(String str, boolean z) {
        SharedPreferences sharedPreferencesB = b(b);
        if (sharedPreferencesB == null) {
            return false;
        }
        SharedPreferences.Editor editorEdit = sharedPreferencesB.edit();
        editorEdit.putBoolean(str, z);
        return a(editorEdit);
    }

    private static boolean a(SharedPreferences.Editor editor) {
        try {
            return editor.commit();
        } catch (Exception unused) {
            return false;
        }
    }
}
