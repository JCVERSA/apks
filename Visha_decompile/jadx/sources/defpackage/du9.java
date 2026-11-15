package defpackage;

import android.content.Context;
import android.content.SharedPreferences;

public abstract class du9 {
    public static SharedPreferences a(Context context, String str) {
        return context.getSharedPreferences("xSpUtil", 0);
    }

    public static String b(Context context, String str, String str2, String str3) {
        return a(context, str).getString(str2, str3);
    }

    public static void c(Context context, String str, String str2, String str3) {
        SharedPreferences.Editor editorEdit = a(context, str).edit();
        editorEdit.putString(str2, str3);
        editorEdit.apply();
    }
}
