package com.doman.core.d;

import android.content.SharedPreferences;
import com.doman.core.CoreMain;

public final class l {
    private static String a = "KEY_HOST_TAG";

    public static long a(String str) {
        return b().getLong(str, 0L);
    }

    private static SharedPreferences b() {
        return CoreMain.getInstance().getContext().getSharedPreferences("SQLIB", 0);
    }

    private static SharedPreferences.Editor a() {
        return b().edit();
    }

    public static boolean b(String str) {
        return b().getBoolean(str, false);
    }

    public static void a(String str, long j) {
        a().putLong(str, j).commit();
    }

    public static void a(String str, boolean z) {
        a().putBoolean(str, z).commit();
    }
}
