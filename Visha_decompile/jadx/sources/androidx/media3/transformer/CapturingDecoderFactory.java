package androidx.media3.transformer;

import android.view.Surface;
import androidx.annotation.Nullable;
import androidx.media3.common.Format;

final class CapturingDecoderFactory implements Codec.DecoderFactory {

    @Nullable
    private String audioDecoderName;
    private final Codec.DecoderFactory decoderFactory;

    @Nullable
    private String videoDecoderName;

    public CapturingDecoderFactory(Codec.DecoderFactory decoderFactory) {
        this.decoderFactory = decoderFactory;
    }

    @Override
    public Codec createForAudioDecoding(Format format) throws ExportException {
        Codec codecCreateForAudioDecoding = this.decoderFactory.createForAudioDecoding(format);
        this.audioDecoderName = codecCreateForAudioDecoding.getName();
        return codecCreateForAudioDecoding;
    }

    @Override
    public Codec createForVideoDecoding(Format format, Surface surface, boolean z) throws ExportException {
        Codec codecCreateForVideoDecoding = this.decoderFactory.createForVideoDecoding(format, surface, z);
        this.videoDecoderName = codecCreateForVideoDecoding.getName();
        return codecCreateForVideoDecoding;
    }

    @Nullable
    public String getAudioDecoderName() {
        return this.audioDecoderName;
    }

    @Nullable
    public String getVideoDecoderName() {
        return this.videoDecoderName;
    }
}
