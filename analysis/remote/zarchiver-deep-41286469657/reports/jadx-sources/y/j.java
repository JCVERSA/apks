package y;

public final class j {

    public final int[] f2289a;

    public j(int[] iArr) {
        this.f2289a = (int[]) iArr.clone();
    }

    public static int a(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        return i2 | (i3 << 4) | (((i5 << 4) | i4) << 8) | (((((i9 << 4) | i8) << 8) | ((i7 << 4) | i6)) << 16);
    }
}
