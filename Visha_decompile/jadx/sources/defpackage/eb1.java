package defpackage;

import androidx.media3.exoplayer.upstream.CmcdData;
import kotlin.comparisons.a;

public abstract class eb1 extends a {
    public static Comparable i(Comparable comparable, Comparable comparable2) {
        y45.j(comparable, CmcdData.OBJECT_TYPE_AUDIO_ONLY);
        y45.j(comparable2, "b");
        return comparable.compareTo(comparable2) >= 0 ? comparable : comparable2;
    }
}
