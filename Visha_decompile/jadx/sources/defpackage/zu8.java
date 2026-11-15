package defpackage;

import android.view.animation.Interpolator;
import androidx.media3.extractor.text.ttml.TtmlNode;

public final class zu8 implements Interpolator {
    public final Interpolator a;

    public zu8(Interpolator interpolator) {
        y45.j(interpolator, TtmlNode.RUBY_BASE);
        this.a = interpolator;
    }

    @Override
    public float getInterpolation(float f) {
        return this.a.getInterpolation(1.0f - f);
    }
}
