package defpackage;

public abstract class fn5 {
    public static void a(byte[] bArr, sb2 sb2Var) {
        sb2Var.update(bArr, 0, bArr.length);
    }

    public static void b(short s, sb2 sb2Var) {
        sb2Var.b((byte) (s >>> 8));
        sb2Var.b((byte) s);
    }

    public static void c(int i, sb2 sb2Var) {
        sb2Var.b((byte) (i >>> 24));
        sb2Var.b((byte) (i >>> 16));
        sb2Var.b((byte) (i >>> 8));
        sb2Var.b((byte) i);
    }
}
