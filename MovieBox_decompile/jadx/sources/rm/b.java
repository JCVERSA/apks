package rm;

import androidx.compose.foundation.e;
import kotlin.jvm.internal.Intrinsics;

public final class b {

    private final boolean f71265a;

    private final String f71266b;

    private final int f71267c;

    public b(boolean z10, String str, int i10) {
        this.f71265a = z10;
        this.f71266b = str;
        this.f71267c = i10;
    }

    public final String a() {
        return this.f71266b;
    }

    public final int b() {
        return this.f71267c;
    }

    public final boolean c() {
        return this.f71265a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f71265a == bVar.f71265a && Intrinsics.c(this.f71266b, bVar.f71266b) && this.f71267c == bVar.f71267c;
    }

    public int hashCode() {
        int iA = e.a(this.f71265a) * 31;
        String str = this.f71266b;
        return ((iA + (str == null ? 0 : str.hashCode())) * 31) + this.f71267c;
    }

    public String toString() {
        return "CommentLikeEvent(result=" + this.f71265a + ", commentId=" + this.f71266b + ", likeCount=" + this.f71267c + ")";
    }
}
