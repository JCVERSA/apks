package fl;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;

class l implements Closeable {

    private final InputStream f60237a;

    private final Charset f60238b;

    private byte[] f60239c;

    private int f60240d;

    private int f60241e;

    class a extends ByteArrayOutputStream {
        a(int i10) {
            super(i10);
        }

        @Override
        public String toString() {
            int i10 = ((ByteArrayOutputStream) this).count;
            if (i10 > 0) {
                int i11 = i10 - 1;
                if (((ByteArrayOutputStream) this).buf[i11] == 13) {
                    i10 = i11;
                }
            }
            try {
                return new String(((ByteArrayOutputStream) this).buf, 0, i10, l.this.f60238b.name());
            } catch (UnsupportedEncodingException e10) {
                throw new AssertionError(e10);
            }
        }
    }

    public l(InputStream inputStream, Charset charset) {
        if (inputStream == null || charset == null) {
            throw null;
        }
        if (!charset.equals(d.f60191a)) {
            throw new IllegalArgumentException("Unsupported encoding");
        }
        this.f60237a = inputStream;
        this.f60238b = charset;
        this.f60239c = new byte[8192];
    }

    private void k() throws IOException {
        InputStream inputStream = this.f60237a;
        byte[] bArr = this.f60239c;
        int i10 = inputStream.read(bArr, 0, bArr.length);
        if (i10 == -1) {
            throw new EOFException();
        }
        this.f60240d = 0;
        this.f60241e = i10;
    }

    @Override
    public void close() {
        synchronized (this.f60237a) {
            try {
                if (this.f60239c != null) {
                    this.f60239c = null;
                    this.f60237a.close();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public boolean d() {
        return this.f60241e == -1;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x002f  */
    public String h() {
        int i10;
        byte[] bArr;
        int i11;
        synchronized (this.f60237a) {
            try {
                if (this.f60239c == null) {
                    throw new IOException("LineReader is closed");
                }
                if (this.f60240d >= this.f60241e) {
                    k();
                }
                for (int i12 = this.f60240d; i12 != this.f60241e; i12++) {
                    byte[] bArr2 = this.f60239c;
                    if (bArr2[i12] == 10) {
                        int i13 = this.f60240d;
                        if (i12 != i13) {
                            i11 = i12 - 1;
                            if (bArr2[i11] != 13) {
                                i11 = i12;
                            }
                        } else {
                            i11 = i12;
                        }
                        String str = new String(bArr2, i13, i11 - i13, this.f60238b.name());
                        this.f60240d = i12 + 1;
                        return str;
                    }
                }
                a aVar = new a((this.f60241e - this.f60240d) + 80);
                loop1: while (true) {
                    byte[] bArr3 = this.f60239c;
                    int i14 = this.f60240d;
                    aVar.write(bArr3, i14, this.f60241e - i14);
                    this.f60241e = -1;
                    k();
                    i10 = this.f60240d;
                    while (i10 != this.f60241e) {
                        bArr = this.f60239c;
                        if (bArr[i10] == 10) {
                            break loop1;
                        }
                        i10++;
                    }
                }
                int i15 = this.f60240d;
                if (i10 != i15) {
                    aVar.write(bArr, i15, i10 - i15);
                }
                this.f60240d = i10 + 1;
                return aVar.toString();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
