package defpackage;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;

public class f72 extends cl5 {
    public static final byte[] f = new byte[0];
    public final int d;
    public int e;

    public f72(InputStream inputStream, int i, int i2) {
        super(inputStream, i2);
        if (i <= 0) {
            if (i < 0) {
                throw new IllegalArgumentException("negative lengths not allowed");
            }
            d(true);
        }
        this.d = i;
        this.e = i;
    }

    public int e() {
        return this.e;
    }

    public void g(byte[] bArr) throws IOException {
        int i = this.e;
        if (i != bArr.length) {
            throw new IllegalArgumentException("buffer length not right for data");
        }
        if (i == 0) {
            return;
        }
        int iB = b();
        int i2 = this.e;
        if (i2 >= iB) {
            throw new IOException("corrupted stream - out of bounds length found: " + this.e + " >= " + iB);
        }
        int iD = i2 - fz9.d(this.b, bArr, 0, bArr.length);
        this.e = iD;
        if (iD == 0) {
            d(true);
            return;
        }
        throw new EOFException("DEF length " + this.d + " object truncated by " + this.e);
    }

    public byte[] h() throws IOException {
        if (this.e == 0) {
            return f;
        }
        int iB = b();
        int i = this.e;
        if (i >= iB) {
            throw new IOException("corrupted stream - out of bounds length found: " + this.e + " >= " + iB);
        }
        byte[] bArr = new byte[i];
        int iD = i - fz9.d(this.b, bArr, 0, i);
        this.e = iD;
        if (iD == 0) {
            d(true);
            return bArr;
        }
        throw new EOFException("DEF length " + this.d + " object truncated by " + this.e);
    }

    @Override
    public int read() throws IOException {
        if (this.e == 0) {
            return -1;
        }
        int i = this.b.read();
        if (i >= 0) {
            int i2 = this.e - 1;
            this.e = i2;
            if (i2 == 0) {
                d(true);
            }
            return i;
        }
        throw new EOFException("DEF length " + this.d + " object truncated by " + this.e);
    }

    @Override
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int i3 = this.e;
        if (i3 == 0) {
            return -1;
        }
        int i4 = this.b.read(bArr, i, Math.min(i2, i3));
        if (i4 >= 0) {
            int i5 = this.e - i4;
            this.e = i5;
            if (i5 == 0) {
                d(true);
            }
            return i4;
        }
        throw new EOFException("DEF length " + this.d + " object truncated by " + this.e);
    }
}
