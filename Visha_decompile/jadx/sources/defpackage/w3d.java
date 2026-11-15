package defpackage;

import android.content.Context;

public abstract class w3d {
    public static int a(Context context, float f) {
        return (int) (context == null ? f * 2.0f : (f * context.getResources().getDisplayMetrics().density) + 0.5f);
    }
}
