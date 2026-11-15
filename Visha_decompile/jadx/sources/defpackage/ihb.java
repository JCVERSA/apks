package defpackage;

import kotlin.jvm.internal.DefaultConstructorMarker;

public final class ihb {
    public int a;
    public long b;
    public long c;
    public String d;

    public ihb(int i, long j, long j2, String str) {
        y45.j(str, "url");
        this.a = i;
        this.b = j;
        this.c = j2;
        this.d = str;
    }

    public final int a() {
        return this.a;
    }

    public final long b() {
        return this.c;
    }

    public final long c() {
        return this.b;
    }

    public final String d() {
        return this.d;
    }

    public final void e(String str) {
        y45.j(str, "<set-?>");
        this.d = str;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ihb)) {
            return false;
        }
        ihb ihbVar = (ihb) obj;
        return this.a == ihbVar.a && this.b == ihbVar.b && this.c == ihbVar.c && y45.e(this.d, ihbVar.d);
    }

    public int hashCode() {
        return (((((Integer.hashCode(this.a) * 31) + Long.hashCode(this.b)) * 31) + Long.hashCode(this.c)) * 31) + this.d.hashCode();
    }

    public String toString() {
        return "UploadChunkInfo(current=" + this.a + ", start=" + this.b + ", end=" + this.c + ", url=" + this.d + ")";
    }

    public ihb(int i, long j, long j2, String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, j, j2, (i2 & 8) != 0 ? "" : str);
    }
}
