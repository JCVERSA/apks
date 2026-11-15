package com.amazonaws.util;

import com.amazonaws.AmazonClientException;
import com.amazonaws.internal.SdkFilterInputStream;
import java.io.InputStream;

public class LengthCheckInputStream extends SdkFilterInputStream {

    private final long f18379a;

    private final boolean f18380b;

    private long f18381c;

    private long f18382d;

    public LengthCheckInputStream(InputStream inputStream, long j10, boolean z10) {
        super(inputStream);
        if (j10 < 0) {
            throw new IllegalArgumentException();
        }
        this.f18379a = j10;
        this.f18380b = z10;
    }

    private void l(boolean z10) {
        if (z10) {
            if (this.f18381c == this.f18379a) {
                return;
            }
            throw new AmazonClientException("Data read (" + this.f18381c + ") has a different length than the expected (" + this.f18379a + ")");
        }
        if (this.f18381c <= this.f18379a) {
            return;
        }
        throw new AmazonClientException("More data read (" + this.f18381c + ") than expected (" + this.f18379a + ")");
    }

    @Override
    public void mark(int i10) {
        super.mark(i10);
        this.f18382d = this.f18381c;
    }

    @Override
    public int read() {
        int i10 = super.read();
        if (i10 >= 0) {
            this.f18381c++;
        }
        l(i10 == -1);
        return i10;
    }

    @Override
    public void reset() {
        super.reset();
        if (super.markSupported()) {
            this.f18381c = this.f18382d;
        }
    }

    @Override
    public long skip(long j10) {
        long jSkip = super.skip(j10);
        if (this.f18380b && jSkip > 0) {
            this.f18381c += jSkip;
            l(false);
        }
        return jSkip;
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) {
        int i12 = super.read(bArr, i10, i11);
        this.f18381c += i12 >= 0 ? i12 : 0L;
        l(i12 == -1);
        return i12;
    }
}
