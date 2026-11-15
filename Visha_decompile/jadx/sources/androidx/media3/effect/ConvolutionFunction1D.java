package androidx.media3.effect;

import androidx.media3.common.util.Size;
import androidx.media3.common.util.UnstableApi;

@UnstableApi
public interface ConvolutionFunction1D {

    public interface Provider {
        Size configure(Size size);

        ConvolutionFunction1D getConvolution(long j);
    }

    float domainEnd();

    float domainStart();

    float value(float f);

    default float width() {
        return domainEnd() - domainStart();
    }
}
