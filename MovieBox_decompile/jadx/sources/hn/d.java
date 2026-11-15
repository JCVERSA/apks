package hn;

import androidx.collection.s;
import androidx.compose.foundation.e;
import com.google.android.gms.auth.api.proxy.AuthApiStatusCodes;
import com.mbridge.msdk.playercommon.exoplayer2.DefaultLoadControl;
import com.transsion.player.config.RenderType;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class d {

    private final RenderType f61414a;

    private final boolean f61415b;

    private final int f61416c;

    private final int f61417d;

    private final int f61418e;

    private final int f61419f;

    private final int f61420g;

    private final int f61421h;

    private final long f61422i;

    private final int f61423j;

    private final int f61424k;

    private boolean f61425l;

    private boolean f61426m;

    private boolean f61427n;

    private boolean f61428o;

    private boolean f61429p;

    private final String f61430q;

    public d() {
        this(null, false, 0, 0, 0, 0, 0, 0, 0L, 0, 0, false, false, false, false, false, null, 131071, null);
    }

    public final int a() {
        return this.f61423j;
    }

    public final boolean b() {
        return this.f61426m;
    }

    public final boolean c() {
        return this.f61428o;
    }

    public final boolean d() {
        return this.f61427n;
    }

    public final boolean e() {
        return this.f61425l;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return this.f61414a == dVar.f61414a && this.f61415b == dVar.f61415b && this.f61416c == dVar.f61416c && this.f61417d == dVar.f61417d && this.f61418e == dVar.f61418e && this.f61419f == dVar.f61419f && this.f61420g == dVar.f61420g && this.f61421h == dVar.f61421h && this.f61422i == dVar.f61422i && this.f61423j == dVar.f61423j && this.f61424k == dVar.f61424k && this.f61425l == dVar.f61425l && this.f61426m == dVar.f61426m && this.f61427n == dVar.f61427n && this.f61428o == dVar.f61428o && this.f61429p == dVar.f61429p && Intrinsics.c(this.f61430q, dVar.f61430q);
    }

    public final int f() {
        return this.f61418e;
    }

    public final int g() {
        return this.f61417d;
    }

    public final int h() {
        return this.f61424k;
    }

    public int hashCode() {
        return (((((((((((((((((((((((((((((((this.f61414a.hashCode() * 31) + e.a(this.f61415b)) * 31) + this.f61416c) * 31) + this.f61417d) * 31) + this.f61418e) * 31) + this.f61419f) * 31) + this.f61420g) * 31) + this.f61421h) * 31) + s.a(this.f61422i)) * 31) + this.f61423j) * 31) + this.f61424k) * 31) + e.a(this.f61425l)) * 31) + e.a(this.f61426m)) * 31) + e.a(this.f61427n)) * 31) + e.a(this.f61428o)) * 31) + e.a(this.f61429p)) * 31) + this.f61430q.hashCode();
    }

    public final boolean i() {
        return this.f61429p;
    }

    public final boolean j() {
        return this.f61415b;
    }

    public final int k() {
        return this.f61416c;
    }

    public final long l() {
        return this.f61422i;
    }

    public final int m() {
        return this.f61420g;
    }

    public final int n() {
        return this.f61419f;
    }

    public final String o() {
        return this.f61430q;
    }

    public final RenderType p() {
        return this.f61414a;
    }

    public String toString() {
        return "VodConfig(type=" + this.f61414a + ", openCache=" + this.f61415b + ", positionTimerIntervalMs=" + this.f61416c + ", maxBufferDuration=" + this.f61417d + ", highBufferDuration=" + this.f61418e + ", startBufferDuration=" + this.f61419f + ", retryCount=" + this.f61420g + ", preloadCount=" + this.f61421h + ", preloadDuration=" + this.f61422i + ", cacheMaxSizeMB=" + this.f61423j + ", networkTimeout=" + this.f61424k + ", enableHardwareDecoder=" + this.f61425l + ", clearFrameWhenStop=" + this.f61426m + ", disableVideo=" + this.f61427n + ", disableAudio=" + this.f61428o + ", openAudioFocus=" + this.f61429p + ", traceId=" + this.f61430q + ")";
    }

    public d(RenderType type, boolean z10, int i10, int i11, int i12, int i13, int i14, int i15, long j10, int i16, int i17, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15, String traceId) {
        Intrinsics.h(type, "type");
        Intrinsics.h(traceId, "traceId");
        this.f61414a = type;
        this.f61415b = z10;
        this.f61416c = i10;
        this.f61417d = i11;
        this.f61418e = i12;
        this.f61419f = i13;
        this.f61420g = i14;
        this.f61421h = i15;
        this.f61422i = j10;
        this.f61423j = i16;
        this.f61424k = i17;
        this.f61425l = z11;
        this.f61426m = z12;
        this.f61427n = z13;
        this.f61428o = z14;
        this.f61429p = z15;
        this.f61430q = traceId;
    }

    public d(RenderType renderType, boolean z10, int i10, int i11, int i12, int i13, int i14, int i15, long j10, int i16, int i17, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15, String str, int i18, DefaultConstructorMarker defaultConstructorMarker) {
        this((i18 & 1) != 0 ? RenderType.SURFACE_VIEW : renderType, (i18 & 2) != 0 ? true : z10, (i18 & 4) != 0 ? 50 : i10, (i18 & 8) != 0 ? DefaultLoadControl.DEFAULT_MAX_BUFFER_MS : i11, (i18 & 16) != 0 ? AuthApiStatusCodes.AUTH_API_INVALID_CREDENTIALS : i12, (i18 & 32) != 0 ? 500 : i13, (i18 & 64) != 0 ? 2 : i14, (i18 & 128) != 0 ? 3 : i15, (i18 & 256) != 0 ? 4000L : j10, (i18 & 512) == 0 ? i16 : 50, (i18 & 1024) != 0 ? 30000 : i17, (i18 & 2048) != 0 ? true : z11, (i18 & 4096) != 0 ? false : z12, (i18 & 8192) != 0 ? false : z13, (i18 & 16384) == 0 ? z14 : false, (32768 & i18) != 0 ? true : z15, (i18 & 65536) != 0 ? "" : str);
    }
}
