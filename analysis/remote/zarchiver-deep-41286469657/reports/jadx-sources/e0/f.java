package e0;

import android.os.ParcelFileDescriptor;
import java.io.FileInputStream;
import java.io.IOException;
import ru.zdevs.zarchiver.archiver.NArc;

public final class f extends FileInputStream {

    public final NArc f678a;

    public final ParcelFileDescriptor f679b;

    public long f680c;

    public long f681d;

    public final long f682e;

    public boolean f683f;

    public volatile boolean f684g;

    /* JADX WARN: Illegal instructions before constructor call */
    public f(NArc nArc, int i2, long j2, long j3) {
        ParcelFileDescriptor parcelFileDescriptorAdoptFd = ParcelFileDescriptor.adoptFd(i2);
        super(parcelFileDescriptorAdoptFd.getFileDescriptor());
        this.f678a = nArc;
        this.f679b = parcelFileDescriptorAdoptFd;
        this.f680c = 0L;
        this.f681d = j2;
        this.f682e = j3;
        this.f683f = false;
        this.f684g = false;
    }

    @Override
    public final int available() {
        long j2 = this.f681d;
        if (j2 <= 0) {
            return 0;
        }
        long j3 = j2 - this.f680c;
        if (j3 > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) j3;
    }

    @Override
    public final void close() throws IOException {
        synchronized (this) {
            if (this.f684g) {
                return;
            }
            this.f684g = true;
            if (this.f678a.f1627c == this) {
                this.f678a.f1627c = null;
            }
            try {
                super.close();
                this.f681d = 0L;
                this.f679b.close();
                this.f678a.o(this.f682e);
                if (this.f683f) {
                    this.f678a.close();
                }
            } catch (Throwable th) {
                this.f681d = 0L;
                this.f679b.close();
                this.f678a.o(this.f682e);
                throw th;
            }
        }
    }

    @Override
    public final int read(byte[] bArr, int i2, int i3) throws IOException {
        int i4 = super.read(bArr, i2, i3);
        if (i4 > 0) {
            this.f680c += (long) i4;
        }
        return i4;
    }

    @Override
    public final long skip(long j2) throws IOException {
        long jSkip = super.skip(j2);
        if (jSkip > 0) {
            this.f680c += jSkip;
        }
        return jSkip;
    }
}
