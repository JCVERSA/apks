package defpackage;

import java.io.OutputStream;

public final class hk5 extends OutputStream {
    public long b = 0;

    public long b() {
        return this.b;
    }

    @Override
    public void write(int i) {
        this.b++;
    }

    @Override
    public void write(byte[] bArr) {
        this.b += (long) bArr.length;
    }

    @Override
    public void write(byte[] bArr, int i, int i2) {
        int i3;
        if (i >= 0 && i <= bArr.length && i2 >= 0 && (i3 = i + i2) <= bArr.length && i3 >= 0) {
            this.b += (long) i2;
            return;
        }
        throw new IndexOutOfBoundsException();
    }
}
