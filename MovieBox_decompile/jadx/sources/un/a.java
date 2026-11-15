package un;

import androidx.collection.s;
import androidx.compose.foundation.e;
import kotlin.jvm.internal.Intrinsics;

public final class a implements p6.a {

    private String f73213a;

    private int f73214b;

    private int f73215c;

    private boolean f73216d;

    private long f73217e;

    private String f73218f;

    private int f73219g;

    public a(String str, int i10, int i11, boolean z10, long j10, String str2, int i12) {
        this.f73213a = str;
        this.f73214b = i10;
        this.f73215c = i11;
        this.f73216d = z10;
        this.f73217e = j10;
        this.f73218f = str2;
        this.f73219g = i12;
    }

    public final String a() {
        return this.f73213a;
    }

    public final int b() {
        return this.f73215c;
    }

    public final int c() {
        return this.f73219g;
    }

    public final String d() {
        return this.f73218f;
    }

    public final int e() {
        return this.f73214b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return Intrinsics.c(this.f73213a, aVar.f73213a) && this.f73214b == aVar.f73214b && this.f73215c == aVar.f73215c && this.f73216d == aVar.f73216d && this.f73217e == aVar.f73217e && Intrinsics.c(this.f73218f, aVar.f73218f) && this.f73219g == aVar.f73219g;
    }

    public final boolean f() {
        return this.f73216d;
    }

    public final void g(boolean z10) {
        this.f73216d = z10;
    }

    @Override
    public int getItemType() {
        return 2;
    }

    public int hashCode() {
        String str = this.f73213a;
        int iHashCode = (((((((((str == null ? 0 : str.hashCode()) * 31) + this.f73214b) * 31) + this.f73215c) * 31) + e.a(this.f73216d)) * 31) + s.a(this.f73217e)) * 31;
        String str2 = this.f73218f;
        return ((iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31) + this.f73219g;
    }

    public String toString() {
        return "CommentSubLoadMoreBean(commentId=" + this.f73213a + ", subCount=" + this.f73214b + ", currentCount=" + this.f73215c + ", isLoading=" + this.f73216d + ", createTime=" + this.f73217e + ", postId=" + this.f73218f + ", nextPage=" + this.f73219g + ")";
    }
}
