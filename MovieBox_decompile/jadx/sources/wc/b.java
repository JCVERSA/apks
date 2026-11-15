package wc;

import com.google.firebase.perf.metrics.i;
import com.google.firebase.perf.util.Timer;
import java.io.IOException;
import java.io.OutputStream;

public final class b extends OutputStream {

    private final OutputStream f74253a;

    private final Timer f74254b;

    i f74255c;

    long f74256d = -1;

    public b(OutputStream outputStream, i iVar, Timer timer) {
        this.f74253a = outputStream;
        this.f74255c = iVar;
        this.f74254b = timer;
    }

    @Override
    public void close() throws IOException {
        long j10 = this.f74256d;
        if (j10 != -1) {
            this.f74255c.j(j10);
        }
        this.f74255c.n(this.f74254b.getDurationMicros());
        try {
            this.f74253a.close();
        } catch (IOException e10) {
            this.f74255c.o(this.f74254b.getDurationMicros());
            f.d(this.f74255c);
            throw e10;
        }
    }

    @Override
    public void flush() throws IOException {
        try {
            this.f74253a.flush();
        } catch (IOException e10) {
            this.f74255c.o(this.f74254b.getDurationMicros());
            f.d(this.f74255c);
            throw e10;
        }
    }

    @Override
    public void write(int i10) throws IOException {
        try {
            this.f74253a.write(i10);
            long j10 = this.f74256d + 1;
            this.f74256d = j10;
            this.f74255c.j(j10);
        } catch (IOException e10) {
            this.f74255c.o(this.f74254b.getDurationMicros());
            f.d(this.f74255c);
            throw e10;
        }
    }

    @Override
    public void write(byte[] bArr) throws IOException {
        try {
            this.f74253a.write(bArr);
            long length = this.f74256d + ((long) bArr.length);
            this.f74256d = length;
            this.f74255c.j(length);
        } catch (IOException e10) {
            this.f74255c.o(this.f74254b.getDurationMicros());
            f.d(this.f74255c);
            throw e10;
        }
    }

    @Override
    public void write(byte[] bArr, int i10, int i11) throws IOException {
        try {
            this.f74253a.write(bArr, i10, i11);
            long j10 = this.f74256d + ((long) i11);
            this.f74256d = j10;
            this.f74255c.j(j10);
        } catch (IOException e10) {
            this.f74255c.o(this.f74254b.getDurationMicros());
            f.d(this.f74255c);
            throw e10;
        }
    }
}
