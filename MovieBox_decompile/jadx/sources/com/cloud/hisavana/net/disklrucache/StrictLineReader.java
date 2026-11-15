package com.cloud.hisavana.net.disklrucache;

import com.cloud.hisavana.net.disklrucache.utils.DiskLruCacheUtil;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;

class StrictLineReader implements Closeable {

    private final InputStream f20776a;

    private final Charset f20777b;

    private byte[] f20778c;

    private int f20779d;

    private int f20780e;

    public StrictLineReader(InputStream inputStream, Charset charset) {
        this(inputStream, 8192, charset);
    }

    private void d() throws IOException {
        InputStream inputStream = this.f20776a;
        byte[] bArr = this.f20778c;
        int i10 = inputStream.read(bArr, 0, bArr.length);
        if (i10 == -1) {
            throw new EOFException();
        }
        this.f20779d = 0;
        this.f20780e = i10;
    }

    @Override
    public void close() {
        synchronized (this.f20776a) {
            try {
                if (this.f20778c != null) {
                    this.f20778c = null;
                    this.f20776a.close();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public boolean h() {
        return this.f20780e == -1;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x002f  */
    public String k() {
        int i10;
        byte[] bArr;
        int i11;
        synchronized (this.f20776a) {
            try {
                if (this.f20778c == null) {
                    throw new IOException("LineReader is closed");
                }
                if (this.f20779d >= this.f20780e) {
                    d();
                }
                for (int i12 = this.f20779d; i12 != this.f20780e; i12++) {
                    byte[] bArr2 = this.f20778c;
                    if (bArr2[i12] == 10) {
                        int i13 = this.f20779d;
                        if (i12 != i13) {
                            i11 = i12 - 1;
                            if (bArr2[i11] != 13) {
                                i11 = i12;
                            }
                        } else {
                            i11 = i12;
                        }
                        String str = new String(bArr2, i13, i11 - i13, this.f20777b.name());
                        this.f20779d = i12 + 1;
                        return str;
                    }
                }
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream((this.f20780e - this.f20779d) + 80) {
                    @Override
                    public String toString() {
                        int i14 = ((ByteArrayOutputStream) this).count;
                        if (i14 > 0 && ((ByteArrayOutputStream) this).buf[i14 - 1] == 13) {
                            i14--;
                        }
                        try {
                            return new String(((ByteArrayOutputStream) this).buf, 0, i14, StrictLineReader.this.f20777b.name());
                        } catch (UnsupportedEncodingException e10) {
                            throw new AssertionError(e10);
                        }
                    }
                };
                loop1: while (true) {
                    byte[] bArr3 = this.f20778c;
                    int i14 = this.f20779d;
                    byteArrayOutputStream.write(bArr3, i14, this.f20780e - i14);
                    this.f20780e = -1;
                    d();
                    i10 = this.f20779d;
                    while (i10 != this.f20780e) {
                        bArr = this.f20778c;
                        if (bArr[i10] == 10) {
                            break loop1;
                        }
                        i10++;
                    }
                }
                int i15 = this.f20779d;
                if (i10 != i15) {
                    byteArrayOutputStream.write(bArr, i15, i10 - i15);
                }
                this.f20779d = i10 + 1;
                return byteArrayOutputStream.toString();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public StrictLineReader(InputStream inputStream, int i10, Charset charset) {
        if (inputStream == null || charset == null) {
            throw null;
        }
        if (i10 < 0) {
            throw new IllegalArgumentException("capacity <= 0");
        }
        if (!charset.equals(DiskLruCacheUtil.f20792a)) {
            throw new IllegalArgumentException("Unsupported encoding");
        }
        this.f20776a = inputStream;
        this.f20777b = charset;
        this.f20778c = new byte[i10];
    }
}
