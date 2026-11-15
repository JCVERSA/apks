package defpackage;

import androidx.window.layout.FoldingFeature;

public abstract class mi4 {
    public static final boolean a(FoldingFeature foldingFeature) {
        return y45.e(foldingFeature != null ? foldingFeature.getState() : null, FoldingFeature.State.HALF_OPENED) && y45.e(foldingFeature.getOrientation(), FoldingFeature.Orientation.HORIZONTAL);
    }
}
