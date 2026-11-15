package defpackage;

import androidx.media3.exoplayer.analytics.AnalyticsListener;
import java.util.Map;
import kotlin.collections.a;

public abstract class mxa {
    public static final Map a;

    static {
        awa awaVar = awa.a;
        a = a.p(abb.a(1020, new na(awaVar.a(), 256)), abb.a(1021, new na(awaVar.b(), 256)), abb.a(Integer.valueOf(AnalyticsListener.EVENT_VIDEO_CODEC_ERROR), new na(awaVar.d(), 2048)), abb.a(Integer.valueOf(AnalyticsListener.EVENT_AUDIO_TRACK_INITIALIZED), new na(awaVar.e(), 2048)), abb.a(1050, new na(awaVar.c(), 256)), abb.a(1060, new na(awaVar.g(), 2048)), abb.a(1061, new na(awaVar.f(), 256)));
    }

    public static final na a(int i) {
        na naVar = (na) a.get(Integer.valueOf(i));
        return naVar == null ? new na("unknown", 0) : naVar;
    }
}
