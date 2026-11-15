package cz;

import java.io.InputStream;

public abstract class b extends InputStream {

    private final byte[] f58669a = new byte[1];

    private long f58670b = 0;

    protected void b(int i10) {
        f(i10);
    }

    protected void f(long j10) {
        if (j10 != -1) {
            this.f58670b += j10;
        }
    }

    public long h() {
        return this.f58670b;
    }

    protected void j(long j10) {
        this.f58670b -= j10;
    }

    @Override
    public int read() {
        if (read(this.f58669a, 0, 1) == -1) {
            return -1;
        }
        return this.f58669a[0] & 255;
    }
}
