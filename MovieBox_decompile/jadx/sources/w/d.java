package w;

public final class d {

    public static final d f74079a = new d();

    private d() {
    }

    public static final void a(int i10, int i11) {
        if (i10 < 0 || i10 >= i11) {
            throw new IndexOutOfBoundsException("index: " + i10 + ", size: " + i11);
        }
    }

    public static final void b(int i10, int i11) {
        if (i10 < 0 || i10 > i11) {
            throw new IndexOutOfBoundsException("index: " + i10 + ", size: " + i11);
        }
    }

    public static final void c(int i10, int i11, int i12) {
        if (i10 < 0 || i11 > i12) {
            throw new IndexOutOfBoundsException("fromIndex: " + i10 + ", toIndex: " + i11 + ", size: " + i12);
        }
        if (i10 <= i11) {
            return;
        }
        throw new IllegalArgumentException("fromIndex: " + i10 + " > toIndex: " + i11);
    }
}
