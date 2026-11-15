package org.brotli.dec;

import java.io.IOException;
import java.io.InputStream;

public class b extends InputStream {

    private byte[] f68460a;

    private int f68461b;

    private int f68462c;

    private final j f68463d;

    public b(InputStream inputStream) {
        this(inputStream, 16384, null);
    }

    @Override
    public void close() throws IOException {
        j.a(this.f68463d);
    }

    @Override
    public int read() throws IOException {
        if (this.f68462c >= this.f68461b) {
            byte[] bArr = this.f68460a;
            int i10 = read(bArr, 0, bArr.length);
            this.f68461b = i10;
            this.f68462c = 0;
            if (i10 == -1) {
                return -1;
            }
        }
        byte[] bArr2 = this.f68460a;
        int i11 = this.f68462c;
        this.f68462c = i11 + 1;
        return bArr2[i11] & 255;
    }

    public b(InputStream inputStream, int i10, byte[] bArr) throws IOException {
        j jVar = new j();
        this.f68463d = jVar;
        if (i10 <= 0) {
            throw new IllegalArgumentException("Bad buffer size:" + i10);
        }
        if (inputStream == null) {
            throw new IllegalArgumentException("source is null");
        }
        this.f68460a = new byte[i10];
        this.f68461b = 0;
        this.f68462c = 0;
        try {
            j.c(jVar, inputStream);
            if (bArr != null) {
                d.s(jVar, bArr);
            }
        } catch (BrotliRuntimeException e10) {
            throw new IOException("Brotli decoder initialization failed", e10);
        }
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        if (i10 < 0) {
            throw new IllegalArgumentException("Bad offset: " + i10);
        }
        if (i11 >= 0) {
            int i12 = i10 + i11;
            if (i12 > bArr.length) {
                throw new IllegalArgumentException("Buffer overflow: " + i12 + " > " + bArr.length);
            }
            if (i11 == 0) {
                return 0;
            }
            int iMax = Math.max(this.f68461b - this.f68462c, 0);
            if (iMax != 0) {
                iMax = Math.min(iMax, i11);
                System.arraycopy(this.f68460a, this.f68462c, bArr, i10, iMax);
                this.f68462c += iMax;
                i10 += iMax;
                i11 -= iMax;
                if (i11 == 0) {
                    return iMax;
                }
            }
            try {
                j jVar = this.f68463d;
                jVar.Z = bArr;
                jVar.U = i10;
                jVar.V = i11;
                jVar.W = 0;
                d.i(jVar);
                int i13 = this.f68463d.W;
                if (i13 == 0) {
                    return -1;
                }
                return i13 + iMax;
            } catch (BrotliRuntimeException e10) {
                throw new IOException("Brotli stream decoding failed", e10);
            }
        }
        throw new IllegalArgumentException("Bad length: " + i11);
    }
}
