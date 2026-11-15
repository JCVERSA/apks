package yd;

import java.lang.reflect.Array;

public final class a {

    private final b[] f76210a;

    private int f76211b;

    private final int f76212c;

    private final int f76213d;

    a(int i10, int i11) {
        b[] bVarArr = new b[i10];
        this.f76210a = bVarArr;
        int length = bVarArr.length;
        for (int i12 = 0; i12 < length; i12++) {
            this.f76210a[i12] = new b(((i11 + 4) * 17) + 1);
        }
        this.f76213d = i11 * 17;
        this.f76212c = i10;
        this.f76211b = -1;
    }

    b a() {
        return this.f76210a[this.f76211b];
    }

    public byte[][] b(int i10, int i11) {
        byte[][] bArr = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, this.f76212c * i11, this.f76213d * i10);
        int i12 = this.f76212c * i11;
        for (int i13 = 0; i13 < i12; i13++) {
            bArr[(i12 - i13) - 1] = this.f76210a[i13 / i11].b(i10);
        }
        return bArr;
    }

    void c() {
        this.f76211b++;
    }
}
