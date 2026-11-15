package nq;

import com.transsion.share.bean.ShareType;
import kotlin.jvm.internal.Intrinsics;

public final class a {

    private final ShareType f67327a;

    private final int f67328b;

    private final String f67329c;

    public a(ShareType shareType, int i10, String shareName) {
        Intrinsics.h(shareType, "shareType");
        Intrinsics.h(shareName, "shareName");
        this.f67327a = shareType;
        this.f67328b = i10;
        this.f67329c = shareName;
    }

    public final int a() {
        return this.f67328b;
    }

    public final String b() {
        return this.f67329c;
    }

    public final ShareType c() {
        return this.f67327a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f67327a == aVar.f67327a && this.f67328b == aVar.f67328b && Intrinsics.c(this.f67329c, aVar.f67329c);
    }

    public int hashCode() {
        return (((this.f67327a.hashCode() * 31) + this.f67328b) * 31) + this.f67329c.hashCode();
    }

    public String toString() {
        return "ShareData(shareType=" + this.f67327a + ", shareIconId=" + this.f67328b + ", shareName=" + this.f67329c + ")";
    }
}
