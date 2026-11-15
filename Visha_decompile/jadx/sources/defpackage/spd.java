package defpackage;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;

public class spd implements Closeable {
    public final InputStream b;
    public final Charset c;
    public byte[] d;
    public int e;
    public int f;

    public class a extends ByteArrayOutputStream {
        public a(int i) {
            super(i);
        }

        @Override
        public String toString() {
            int i = ((ByteArrayOutputStream) this).count;
            if (i > 0) {
                int i2 = i - 1;
                if (((ByteArrayOutputStream) this).buf[i2] == 13) {
                    i = i2;
                }
            }
            try {
                return new String(((ByteArrayOutputStream) this).buf, 0, i, spd.this.c.name());
            } catch (UnsupportedEncodingException e) {
                throw new AssertionError(e);
            }
        }
    }

    public spd(InputStream inputStream, Charset charset) {
        if (inputStream == null || charset == null) {
            throw null;
        }
        if (!charset.equals(i9d.a)) {
            throw new IllegalArgumentException("Unsupported encoding");
        }
        this.b = inputStream;
        this.c = charset;
        this.d = new byte[8192];
    }

    public boolean b() {
        return this.f == -1;
    }

    @Override
    public void close() {
        synchronized (this.b) {
            try {
                if (this.d != null) {
                    this.d = null;
                    this.b.close();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x002f  */
    public String d() {
        int i;
        byte[] bArr;
        int i2;
        synchronized (this.b) {
            try {
                if (this.d == null) {
                    throw new IOException("LineReader is closed");
                }
                if (this.e >= this.f) {
                    e();
                }
                for (int i3 = this.e; i3 != this.f; i3++) {
                    byte[] bArr2 = this.d;
                    if (bArr2[i3] == 10) {
                        int i4 = this.e;
                        if (i3 != i4) {
                            i2 = i3 - 1;
                            if (bArr2[i2] != 13) {
                                i2 = i3;
                            }
                        } else {
                            i2 = i3;
                        }
                        String str = new String(bArr2, i4, i2 - i4, this.c.name());
                        this.e = i3 + 1;
                        return str;
                    }
                }
                a aVar = new a((this.f - this.e) + 80);
                loop1: while (true) {
                    byte[] bArr3 = this.d;
                    int i5 = this.e;
                    aVar.write(bArr3, i5, this.f - i5);
                    this.f = -1;
                    e();
                    i = this.e;
                    while (i != this.f) {
                        bArr = this.d;
                        if (bArr[i] == 10) {
                            break loop1;
                        }
                        i++;
                    }
                }
                int i6 = this.e;
                if (i != i6) {
                    aVar.write(bArr, i6, i - i6);
                }
                this.e = i + 1;
                return aVar.toString();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void e() throws IOException {
        InputStream inputStream = this.b;
        byte[] bArr = this.d;
        int i = inputStream.read(bArr, 0, bArr.length);
        if (i == -1) {
            throw new EOFException();
        }
        this.e = 0;
        this.f = i;
    }
}
