package androidx.window.layout;

import android.app.Activity;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class WindowInfoTrackerImpl implements x {

    public static final a f15001d = new a(null);

    private final c0 f15002b;

    private final v f15003c;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public WindowInfoTrackerImpl(c0 windowMetricsCalculator, v windowBackend) {
        Intrinsics.h(windowMetricsCalculator, "windowMetricsCalculator");
        Intrinsics.h(windowBackend, "windowBackend");
        this.f15002b = windowMetricsCalculator;
        this.f15003c = windowBackend;
    }

    @Override
    public kotlinx.coroutines.flow.a a(Activity activity) {
        Intrinsics.h(activity, "activity");
        return kotlinx.coroutines.flow.c.r(new WindowInfoTrackerImpl$windowLayoutInfo$1(this, activity, null));
    }
}
