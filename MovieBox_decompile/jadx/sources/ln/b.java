package ln;

import androidx.compose.foundation.e;
import com.transsion.player.longvideo.constants.LongVodPlayerConfigType;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class b {

    private boolean f65978a;

    private final String f65979b;

    private final LongVodPlayerConfigType f65980c;

    public b() {
        this(false, null, null, 7, null);
    }

    public static b b(b bVar, boolean z10, String str, LongVodPlayerConfigType longVodPlayerConfigType, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = bVar.f65978a;
        }
        if ((i10 & 2) != 0) {
            str = bVar.f65979b;
        }
        if ((i10 & 4) != 0) {
            longVodPlayerConfigType = bVar.f65980c;
        }
        return bVar.a(z10, str, longVodPlayerConfigType);
    }

    public final b a(boolean z10, String content, LongVodPlayerConfigType configType) {
        Intrinsics.h(content, "content");
        Intrinsics.h(configType, "configType");
        return new b(z10, content, configType);
    }

    public final LongVodPlayerConfigType c() {
        return this.f65980c;
    }

    public final String d() {
        return this.f65979b;
    }

    public final boolean e() {
        return this.f65978a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f65978a == bVar.f65978a && Intrinsics.c(this.f65979b, bVar.f65979b) && this.f65980c == bVar.f65980c;
    }

    public final void f(boolean z10) {
        this.f65978a = z10;
    }

    public int hashCode() {
        return (((e.a(this.f65978a) * 31) + this.f65979b.hashCode()) * 31) + this.f65980c.hashCode();
    }

    public String toString() {
        return "LongVdPlayerConfigBean(isSelected=" + this.f65978a + ", content=" + this.f65979b + ", configType=" + this.f65980c + ")";
    }

    public b(boolean z10, String content, LongVodPlayerConfigType configType) {
        Intrinsics.h(content, "content");
        Intrinsics.h(configType, "configType");
        this.f65978a = z10;
        this.f65979b = content;
        this.f65980c = configType;
    }

    public b(boolean z10, String str, LongVodPlayerConfigType longVodPlayerConfigType, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? false : z10, (i10 & 2) != 0 ? "" : str, (i10 & 4) != 0 ? LongVodPlayerConfigType.BITRATE : longVodPlayerConfigType);
    }
}
