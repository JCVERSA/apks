package androidx.compose.ui.text;

import kotlin.jvm.internal.Intrinsics;

public final class n {

    private final o f5988a;

    private final int f5989b;

    private final int f5990c;

    public n(o oVar, int i10, int i11) {
        this.f5988a = oVar;
        this.f5989b = i10;
        this.f5990c = i11;
    }

    public final int a() {
        return this.f5990c;
    }

    public final o b() {
        return this.f5988a;
    }

    public final int c() {
        return this.f5989b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof n)) {
            return false;
        }
        n nVar = (n) obj;
        return Intrinsics.c(this.f5988a, nVar.f5988a) && this.f5989b == nVar.f5989b && this.f5990c == nVar.f5990c;
    }

    public int hashCode() {
        return (((this.f5988a.hashCode() * 31) + this.f5989b) * 31) + this.f5990c;
    }

    public String toString() {
        return "ParagraphIntrinsicInfo(intrinsics=" + this.f5988a + ", startIndex=" + this.f5989b + ", endIndex=" + this.f5990c + ')';
    }
}
