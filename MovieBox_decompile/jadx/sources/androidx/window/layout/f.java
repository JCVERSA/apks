package androidx.window.layout;

import android.graphics.Point;
import android.view.Display;
import kotlin.jvm.internal.Intrinsics;

public final class f {

    public static final f f15008a = new f();

    private f() {
    }

    public final void a(Display display, Point point) {
        Intrinsics.h(display, "display");
        Intrinsics.h(point, "point");
        display.getRealSize(point);
    }
}
