package androidx.core.view;

import android.view.ScaleGestureDetector;

public final class ScaleGestureDetectorCompat {
    private ScaleGestureDetectorCompat() {
    }

    @Deprecated
    public static boolean isQuickScaleEnabled(Object obj) {
        return isQuickScaleEnabled((ScaleGestureDetector) obj);
    }

    @Deprecated
    public static void setQuickScaleEnabled(Object obj, boolean z10) {
        setQuickScaleEnabled((ScaleGestureDetector) obj, z10);
    }

    @Deprecated
    public static boolean isQuickScaleEnabled(ScaleGestureDetector scaleGestureDetector) {
        return scaleGestureDetector.isQuickScaleEnabled();
    }

    @Deprecated
    public static void setQuickScaleEnabled(ScaleGestureDetector scaleGestureDetector, boolean z10) {
        scaleGestureDetector.setQuickScaleEnabled(z10);
    }
}
