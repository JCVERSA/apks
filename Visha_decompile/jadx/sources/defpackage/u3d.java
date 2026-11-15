package defpackage;

import android.content.Context;
import android.content.SharedPreferences;

public abstract class u3d {
    public static String a = "MGMICommon";

    public static SharedPreferences a(Context context, String str) {
        if (context != null) {
            return context.getSharedPreferences(str, 4);
        }
        return null;
    }

    public static String b(Context context, String str, String str2) {
        try {
            SharedPreferences sharedPreferencesA = a(context, a);
            return sharedPreferencesA == null ? str2 : sharedPreferencesA.getString(str, str2);
        } catch (Exception unused) {
            return str2;
        }
    }

    public static boolean c(Context context, String str, int i) {
        SharedPreferences sharedPreferencesA = a(context, a);
        if (sharedPreferencesA == null) {
            return false;
        }
        SharedPreferences.Editor editorEdit = sharedPreferencesA.edit();
        editorEdit.putInt(str, i);
        return e(editorEdit);
    }

    public static boolean d(Context context, String str, boolean z) {
        SharedPreferences sharedPreferencesA = a(context, a);
        if (sharedPreferencesA == null) {
            return false;
        }
        SharedPreferences.Editor editorEdit = sharedPreferencesA.edit();
        editorEdit.putBoolean(str, z);
        return e(editorEdit);
    }

    public static boolean e(SharedPreferences.Editor editor) {
        try {
            return editor.commit();
        } catch (Exception unused) {
            return false;
        }
    }

    public static int f(Context context, String str, int i) {
        SharedPreferences sharedPreferencesA = a(context, a);
        return sharedPreferencesA == null ? i : sharedPreferencesA.getInt(str, i);
    }

    public static boolean g(Context context, String str, String str2) {
        SharedPreferences sharedPreferencesA = a(context, a);
        if (sharedPreferencesA == null) {
            return false;
        }
        SharedPreferences.Editor editorEdit = sharedPreferencesA.edit();
        editorEdit.putString(str, str2);
        return e(editorEdit);
    }

    public static boolean h(Context context, String str, boolean z) {
        SharedPreferences sharedPreferencesA = a(context, a);
        return sharedPreferencesA == null ? z : sharedPreferencesA.getBoolean(str, z);
    }
}
