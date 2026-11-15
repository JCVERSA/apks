package com.transsion.startup.pref.consume;

import androidx.collection.s;
import androidx.compose.foundation.e;

public final class b {

    private final long f52512a;

    private final long f52513b;

    private final long f52514c;

    private final long f52515d;

    private final long f52516e;

    private final boolean f52517f;

    public b(long j10, long j11, long j12, long j13, long j14, boolean z10) {
        this.f52512a = j10;
        this.f52513b = j11;
        this.f52514c = j12;
        this.f52515d = j13;
        this.f52516e = j14;
        this.f52517f = z10;
    }

    public final long a() {
        return this.f52513b;
    }

    public final boolean b() {
        return this.f52517f;
    }

    public final long c() {
        return this.f52514c;
    }

    public final long d() {
        return this.f52516e;
    }

    public final long e() {
        return this.f52512a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f52512a == bVar.f52512a && this.f52513b == bVar.f52513b && this.f52514c == bVar.f52514c && this.f52515d == bVar.f52515d && this.f52516e == bVar.f52516e && this.f52517f == bVar.f52517f;
    }

    public final long f() {
        return this.f52515d;
    }

    public int hashCode() {
        return (((((((((s.a(this.f52512a) * 31) + s.a(this.f52513b)) * 31) + s.a(this.f52514c)) * 31) + s.a(this.f52515d)) * 31) + s.a(this.f52516e)) * 31) + e.a(this.f52517f);
    }

    public String toString() {
        return "StartupMetrics(splashTTID=" + this.f52512a + ", adWaitDuration=" + this.f52513b + ", mainActivityTTID=" + this.f52514c + ", totalTTFD=" + this.f52515d + ", realTTFD=" + this.f52516e + ", hasAd=" + this.f52517f + ")";
    }
}
