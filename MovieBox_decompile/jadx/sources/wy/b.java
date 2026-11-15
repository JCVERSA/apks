package wy;

import android.content.Context;

public final class b {
    public static int a(Context context, double d10) {
        return (int) ((d10 * ((double) context.getResources().getDisplayMetrics().density)) + 0.5d);
    }
}
