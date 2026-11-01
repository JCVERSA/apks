package l0;

import android.content.ContentProviderClient;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import h0.h;
import java.io.FileInputStream;
import java.io.IOException;

public final class d extends FileInputStream {

    public final ContentProviderClient f1197a;

    public final ParcelFileDescriptor f1198b;

    public final h f1199c;

    public long f1200d;

    public long f1201e;

    public d(ContentProviderClient contentProviderClient, h hVar, ParcelFileDescriptor parcelFileDescriptor, long j2) {
        super(parcelFileDescriptor.getFileDescriptor());
        this.f1197a = contentProviderClient;
        this.f1198b = parcelFileDescriptor;
        this.f1199c = hVar;
        this.f1201e = j2;
    }

    @Override
    public final int available() {
        long j2 = this.f1201e;
        if (j2 <= 0) {
            return 0;
        }
        long j3 = j2 - this.f1200d;
        if (j3 > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) j3;
    }

    @Override
    public final void close() throws IOException {
        ParcelFileDescriptor parcelFileDescriptor = this.f1198b;
        ContentProviderClient contentProviderClient = this.f1197a;
        try {
            super.close();
        } finally {
            this.f1201e = 0L;
            parcelFileDescriptor.close();
            if (Build.VERSION.SDK_INT >= 24) {
                contentProviderClient.close();
            } else {
                contentProviderClient.release();
            }
        }
    }

    @Override
    public final int read(byte[] bArr, int i2, int i3) throws IOException {
        try {
            int i4 = super.read(bArr, i2, i3);
            if (i4 > 0) {
                this.f1200d += (long) i4;
            }
            return i4;
        } catch (IOException e2) {
            String strG = c.g(this.f1199c);
            if (strG != null) {
                throw new IOException(strG);
            }
            throw e2;
        }
    }

    @Override
    public final long skip(long j2) throws IOException {
        long jSkip = super.skip(j2);
        if (jSkip > 0) {
            this.f1200d += jSkip;
        }
        return jSkip;
    }
}
