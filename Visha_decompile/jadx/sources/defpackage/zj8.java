package defpackage;

import android.content.Context;
import android.content.SharedPreferences;

public abstract class zj8 {
    public static SharedPreferences b(Context context) {
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            context = applicationContext;
        }
        return context.getSharedPreferences("com.google.firebase.messaging", 0);
    }

    public static boolean c(Context context) {
        return b(context).getBoolean("proxy_notification_initialized", false);
    }

    public static boolean d(SharedPreferences sharedPreferences, boolean z) {
        return sharedPreferences.contains("proxy_retention") && sharedPreferences.getBoolean("proxy_retention", false) == z;
    }

    public static void f(Context context, boolean z) {
        SharedPreferences.Editor editorEdit = b(context).edit();
        editorEdit.putBoolean("proxy_notification_initialized", z);
        editorEdit.apply();
    }

    public static void g(final Context context, wi4 wi4Var, final boolean z) {
        if (d28.i() && !d(b(context), z)) {
            wi4Var.k(z).g(new ur1(), new lf7() {
                @Override
                public final void onSuccess(Object obj) {
                    zj8.h(context, z);
                }
            });
        }
    }

    public static void h(Context context, boolean z) {
        SharedPreferences.Editor editorEdit = b(context).edit();
        editorEdit.putBoolean("proxy_retention", z);
        editorEdit.apply();
    }
}
