package vx;

import androidx.collection.s;
import kotlin.jvm.internal.Intrinsics;

public final class b {

    private final int f73845a;

    private final long f73846b;

    private final long f73847c;

    private final String f73848d;

    public b(int i10, long j10, long j11, String str) {
        this.f73845a = i10;
        this.f73846b = j10;
        this.f73847c = j11;
        this.f73848d = str;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f73845a == bVar.f73845a && this.f73846b == bVar.f73846b && this.f73847c == bVar.f73847c && Intrinsics.c(this.f73848d, bVar.f73848d);
    }

    public int hashCode() {
        int iA = ((((this.f73845a * 31) + s.a(this.f73846b)) * 31) + s.a(this.f73847c)) * 31;
        String str = this.f73848d;
        return iA + (str == null ? 0 : str.hashCode());
    }

    public String toString() {
        return "Chapter(index=" + this.f73845a + ", start=" + this.f73846b + ", end=" + this.f73847c + ", title=" + this.f73848d + ")";
    }
}
