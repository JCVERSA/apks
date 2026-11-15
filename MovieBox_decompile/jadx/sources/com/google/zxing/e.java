package com.google.zxing;

public abstract class e {

    private final int f32074a;

    private final int f32075b;

    protected e(int i10, int i11) {
        this.f32074a = i10;
        this.f32075b = i11;
    }

    public final int a() {
        return this.f32075b;
    }

    public abstract byte[] b();

    public abstract byte[] c(int i10, byte[] bArr);

    public final int d() {
        return this.f32074a;
    }

    public e e() {
        return new d(this);
    }

    public boolean f() {
        return false;
    }

    public e g() {
        throw new UnsupportedOperationException("This luminance source does not support rotation by 90 degrees.");
    }

    public final String toString() {
        char c10;
        int i10 = this.f32074a;
        byte[] bArrC = new byte[i10];
        StringBuilder sb2 = new StringBuilder(this.f32075b * (i10 + 1));
        for (int i11 = 0; i11 < this.f32075b; i11++) {
            bArrC = c(i11, bArrC);
            for (int i12 = 0; i12 < this.f32074a; i12++) {
                int i13 = bArrC[i12] & 255;
                if (i13 < 64) {
                    c10 = '#';
                } else if (i13 < 128) {
                    c10 = '+';
                } else {
                    c10 = i13 < 192 ? '.' : ' ';
                }
                sb2.append(c10);
            }
            sb2.append('\n');
        }
        return sb2.toString();
    }
}
