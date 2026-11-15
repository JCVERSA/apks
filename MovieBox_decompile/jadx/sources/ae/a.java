package ae;

import java.lang.reflect.Array;
import java.util.Arrays;

public final class a {

    private final byte[][] f293a;

    private final int f294b;

    private final int f295c;

    public a(int i10, int i11) {
        this.f293a = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, i11, i10);
        this.f294b = i10;
        this.f295c = i11;
    }

    public void a(byte b10) {
        for (byte[] bArr : this.f293a) {
            Arrays.fill(bArr, b10);
        }
    }

    public byte b(int i10, int i11) {
        return this.f293a[i11][i10];
    }

    public byte[][] c() {
        return this.f293a;
    }

    public int d() {
        return this.f295c;
    }

    public int e() {
        return this.f294b;
    }

    public void f(int i10, int i11, int i12) {
        this.f293a[i11][i10] = (byte) i12;
    }

    public void g(int i10, int i11, boolean z10) {
        this.f293a[i11][i10] = z10 ? (byte) 1 : (byte) 0;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder((this.f294b * 2 * this.f295c) + 2);
        for (int i10 = 0; i10 < this.f295c; i10++) {
            byte[] bArr = this.f293a[i10];
            for (int i11 = 0; i11 < this.f294b; i11++) {
                byte b10 = bArr[i11];
                if (b10 == 0) {
                    sb2.append(" 0");
                } else if (b10 != 1) {
                    sb2.append("  ");
                } else {
                    sb2.append(" 1");
                }
            }
            sb2.append('\n');
        }
        return sb2.toString();
    }
}
