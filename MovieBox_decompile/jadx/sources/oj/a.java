package oj;

import android.content.Context;
import android.util.DisplayMetrics;
import kotlin.jvm.internal.Intrinsics;

public final class a {

    public static final a f67826a = new a();

    private static DisplayMetrics f67827b;

    private a() {
    }

    public final int a(Context context) {
        Intrinsics.h(context, "context");
        if (f67827b == null) {
            f67827b = context.getResources().getDisplayMetrics();
        }
        DisplayMetrics displayMetrics = f67827b;
        if (displayMetrics != null) {
            return displayMetrics.widthPixels;
        }
        return 0;
    }
}
