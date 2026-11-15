package androidx.window.layout;

import android.app.Activity;
import android.graphics.Rect;
import kotlin.jvm.internal.Intrinsics;

public final class e {

    public static final e f15007a = new e();

    private e() {
    }

    public final Rect a(Activity activity) {
        Intrinsics.h(activity, "activity");
        Rect bounds = activity.getWindowManager().getCurrentWindowMetrics().getBounds();
        Intrinsics.g(bounds, "activity.windowManager.currentWindowMetrics.bounds");
        return bounds;
    }
}
