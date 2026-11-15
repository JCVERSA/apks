package hx;

import kotlin.jvm.internal.Intrinsics;

public final class c {

    private final String f61509a;

    private final boolean f61510b;

    private final String f61511c;

    public c(String subjectId, boolean z10, String str) {
        Intrinsics.h(subjectId, "subjectId");
        this.f61509a = subjectId;
        this.f61510b = z10;
        this.f61511c = str;
    }

    public final boolean a() {
        return this.f61510b;
    }

    public final String b() {
        return this.f61511c;
    }

    public final String c() {
        return this.f61509a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return Intrinsics.c(this.f61509a, cVar.f61509a) && this.f61510b == cVar.f61510b && Intrinsics.c(this.f61511c, cVar.f61511c);
    }

    public int hashCode() {
        int iHashCode = ((this.f61509a.hashCode() * 31) + androidx.compose.foundation.e.a(this.f61510b)) * 31;
        String str = this.f61511c;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public String toString() {
        return "FavoriteEvent(subjectId=" + this.f61509a + ", favorite=" + this.f61510b + ", favoriteNum=" + this.f61511c + ")";
    }
}
