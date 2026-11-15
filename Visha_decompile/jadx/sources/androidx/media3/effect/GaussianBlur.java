package androidx.media3.effect;

import androidx.annotation.FloatRange;
import androidx.media3.common.util.UnstableApi;

@UnstableApi
public final class GaussianBlur extends SeparableConvolution {
    private final float numStandardDeviations;
    private final float sigma;

    public GaussianBlur(@FloatRange(from = 0.0d, fromInclusive = false) float f, @FloatRange(from = 0.0d, fromInclusive = false) float f2) {
        this.sigma = f;
        this.numStandardDeviations = f2;
    }

    @Override
    public ConvolutionFunction1D getConvolution(long j) {
        return new GaussianFunction(this.sigma, this.numStandardDeviations);
    }

    public GaussianBlur(float f) {
        this(f, 2.0f);
    }
}
