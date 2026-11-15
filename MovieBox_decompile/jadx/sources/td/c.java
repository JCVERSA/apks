package td;

import com.google.zxing.k;

public final class c {

    private final int f72698a;

    private final int[] f72699b;

    private final k[] f72700c;

    public c(int i10, int[] iArr, int i11, int i12, int i13) {
        this.f72698a = i10;
        this.f72699b = iArr;
        float f10 = i11;
        float f11 = i13;
        this.f72700c = new k[]{new k(f10, f11), new k(i12, f11)};
    }

    public k[] a() {
        return this.f72700c;
    }

    public int[] b() {
        return this.f72699b;
    }

    public int c() {
        return this.f72698a;
    }

    public boolean equals(Object obj) {
        return (obj instanceof c) && this.f72698a == ((c) obj).f72698a;
    }

    public int hashCode() {
        return this.f72698a;
    }
}
