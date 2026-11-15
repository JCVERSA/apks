package com.amazonaws.services.s3.internal;

import com.amazonaws.internal.SdkFilterInputStream;
import java.io.IOException;
import java.io.InputStream;

public final class InputSubstream extends SdkFilterInputStream {

    private long f18009a;

    private final long f18010b;

    private final long f18011c;

    private final boolean f18012d;

    private long f18013e;

    public InputSubstream(InputStream inputStream, long j10, long j11, boolean z10) {
        super(inputStream);
        this.f18013e = 0L;
        this.f18009a = 0L;
        this.f18011c = j11;
        this.f18010b = j10;
        this.f18012d = z10;
    }

    @Override
    public int available() {
        long j10 = this.f18009a;
        long j11 = this.f18010b;
        return (int) Math.min(j10 < j11 ? this.f18011c : (this.f18011c + j11) - j10, super.available());
    }

    @Override
    public void close() throws IOException {
        if (this.f18012d) {
            super.close();
        }
    }

    @Override
    public synchronized void mark(int i10) {
        this.f18013e = this.f18009a;
        super.mark(i10);
    }

    @Override
    public int read() {
        byte[] bArr = new byte[1];
        int i10 = read(bArr, 0, 1);
        return i10 == -1 ? i10 : bArr[0];
    }

    @Override
    public synchronized void reset() {
        this.f18009a = this.f18013e;
        super.reset();
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) {
        long j10;
        long j11;
        while (true) {
            j10 = this.f18009a;
            j11 = this.f18010b;
            if (j10 >= j11) {
                break;
            }
            this.f18009a += super.skip(j11 - j10);
        }
        long j12 = (this.f18011c + j11) - j10;
        if (j12 <= 0) {
            return -1;
        }
        int i12 = super.read(bArr, i10, (int) Math.min(i11, j12));
        this.f18009a += (long) i12;
        return i12;
    }
}
