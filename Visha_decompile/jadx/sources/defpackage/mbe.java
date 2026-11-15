package defpackage;

import androidx.media3.extractor.avi.AviExtractor;
import java.nio.charset.StandardCharsets;

public final class mbe implements zae {
    public final String a;

    public mbe(String str) {
        this.a = str;
    }

    public static mbe a(u4h u4hVar) {
        return new mbe(u4hVar.b(u4hVar.u(), StandardCharsets.UTF_8));
    }

    @Override
    public final int zza() {
        return AviExtractor.FOURCC_strn;
    }
}
