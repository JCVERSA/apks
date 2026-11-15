package yw;

import androidx.collection.s;
import kotlin.jvm.internal.Intrinsics;

public final class g {

    private final String f76423a;

    private final String f76424b;

    private final long f76425c;

    public g(String videoId, String collectionId, long j10) {
        Intrinsics.h(videoId, "videoId");
        Intrinsics.h(collectionId, "collectionId");
        this.f76423a = videoId;
        this.f76424b = collectionId;
        this.f76425c = j10;
    }

    public final String a() {
        return this.f76424b;
    }

    public final long b() {
        return this.f76425c;
    }

    public final String c() {
        return this.f76423a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        return Intrinsics.c(this.f76423a, gVar.f76423a) && Intrinsics.c(this.f76424b, gVar.f76424b) && this.f76425c == gVar.f76425c;
    }

    public int hashCode() {
        return (((this.f76423a.hashCode() * 31) + this.f76424b.hashCode()) * 31) + s.a(this.f76425c);
    }

    public String toString() {
        return "UGCPlayRecordEvent(videoId=" + this.f76423a + ", collectionId=" + this.f76424b + ", progress=" + this.f76425c + ")";
    }
}
