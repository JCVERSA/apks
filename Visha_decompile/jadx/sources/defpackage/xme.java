package defpackage;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

public final class xme extends FilterInputStream {
    public final long b;
    public long c;

    public xme(InputStream inputStream, long j) {
        super(inputStream);
        this.b = j;
    }

    public final long b() {
        return this.b - this.c;
    }

    @Override
    public final int read() throws IOException {
        int i = super.read();
        if (i != -1) {
            this.c++;
        }
        return i;
    }

    @Override
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        int i3 = super.read(bArr, i, i2);
        if (i3 != -1) {
            this.c += (long) i3;
        }
        return i3;
    }
}
