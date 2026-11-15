package defpackage;

import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.view.Surface;

public final class okj {
    public final tkj a;
    public final MediaFormat b;
    public final erj c;
    public final Surface d;
    public final MediaCrypto e = null;
    public final nkj f;

    public okj(tkj tkjVar, MediaFormat mediaFormat, erj erjVar, Surface surface, MediaCrypto mediaCrypto, nkj nkjVar) {
        this.a = tkjVar;
        this.b = mediaFormat;
        this.c = erjVar;
        this.d = surface;
        this.f = nkjVar;
    }

    public static okj a(tkj tkjVar, MediaFormat mediaFormat, erj erjVar, MediaCrypto mediaCrypto, nkj nkjVar) {
        return new okj(tkjVar, mediaFormat, erjVar, null, null, nkjVar);
    }

    public static okj b(tkj tkjVar, MediaFormat mediaFormat, erj erjVar, Surface surface, MediaCrypto mediaCrypto) {
        return new okj(tkjVar, mediaFormat, erjVar, surface, null, null);
    }
}
