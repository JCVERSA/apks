package defpackage;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;

public class hz4 extends cl5 {
    public int d;
    public int e;
    public boolean f;
    public boolean g;

    public hz4(InputStream inputStream, int i) throws IOException {
        super(inputStream, i);
        this.f = false;
        this.g = true;
        this.d = inputStream.read();
        int i2 = inputStream.read();
        this.e = i2;
        if (i2 < 0) {
            throw new EOFException();
        }
        e();
    }

    public final boolean e() {
        if (!this.f && this.g && this.d == 0 && this.e == 0) {
            this.f = true;
            d(true);
        }
        return this.f;
    }

    public void g(boolean z) {
        this.g = z;
        e();
    }

    @Override
    public int read() throws IOException {
        if (e()) {
            return -1;
        }
        int i = this.b.read();
        if (i < 0) {
            throw new EOFException();
        }
        int i2 = this.d;
        this.d = this.e;
        this.e = i;
        return i2;
    }

    @Override
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (this.g || i2 < 3) {
            return super.read(bArr, i, i2);
        }
        if (this.f) {
            return -1;
        }
        int i3 = this.b.read(bArr, i + 2, i2 - 2);
        if (i3 < 0) {
            throw new EOFException();
        }
        bArr[i] = (byte) this.d;
        bArr[i + 1] = (byte) this.e;
        this.d = this.b.read();
        int i4 = this.b.read();
        this.e = i4;
        if (i4 >= 0) {
            return i3 + 2;
        }
        throw new EOFException();
    }
}
