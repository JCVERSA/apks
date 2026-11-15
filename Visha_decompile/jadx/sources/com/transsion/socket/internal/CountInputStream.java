package com.transsion.socket.internal;

import java.io.IOException;
import java.io.InputStream;

public class CountInputStream extends InputStream {
    private InputStream mIn;
    long mCount = 0;
    int tmp = 0;
    private boolean mSkipCount = false;

    public CountInputStream(InputStream inputStream) {
        this.mIn = inputStream;
    }

    private void increase(int i) {
        if (i == -1 || this.mSkipCount) {
            return;
        }
        this.mCount += (long) i;
    }

    public void cancelSkip() {
        this.mSkipCount = false;
    }

    public void flagSkip() {
        this.mSkipCount = true;
    }

    public long getInputSize() {
        return this.mCount;
    }

    @Override
    public int read() throws IOException {
        int i = this.mIn.read();
        this.tmp = i;
        if (i != -1 && !this.mSkipCount) {
            this.mCount++;
        }
        return i;
    }

    public void resetCount() {
        this.mCount = 0L;
        setStopCount(false);
    }

    public void setStopCount(boolean z) {
        this.mSkipCount = z;
    }

    @Override
    public int read(byte[] bArr) throws IOException {
        int i = this.mIn.read(bArr, 0, bArr.length);
        this.tmp = i;
        increase(i);
        return this.tmp;
    }

    @Override
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int i3 = this.mIn.read(bArr, i, i2);
        this.tmp = i3;
        increase(i3);
        return this.tmp;
    }
}
