package ex;

import kotlin.jvm.internal.Intrinsics;

public final class g {

    private String f59848a;

    private String f59849b;

    private int f59850c;

    private long f59851d;

    private int f59852e;

    private int f59853f;

    public g(String str, String str2, int i10) {
        this.f59848a = str;
        this.f59849b = str2;
        this.f59850c = i10;
    }

    public final int a() {
        return this.f59853f;
    }

    public final int b() {
        return this.f59852e;
    }

    public final long c() {
        return this.f59851d;
    }

    public final void d(int i10) {
        this.f59853f = i10;
    }

    public final void e(int i10) {
        this.f59852e = i10;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        return Intrinsics.c(this.f59848a, gVar.f59848a) && Intrinsics.c(this.f59849b, gVar.f59849b) && this.f59850c == gVar.f59850c;
    }

    public final void f(long j10) {
        this.f59851d = j10;
    }

    public int hashCode() {
        String str = this.f59848a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f59849b;
        return ((iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31) + this.f59850c;
    }

    public String toString() {
        return "DownloadStat(url=" + this.f59848a + ", taskId=" + this.f59849b + ", status=" + this.f59850c + ")";
    }
}
