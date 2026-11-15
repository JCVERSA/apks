package gu;

import kotlin.jvm.internal.Intrinsics;

public final class d {

    private final String f61202a;

    private final boolean f61203b;

    public d(String userId, boolean z10) {
        Intrinsics.h(userId, "userId");
        this.f61202a = userId;
        this.f61203b = z10;
    }

    public final String a() {
        return this.f61202a;
    }

    public final boolean b() {
        return this.f61203b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return Intrinsics.c(this.f61202a, dVar.f61202a) && this.f61203b == dVar.f61203b;
    }

    public int hashCode() {
        return (this.f61202a.hashCode() * 31) + androidx.compose.foundation.e.a(this.f61203b);
    }

    public String toString() {
        return "UGCSubscribeEvent(userId=" + this.f61202a + ", isSubscribed=" + this.f61203b + ")";
    }
}
