package androidx.media3.transformer;

import androidx.annotation.Nullable;
import androidx.media3.common.Format;

final class CapturingEncoderFactory implements Codec.EncoderFactory {

    @Nullable
    private String audioEncoderName;
    private final Codec.EncoderFactory encoderFactory;

    @Nullable
    private String videoEncoderName;

    public CapturingEncoderFactory(Codec.EncoderFactory encoderFactory) {
        this.encoderFactory = encoderFactory;
    }

    @Override
    public boolean audioNeedsEncoding() {
        return this.encoderFactory.audioNeedsEncoding();
    }

    @Override
    public Codec createForAudioEncoding(Format format) throws ExportException {
        Codec codecCreateForAudioEncoding = this.encoderFactory.createForAudioEncoding(format);
        this.audioEncoderName = codecCreateForAudioEncoding.getName();
        return codecCreateForAudioEncoding;
    }

    @Override
    public Codec createForVideoEncoding(Format format) throws ExportException {
        Codec codecCreateForVideoEncoding = this.encoderFactory.createForVideoEncoding(format);
        this.videoEncoderName = codecCreateForVideoEncoding.getName();
        return codecCreateForVideoEncoding;
    }

    @Nullable
    public String getAudioEncoderName() {
        return this.audioEncoderName;
    }

    @Nullable
    public String getVideoEncoderName() {
        return this.videoEncoderName;
    }

    @Override
    public boolean videoNeedsEncoding() {
        return this.encoderFactory.videoNeedsEncoding();
    }
}
