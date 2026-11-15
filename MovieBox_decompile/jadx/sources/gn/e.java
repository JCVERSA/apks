package gn;

import com.cloud.tmc.kernel.utils.UrlUtils;
import com.transsion.player.mediasession.MediaItem;
import com.transsion.player.p007enum.PlayMimeType;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

public final class e {

    private final String f61174a;

    private final String f61175b;

    private final int f61176c;

    private PlayMimeType f61177d;

    private final MediaItem f61178e;

    private String f61179f;

    private final Lazy f61180g;

    private boolean f61181h;

    private boolean f61182i;

    private Map f61183j;

    public e(String str, String url, int i10, PlayMimeType mimeType, MediaItem mediaItem) {
        Intrinsics.h(url, "url");
        Intrinsics.h(mimeType, "mimeType");
        this.f61174a = str;
        this.f61175b = url;
        this.f61176c = i10;
        this.f61177d = mimeType;
        this.f61178e = mediaItem;
        this.f61180g = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return e.n(this.f61173a);
            }
        });
    }

    private final String b() {
        int iO0 = StringsKt.o0(this.f61175b, UrlUtils.QUESTION_MARK, 0, false, 6, null);
        if (iO0 < 0) {
            return sn.d.f72353a.a(this.f61175b);
        }
        sn.d.a aVar = sn.d.f72353a;
        String strSubstring = this.f61175b.substring(0, iO0);
        Intrinsics.g(strSubstring, "substring(...)");
        return aVar.a(strSubstring);
    }

    public static final String n(e eVar) {
        return eVar.b();
    }

    public final boolean c() {
        return this.f61181h;
    }

    public final Map d() {
        return this.f61183j;
    }

    public final String e() {
        return this.f61174a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return Intrinsics.c(this.f61174a, eVar.f61174a) && Intrinsics.c(this.f61175b, eVar.f61175b) && this.f61176c == eVar.f61176c && this.f61177d == eVar.f61177d && Intrinsics.c(this.f61178e, eVar.f61178e);
    }

    public final String f() {
        return (String) this.f61180g.getValue();
    }

    public final String g() {
        return this.f61179f;
    }

    public final MediaItem h() {
        return this.f61178e;
    }

    public int hashCode() {
        String str = this.f61174a;
        int iHashCode = (((((((str == null ? 0 : str.hashCode()) * 31) + this.f61175b.hashCode()) * 31) + this.f61176c) * 31) + this.f61177d.hashCode()) * 31;
        MediaItem mediaItem = this.f61178e;
        return iHashCode + (mediaItem != null ? mediaItem.hashCode() : 0);
    }

    public final PlayMimeType i() {
        return this.f61177d;
    }

    public final String j() {
        return this.f61175b;
    }

    public final int k() {
        return this.f61176c;
    }

    public final boolean l() {
        return this.f61182i;
    }

    public final boolean m() {
        PlayMimeType playMimeType = this.f61177d;
        return playMimeType == PlayMimeType.DASH || playMimeType == PlayMimeType.HLS || StringsKt.c0(this.f61175b, ".mpd", false, 2, null) || StringsKt.c0(this.f61175b, ".m3u8", false, 2, null);
    }

    public final void o(Map map) {
        this.f61183j = map;
    }

    public final void p(String str) {
        this.f61179f = str;
    }

    public final void q(PlayMimeType playMimeType) {
        Intrinsics.h(playMimeType, "<set-?>");
        this.f61177d = playMimeType;
    }

    public String toString() {
        return "MediaSource(id=" + this.f61174a + ", url=" + this.f61175b + ", weights=" + this.f61176c + ", mimeType=" + this.f61177d + ", mediaItem=" + this.f61178e + ")";
    }

    public e(String str, String str2, int i10, PlayMimeType playMimeType, MediaItem mediaItem, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i11 & 4) != 0 ? -1 : i10, (i11 & 8) != 0 ? PlayMimeType.DEFAULT : playMimeType, (i11 & 16) != 0 ? null : mediaItem);
    }
}
