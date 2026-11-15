package com.bytedance.sdk.component.HiB.TKC.Sj.Sj;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;

class TKC implements Closeable {
    private int EjP;
    private int HiB;
    private final InputStream Sj;
    private byte[] TKC;
    private final Charset sP;

    public TKC(InputStream inputStream, Charset charset) {
        this(inputStream, 8192, charset);
    }

    private void TKC() throws IOException {
        InputStream inputStream = this.Sj;
        byte[] bArr = this.TKC;
        int i10 = inputStream.read(bArr, 0, bArr.length);
        if (i10 == -1) {
            throw new EOFException();
        }
        this.EjP = 0;
        this.HiB = i10;
    }

    @Override
    public void close() throws IOException {
        synchronized (this.Sj) {
            try {
                if (this.TKC != null) {
                    this.TKC = null;
                    this.Sj.close();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public boolean sP() {
        return this.HiB == -1;
    }

    public TKC(InputStream inputStream, int i10, Charset charset) {
        if (inputStream == null || charset == null) {
            throw null;
        }
        if (i10 < 0) {
            throw new IllegalArgumentException("capacity <= 0");
        }
        if (!charset.equals(EjP.Sj)) {
            throw new IllegalArgumentException("Unsupported encoding");
        }
        this.Sj = inputStream;
        this.sP = charset;
        this.TKC = new byte[i10];
    }

    /* JADX WARN: Code duplicated, block: B:21:0x002f  */
    public String Sj() throws IOException {
        int i10;
        byte[] bArr;
        int i11;
        synchronized (this.Sj) {
            try {
                if (this.TKC == null) {
                    throw new IOException("LineReader is closed");
                }
                if (this.EjP >= this.HiB) {
                    TKC();
                }
                for (int i12 = this.EjP; i12 != this.HiB; i12++) {
                    byte[] bArr2 = this.TKC;
                    if (bArr2[i12] == 10) {
                        int i13 = this.EjP;
                        if (i12 != i13) {
                            i11 = i12 - 1;
                            if (bArr2[i11] != 13) {
                                i11 = i12;
                            }
                        } else {
                            i11 = i12;
                        }
                        String str = new String(bArr2, i13, i11 - i13, this.sP.name());
                        this.EjP = i12 + 1;
                        return str;
                    }
                }
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream((this.HiB - this.EjP) + 80) {
                    @Override
                    public String toString() {
                        int i14 = ((ByteArrayOutputStream) this).count;
                        if (i14 > 0 && ((ByteArrayOutputStream) this).buf[i14 - 1] == 13) {
                            i14--;
                        }
                        try {
                            return new String(((ByteArrayOutputStream) this).buf, 0, i14, TKC.this.sP.name());
                        } catch (UnsupportedEncodingException e10) {
                            throw new AssertionError(e10);
                        }
                    }
                };
                loop1: while (true) {
                    byte[] bArr3 = this.TKC;
                    int i14 = this.EjP;
                    byteArrayOutputStream.write(bArr3, i14, this.HiB - i14);
                    this.HiB = -1;
                    TKC();
                    i10 = this.EjP;
                    while (i10 != this.HiB) {
                        bArr = this.TKC;
                        if (bArr[i10] == 10) {
                            break loop1;
                        }
                        i10++;
                    }
                }
                int i15 = this.EjP;
                if (i10 != i15) {
                    byteArrayOutputStream.write(bArr, i15, i10 - i15);
                }
                this.EjP = i10 + 1;
                return byteArrayOutputStream.toString();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
