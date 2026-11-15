package androidx.media3.exoplayer.image;

import androidx.annotation.Nullable;
import androidx.media3.common.Format;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.decoder.Decoder;
import androidx.media3.decoder.DecoderInputBuffer;

@UnstableApi
public interface ImageDecoder extends Decoder<DecoderInputBuffer, ImageOutputBuffer, ImageDecoderException> {

    public interface Factory {
        public static final Factory DEFAULT = new BitmapFactoryImageDecoder.Factory();

        ImageDecoder createImageDecoder();

        int supportsFormat(Format format);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    @Nullable
    ImageOutputBuffer dequeueOutputBuffer() throws ImageDecoderException;

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    void queueInputBuffer(DecoderInputBuffer decoderInputBuffer) throws ImageDecoderException;
}
