package com.hunantv.imgo.b;

import android.content.res.Resources;
import android.util.Log;
import androidx.annotation.NonNull;
import com.hunantv.imgo.BaseApplication;

public final class a {
    private static String a = null;
    private static int b = -1;
    private static int c = 10;

    public static final class C0126a {
        public static int a(int i) {
            if (i == -1 || i == 0 || i == 1 || i == 6 || i == 10 || i == 23 || i == 18 || i == 19) {
                return i;
            }
            return -1;
        }
    }

    public static final class b {
        public static int a(int i) {
            if (i == 10 || i == 12) {
                return i;
            }
            return 10;
        }
    }

    public static void a(int i) {
        b = C0126a.a(i);
        StringBuilder sb = new StringBuilder();
        sb.append("setAreaCode:");
        sb.append(b);
        sb.append("，语言：");
        Resources resources = BaseApplication.getContext().getResources();
        com.mgtv.ssp.utils.language.c.a();
        sb.append(resources.getString(com.mgtv.ssp.utils.language.c.a(b)));
        Log.i("lyzzz", sb.toString());
    }

    @NonNull
    public static String b() {
        int i = b;
        return -1 == i ? "" : Integer.toString(i);
    }

    public static int c() {
        return c;
    }

    public static int a() {
        StringBuilder sb = new StringBuilder();
        sb.append("getAreaCode:");
        sb.append(b);
        sb.append("，语言：");
        Resources resources = BaseApplication.getContext().getResources();
        com.mgtv.ssp.utils.language.c.a();
        sb.append(resources.getString(com.mgtv.ssp.utils.language.c.a(b)));
        Log.i("lyzzz", sb.toString());
        return b;
    }

    public static void b(int i) {
        c = b.a(i);
    }

    @Deprecated
    public static void a(String str) {
        a = str;
    }
}
