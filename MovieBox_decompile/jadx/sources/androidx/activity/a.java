package androidx.activity;

import android.window.BackEvent;
import kotlin.jvm.internal.Intrinsics;

public final class a {

    public static final a f559a = new a();

    private a() {
    }

    public final float a(BackEvent backEvent) {
        Intrinsics.h(backEvent, "backEvent");
        return backEvent.getProgress();
    }

    public final int b(BackEvent backEvent) {
        Intrinsics.h(backEvent, "backEvent");
        return backEvent.getSwipeEdge();
    }

    public final float c(BackEvent backEvent) {
        Intrinsics.h(backEvent, "backEvent");
        return backEvent.getTouchX();
    }

    public final float d(BackEvent backEvent) {
        Intrinsics.h(backEvent, "backEvent");
        return backEvent.getTouchY();
    }
}
