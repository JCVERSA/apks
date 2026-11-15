package androidx.window.layout;

import android.view.DisplayCutout;
import kotlin.jvm.internal.Intrinsics;

public final class k {

    public static final k f15011a = new k();

    private k() {
    }

    public final int a(DisplayCutout displayCutout) {
        Intrinsics.h(displayCutout, "displayCutout");
        return displayCutout.getSafeInsetBottom();
    }

    public final int b(DisplayCutout displayCutout) {
        Intrinsics.h(displayCutout, "displayCutout");
        return displayCutout.getSafeInsetLeft();
    }

    public final int c(DisplayCutout displayCutout) {
        Intrinsics.h(displayCutout, "displayCutout");
        return displayCutout.getSafeInsetRight();
    }

    public final int d(DisplayCutout displayCutout) {
        Intrinsics.h(displayCutout, "displayCutout");
        return displayCutout.getSafeInsetTop();
    }
}
