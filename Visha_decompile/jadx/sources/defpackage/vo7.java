package defpackage;

import android.content.Context;
import android.content.SharedPreferences;

public abstract class vo7 {
    public static void a(Context context) {
        ao7 ao7Var = ao7.a.a;
        ao7Var.d(context, "", "");
        SharedPreferences.Editor editorEdit = context.getApplicationContext().getSharedPreferences("AccountPrefs", 0).edit();
        editorEdit.putBoolean("is_logged_in", false);
        editorEdit.apply();
        if (ao7Var.j(context) != null) {
            int i = am7.a;
            go7.a.a.getClass();
        }
        ao7Var.b(context);
        go7.a.a.getClass();
    }
}
