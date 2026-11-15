package vx;

import androidx.collection.s;
import kotlin.jvm.internal.Intrinsics;

public final class a {

    private final int f73835a;

    private final String f73836b;

    private final String f73837c;

    private final String f73838d;

    private final int f73839e;

    private final long f73840f;

    private final String f73841g;

    private final int f73842h;

    private final int f73843i;

    private final String f73844j;

    public a(int i10, String str, String codecName, String str2, int i11, long j10, String str3, int i12, int i13, String str4) {
        Intrinsics.h(codecName, "codecName");
        this.f73835a = i10;
        this.f73836b = str;
        this.f73837c = codecName;
        this.f73838d = str2;
        this.f73839e = i11;
        this.f73840f = j10;
        this.f73841g = str3;
        this.f73842h = i12;
        this.f73843i = i13;
        this.f73844j = str4;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f73835a == aVar.f73835a && Intrinsics.c(this.f73836b, aVar.f73836b) && Intrinsics.c(this.f73837c, aVar.f73837c) && Intrinsics.c(this.f73838d, aVar.f73838d) && this.f73839e == aVar.f73839e && this.f73840f == aVar.f73840f && Intrinsics.c(this.f73841g, aVar.f73841g) && this.f73842h == aVar.f73842h && this.f73843i == aVar.f73843i && Intrinsics.c(this.f73844j, aVar.f73844j);
    }

    public int hashCode() {
        int i10 = this.f73835a * 31;
        String str = this.f73836b;
        int iHashCode = (((i10 + (str == null ? 0 : str.hashCode())) * 31) + this.f73837c.hashCode()) * 31;
        String str2 = this.f73838d;
        int iHashCode2 = (((((iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31) + this.f73839e) * 31) + s.a(this.f73840f)) * 31;
        String str3 = this.f73841g;
        int iHashCode3 = (((((iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31) + this.f73842h) * 31) + this.f73843i) * 31;
        String str4 = this.f73844j;
        return iHashCode3 + (str4 != null ? str4.hashCode() : 0);
    }

    public String toString() {
        return "AudioStream(index=" + this.f73835a + ", title=" + this.f73836b + ", codecName=" + this.f73837c + ", language=" + this.f73838d + ", disposition=" + this.f73839e + ", bitRate=" + this.f73840f + ", sampleFormat=" + this.f73841g + ", sampleRate=" + this.f73842h + ", channels=" + this.f73843i + ", channelLayout=" + this.f73844j + ")";
    }
}
