package vx;

import kotlin.jvm.internal.Intrinsics;

public final class c {

    private final int f73849a;

    private final String f73850b;

    private final String f73851c;

    private final String f73852d;

    private final int f73853e;

    public c(int i10, String str, String codecName, String str2, int i11) {
        Intrinsics.h(codecName, "codecName");
        this.f73849a = i10;
        this.f73850b = str;
        this.f73851c = codecName;
        this.f73852d = str2;
        this.f73853e = i11;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return this.f73849a == cVar.f73849a && Intrinsics.c(this.f73850b, cVar.f73850b) && Intrinsics.c(this.f73851c, cVar.f73851c) && Intrinsics.c(this.f73852d, cVar.f73852d) && this.f73853e == cVar.f73853e;
    }

    public int hashCode() {
        int i10 = this.f73849a * 31;
        String str = this.f73850b;
        int iHashCode = (((i10 + (str == null ? 0 : str.hashCode())) * 31) + this.f73851c.hashCode()) * 31;
        String str2 = this.f73852d;
        return ((iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31) + this.f73853e;
    }

    public String toString() {
        return "SubtitleStream(index=" + this.f73849a + ", title=" + this.f73850b + ", codecName=" + this.f73851c + ", language=" + this.f73852d + ", disposition=" + this.f73853e + ")";
    }
}
