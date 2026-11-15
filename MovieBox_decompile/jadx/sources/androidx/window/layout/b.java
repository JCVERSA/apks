package androidx.window.layout;

import android.app.Activity;
import kotlin.jvm.internal.Intrinsics;

public final class b {

    public static final b f15005a = new b();

    private b() {
    }

    public final boolean a(Activity activity) {
        Intrinsics.h(activity, "activity");
        return activity.isInMultiWindowMode();
    }
}
