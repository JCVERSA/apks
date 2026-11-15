package io.github.anilbeesetti.nextlib.media3ext.ffdecoder;

import androidx.media3.decoder.DecoderException;

public final class FfmpegDecoderException extends DecoderException {
    FfmpegDecoderException(String str) {
        super(str);
    }

    FfmpegDecoderException(String str, Throwable th2) {
        super(str, th2);
    }
}
