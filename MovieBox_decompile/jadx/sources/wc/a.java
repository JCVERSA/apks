package wc;

import com.google.firebase.perf.metrics.i;
import com.google.firebase.perf.util.Timer;
import java.io.IOException;
import java.io.InputStream;

public final class a extends InputStream {

    private final InputStream f74247a;

    private final i f74248b;

    private final Timer f74249c;

    private long f74251e;

    private long f74250d = -1;

    private long f74252f = -1;

    public a(InputStream inputStream, i iVar, Timer timer) {
        this.f74249c = timer;
        this.f74247a = inputStream;
        this.f74248b = iVar;
        this.f74251e = iVar.c();
    }

    @Override
    public int available() throws IOException {
        try {
            return this.f74247a.available();
        } catch (IOException e10) {
            this.f74248b.o(this.f74249c.getDurationMicros());
            f.d(this.f74248b);
            throw e10;
        }
    }

    @Override
    public void close() throws IOException {
        long durationMicros = this.f74249c.getDurationMicros();
        if (this.f74252f == -1) {
            this.f74252f = durationMicros;
        }
        try {
            this.f74247a.close();
            long j10 = this.f74250d;
            if (j10 != -1) {
                this.f74248b.m(j10);
            }
            long j11 = this.f74251e;
            if (j11 != -1) {
                this.f74248b.p(j11);
            }
            this.f74248b.o(this.f74252f);
            this.f74248b.a();
        } catch (IOException e10) {
            this.f74248b.o(this.f74249c.getDurationMicros());
            f.d(this.f74248b);
            throw e10;
        }
    }

    @Override
    public void mark(int i10) {
        this.f74247a.mark(i10);
    }

    @Override
    public boolean markSupported() {
        return this.f74247a.markSupported();
    }

    @Override
    public int read() throws IOException {
        try {
            int i10 = this.f74247a.read();
            long durationMicros = this.f74249c.getDurationMicros();
            if (this.f74251e == -1) {
                this.f74251e = durationMicros;
            }
            if (i10 == -1 && this.f74252f == -1) {
                this.f74252f = durationMicros;
                this.f74248b.o(durationMicros);
                this.f74248b.a();
            } else {
                long j10 = this.f74250d + 1;
                this.f74250d = j10;
                this.f74248b.m(j10);
            }
            return i10;
        } catch (IOException e10) {
            this.f74248b.o(this.f74249c.getDurationMicros());
            f.d(this.f74248b);
            throw e10;
        }
    }

    @Override
    public void reset() throws IOException {
        try {
            this.f74247a.reset();
        } catch (IOException e10) {
            this.f74248b.o(this.f74249c.getDurationMicros());
            f.d(this.f74248b);
            throw e10;
        }
    }

    @Override
    public long skip(long j10) throws IOException {
        try {
            long jSkip = this.f74247a.skip(j10);
            long durationMicros = this.f74249c.getDurationMicros();
            if (this.f74251e == -1) {
                this.f74251e = durationMicros;
            }
            if (jSkip == -1 && this.f74252f == -1) {
                this.f74252f = durationMicros;
                this.f74248b.o(durationMicros);
            } else {
                long j11 = this.f74250d + jSkip;
                this.f74250d = j11;
                this.f74248b.m(j11);
            }
            return jSkip;
        } catch (IOException e10) {
            this.f74248b.o(this.f74249c.getDurationMicros());
            f.d(this.f74248b);
            throw e10;
        }
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        try {
            int i12 = this.f74247a.read(bArr, i10, i11);
            long durationMicros = this.f74249c.getDurationMicros();
            if (this.f74251e == -1) {
                this.f74251e = durationMicros;
            }
            if (i12 == -1 && this.f74252f == -1) {
                this.f74252f = durationMicros;
                this.f74248b.o(durationMicros);
                this.f74248b.a();
            } else {
                long j10 = this.f74250d + ((long) i12);
                this.f74250d = j10;
                this.f74248b.m(j10);
            }
            return i12;
        } catch (IOException e10) {
            this.f74248b.o(this.f74249c.getDurationMicros());
            f.d(this.f74248b);
            throw e10;
        }
    }

    @Override
    public int read(byte[] bArr) throws IOException {
        try {
            int i10 = this.f74247a.read(bArr);
            long durationMicros = this.f74249c.getDurationMicros();
            if (this.f74251e == -1) {
                this.f74251e = durationMicros;
            }
            if (i10 == -1 && this.f74252f == -1) {
                this.f74252f = durationMicros;
                this.f74248b.o(durationMicros);
                this.f74248b.a();
            } else {
                long j10 = this.f74250d + ((long) i10);
                this.f74250d = j10;
                this.f74248b.m(j10);
            }
            return i10;
        } catch (IOException e10) {
            this.f74248b.o(this.f74249c.getDurationMicros());
            f.d(this.f74248b);
            throw e10;
        }
    }
}
