package defpackage;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

public final class f6i extends FilterInputStream {
    public long b;
    public long c;

    public f6i(InputStream inputStream, long j) {
        super(inputStream);
        this.c = -1L;
        inputStream.getClass();
        v2i.f(j >= 0, "limit must be non-negative");
        this.b = j;
    }

    @Override
    public final int available() {
        return (int) Math.min(((FilterInputStream) this).in.available(), this.b);
    }

    @Override
    public final synchronized void mark(int i) {
        ((FilterInputStream) this).in.mark(i);
        this.c = this.b;
    }

    @Override
    public final int read() throws IOException {
        if (this.b == 0) {
            return -1;
        }
        int i = ((FilterInputStream) this).in.read();
        if (i != -1) {
            this.b--;
        }
        return i;
    }

    @Override
    public final synchronized void reset() {
        if (!((FilterInputStream) this).in.markSupported()) {
            throw new IOException("Mark not supported");
        }
        if (this.c == -1) {
            throw new IOException("Mark not set");
        }
        ((FilterInputStream) this).in.reset();
        this.b = this.c;
    }

    @Override
    public final long skip(long j) throws IOException {
        long jSkip = ((FilterInputStream) this).in.skip(Math.min(j, this.b));
        this.b -= jSkip;
        return jSkip;
    }

    @Override
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        long j = this.b;
        if (j == 0) {
            return -1;
        }
        int i3 = ((FilterInputStream) this).in.read(bArr, i, (int) Math.min(i2, j));
        if (i3 != -1) {
            this.b -= (long) i3;
        }
        return i3;
    }
}
