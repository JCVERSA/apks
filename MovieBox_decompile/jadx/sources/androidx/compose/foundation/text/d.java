package androidx.compose.foundation.text;

import com.mbridge.msdk.playercommon.exoplayer2.extractor.ogg.DefaultOggSeeker;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class d {

    private final int f2892a;

    private boolean f2893b;

    public d() {
        this(0, 1, null);
    }

    public final void a() {
        this.f2893b = true;
    }

    public d(int i10) {
        this.f2892a = i10;
    }

    public d(int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? DefaultOggSeeker.MATCH_BYTE_RANGE : i10);
    }
}
