package uz;

public abstract class y {
    y() {
    }

    public static byte c(y yVar, byte b10, byte b11) {
        int i10 = (b10 & 255) >> 3;
        int i11 = (b10 & 7) << 2;
        return (byte) ((yVar.f()[(((yVar.e() * b11) + ((yVar.a()[i10] >> i11) & 15)) & 255) >> 3] >> ((((b11 * yVar.e()) + ((yVar.a()[i10] >> i11) & 15)) & 7) << 2)) & 15);
    }

    public abstract int[] a();

    public abstract String b();

    public abstract boolean d();

    public abstract int e();

    public abstract int[] f();
}
