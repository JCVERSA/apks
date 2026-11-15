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
    public final InputStream b;
    public final Charset c;
    public byte[] d;
    public int e;
    public int f;

    public StrictLineReader(InputStream inputStream, Charset charset) {
        this(inputStream, 8192, charset);
    }

    private void fillBuf() throws IOException {
        InputStream inputStream = this.b;
        byte[] bArr = this.d;
        int i = inputStream.read(bArr, 0, bArr.length);
        if (i == -1) {
            throw new EOFException();
        }
        this.e = 0;
        this.f = i;
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
    public String readLine() throws IOException {
        int i;
        byte[] bArr;
        int i2;
        synchronized (this.b) {
            try {
                if (this.d == null) {
                    throw new IOException("LineReader is closed");
                }
                if (this.e >= this.f) {
                    fillBuf();
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
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream((this.f - this.e) + 80) {
                    @Override
                    public String toString() {
                        int i5 = ((ByteArrayOutputStream) this).count;
                        if (i5 > 0 && ((ByteArrayOutputStream) this).buf[i5 - 1] == 13) {
                            i5--;
                        }
                        try {
                            return new String(((ByteArrayOutputStream) this).buf, 0, i5, StrictLineReader.this.c.name());
                        } catch (UnsupportedEncodingException e) {
                            throw new AssertionError(e);
                        }
                    }
                };
                loop1: while (true) {
                    byte[] bArr3 = this.d;
                    int i5 = this.e;
                    byteArrayOutputStream.write(bArr3, i5, this.f - i5);
                    this.f = -1;
                    fillBuf();
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
                    byteArrayOutputStream.write(bArr, i6, i - i6);
                }
                this.e = i + 1;
                return byteArrayOutputStream.toString();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public StrictLineReader(InputStream inputStream, int i, Charset charset) {
        if (inputStream == null || charset == null) {
            throw null;
        }
        if (i < 0) {
            throw new IllegalArgumentException("capacity <= 0");
        }
        if (!charset.equals(DiskLruCacheUtil.a)) {
            throw new IllegalArgumentException("Unsupported encoding");
        }
        this.b = inputStream;
        this.c = charset;
        this.d = new byte[i];
    }
}
