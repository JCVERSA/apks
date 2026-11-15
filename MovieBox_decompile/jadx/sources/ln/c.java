package ln;

import com.transsion.player.p007enum.PlayMimeType;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

public final class c {

    private final PlayMimeType f65981a;

    private final String f65982b;

    private final String f65983c;

    private final String f65984d;

    private final String f65985e;

    private final String f65986f;

    private final String f65987g;

    private String f65988h;

    private String f65989i;

    public c(PlayMimeType format, String id2, String url, String resolutions, String size, String duration, String signCookie, String str) {
        Intrinsics.h(format, "format");
        Intrinsics.h(id2, "id");
        Intrinsics.h(url, "url");
        Intrinsics.h(resolutions, "resolutions");
        Intrinsics.h(size, "size");
        Intrinsics.h(duration, "duration");
        Intrinsics.h(signCookie, "signCookie");
        this.f65981a = format;
        this.f65982b = id2;
        this.f65983c = url;
        this.f65984d = resolutions;
        this.f65985e = size;
        this.f65986f = duration;
        this.f65987g = signCookie;
        this.f65988h = str;
    }

    public final String a() {
        return this.f65986f;
    }

    public final PlayMimeType b() {
        return this.f65981a;
    }

    public final String c() {
        return this.f65982b;
    }

    public final String d() {
        return this.f65989i;
    }

    public final String e() {
        return this.f65984d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return this.f65981a == cVar.f65981a && Intrinsics.c(this.f65982b, cVar.f65982b) && Intrinsics.c(this.f65983c, cVar.f65983c) && Intrinsics.c(this.f65984d, cVar.f65984d) && Intrinsics.c(this.f65985e, cVar.f65985e) && Intrinsics.c(this.f65986f, cVar.f65986f) && Intrinsics.c(this.f65987g, cVar.f65987g) && Intrinsics.c(this.f65988h, cVar.f65988h);
    }

    public final String f() {
        return this.f65987g;
    }

    public final String g() {
        return this.f65985e;
    }

    public final String h() {
        return this.f65983c;
    }

    public int hashCode() {
        int iHashCode = ((((((((((((this.f65981a.hashCode() * 31) + this.f65982b.hashCode()) * 31) + this.f65983c.hashCode()) * 31) + this.f65984d.hashCode()) * 31) + this.f65985e.hashCode()) * 31) + this.f65986f.hashCode()) * 31) + this.f65987g.hashCode()) * 31;
        String str = this.f65988h;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public final boolean i() {
        return StringsKt.c0(this.f65983c, ".mp3", false, 2, null);
    }

    public final boolean j() {
        return StringsKt.W(this.f65983c, "http", false, 2, null);
    }

    public final boolean k() {
        PlayMimeType playMimeType = this.f65981a;
        return playMimeType == PlayMimeType.DASH || playMimeType == PlayMimeType.HLS;
    }

    public final void l(String str) {
        this.f65989i = str;
    }

    public final void m(String str) {
        this.f65988h = str;
    }

    public String toString() {
        return "LongVdPlayerStreamBean(format=" + this.f65981a + ", id=" + this.f65982b + ", url=" + this.f65983c + ", resolutions=" + this.f65984d + ", size=" + this.f65985e + ", duration=" + this.f65986f + ", signCookie=" + this.f65987g + ", originalResolutions=" + this.f65988h + ")";
    }

    public c(PlayMimeType playMimeType, String str, String str2, String str3, String str4, String str5, String str6, String str7, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(playMimeType, str, str2, str3, str4, str5, str6, (i10 & 128) != 0 ? null : str7);
    }
}
