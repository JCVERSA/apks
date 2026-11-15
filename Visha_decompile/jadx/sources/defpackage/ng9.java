package defpackage;

import android.content.Context;
import android.content.SharedPreferences;

public abstract class ng9 {
    public static synchronized long a(Context context, String str, String str2) {
        return context.getSharedPreferences(str, 0).getLong(str2, 0L);
    }

    public static synchronized SharedPreferences b(Context context, String str) {
        return context.getSharedPreferences(str, 0);
    }

    public static String c(Context context) {
        return context.getSharedPreferences("MGMI_SSP_ID_SP", 0).getString("MGMI_SSP_ID_KEY", "");
    }

    public static synchronized String d(Context context, String str, String str2) {
        return context.getSharedPreferences(str, 0).getString(str2, "");
    }

    public static synchronized void e(Context context, String str, String str2, long j) {
        SharedPreferences.Editor editorEdit = context.getSharedPreferences(str, 0).edit();
        editorEdit.putLong(str2, j);
        editorEdit.commit();
    }

    public static void f(Context context, String str) {
        SharedPreferences.Editor editorEdit = context.getSharedPreferences("MGMI_SSP_ID_SP", 0).edit();
        editorEdit.putString("MGMI_SSP_ID_KEY", str);
        editorEdit.commit();
    }

    public static synchronized void g(Context context, String str, String str2, String str3) {
        SharedPreferences.Editor editorEdit = context.getSharedPreferences(str, 0).edit();
        editorEdit.putString(str2, str3);
        editorEdit.commit();
    }

    public static synchronized boolean h(Context context, String str, String str2) {
        return context.getSharedPreferences(str, 0).edit().remove(str2).commit();
    }
}
