package defpackage;

public final class yu0 extends xu0 {
    public static final yu0 c = new yu0();

    public final void c(char[] cArr) {
        y45.j(cArr, "array");
        if (cArr.length == 16384) {
            a(cArr);
            return;
        }
        throw new IllegalArgumentException(("Inconsistent internal invariant: unexpected array size " + cArr.length).toString());
    }

    public final char[] d() {
        return super.b(16384);
    }
}
