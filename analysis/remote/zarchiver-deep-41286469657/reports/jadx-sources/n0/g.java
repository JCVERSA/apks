package n0;

import android.os.ParcelFileDescriptor;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.InputStream;

public final class g extends InputStream {

    public final FileDescriptor f1249a;

    public final ParcelFileDescriptor f1250b;

    public final long f1253e;

    public final Object f1251c = new Object();

    public volatile boolean f1252d = false;

    public long f1254f = 0;

    public long f1255g = 0;

    public g(ParcelFileDescriptor parcelFileDescriptor, long j2) {
        this.f1249a = parcelFileDescriptor.getFileDescriptor();
        this.f1250b = parcelFileDescriptor;
        this.f1253e = j2;
    }

    @Override
    public final int available() {
        long j2 = this.f1253e - this.f1254f;
        if (j2 > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) j2;
    }

    @Override
    public final void close() throws IOException {
        synchronized (this.f1251c) {
            if (this.f1252d) {
                return;
            }
            this.f1252d = true;
            try {
                this.f1250b.close();
            } finally {
                super.close();
            }
        }
    }

    public final void finalize() throws IOException {
        close();
    }

    @Override
    public final synchronized void mark(int i2) {
        this.f1255g = this.f1254f;
    }

    @Override
    public final boolean markSupported() {
        return true;
    }

    @Override
    public final int read() {
        byte[] bArr = new byte[1];
        if (read(bArr, 0, 1) != -1) {
            return bArr[0] & 255;
        }
        return -1;
    }

    @Override
    public final synchronized void reset() {
        if (this.f1252d) {
            throw new IOException("Stream Closed");
        }
        try {
            Os.lseek(this.f1249a, this.f1255g, OsConstants.SEEK_SET);
            this.f1254f = this.f1255g;
        } catch (ErrnoException e2) {
            throw new IOException(e2.getMessage(), e2);
        }
    }

    @Override
    public final long skip(long j2) throws IOException {
        if (this.f1252d) {
            throw new IOException("Stream Closed");
        }
        long jMin = Math.min(j2, this.f1253e - this.f1254f);
        if (jMin <= 0) {
            return 0L;
        }
        try {
            Os.lseek(this.f1249a, jMin, OsConstants.SEEK_CUR);
            this.f1254f += jMin;
            return jMin;
        } catch (ErrnoException e2) {
            throw new IOException(e2.getMessage(), e2);
        }
    }

    @Override
    public final int read(byte[] bArr, int i2, int i3) throws IOException {
        if (this.f1252d && i3 > 0) {
            throw new IOException("Stream Closed");
        }
        int iMin = Math.min(i3, available());
        if (iMin <= 0) {
            return available() > 0 ? 0 : -1;
        }
        try {
            int i4 = Os.read(this.f1249a, bArr, i2, iMin);
            if (i4 <= 0) {
                return -1;
            }
            this.f1254f += (long) i4;
            return i4;
        } catch (ErrnoException e2) {
            throw new IOException(e2.getMessage(), e2);
        }
    }
}
