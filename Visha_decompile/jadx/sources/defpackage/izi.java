package defpackage;

import android.media.MediaCodec;

public final class izi {
    public final MediaCodec.CryptoInfo a;
    public final MediaCodec.CryptoInfo.Pattern b = new MediaCodec.CryptoInfo.Pattern(0, 0);

    public static void a(izi iziVar, int i, int i2) {
        MediaCodec.CryptoInfo.Pattern pattern = iziVar.b;
        pattern.set(i, i2);
        iziVar.a.setPattern(pattern);
    }
}
