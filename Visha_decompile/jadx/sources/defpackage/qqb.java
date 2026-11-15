package defpackage;

import android.content.Context;

public abstract class qqb {
    public static int a = -1;

    public static int a(Context context) {
        int i = a;
        return (i != -1 || context == null) ? i : context.getSharedPreferences("app_preferences", 0).getInt("last_checked_position", 0);
    }

    public static boolean b(Context context) {
        return context.getSharedPreferences("app_preferences", 0).getBoolean("setting_page_video_direction_red_view_gone", false);
    }

    public static boolean c(Context context) {
        return context.getSharedPreferences("app_preferences", 0).getBoolean("has_clicked_second_item", false);
    }

    public static boolean d(Context context) {
        return a(context) == 1;
    }

    public static void e(Context context, int i) {
        context.getSharedPreferences("app_preferences", 0).edit().putInt("last_checked_position", i).apply();
        a = i;
    }

    public static void f(Context context, boolean z) {
        context.getSharedPreferences("app_preferences", 0).edit().putBoolean("setting_page_video_direction_red_view_gone", z).apply();
    }

    public static void g(Context context, boolean z) {
        context.getSharedPreferences("app_preferences", 0).edit().putBoolean("has_clicked_second_item", z).apply();
    }
}
