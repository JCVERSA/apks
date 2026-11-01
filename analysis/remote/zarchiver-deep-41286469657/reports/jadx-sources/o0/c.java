package o0;

import android.os.HandlerThread;
import android.os.ProxyFileDescriptorCallback;
import android.system.ErrnoException;
import android.system.OsConstants;
import java.io.FileNotFoundException;
import java.io.IOException;

public final class c extends ProxyFileDescriptorCallback {

    public final int f1297a;

    public final String f1298b;

    public final long f1299c;

    public n0.f f1300d;

    public d f1301e;

    public long f1302f = 0;

    public HandlerThread f1303g;

    public c(int i2, String str, long j2, boolean z2) {
        this.f1297a = i2;
        this.f1298b = str;
        this.f1299c = j2;
        if (z2) {
            this.f1300d = n0.f.a(i2, str);
        } else {
            this.f1301e = d.a(i2, str);
        }
        this.f1303g = null;
    }

    public final void finalize() {
        HandlerThread handlerThread = this.f1303g;
        this.f1303g = null;
        if (handlerThread != null) {
            handlerThread.quitSafely();
        }
    }

    @Override
    public final long onGetSize() {
        return this.f1300d != null ? this.f1299c : this.f1302f;
    }

    @Override
    public final int onRead(long j2, int i2, byte[] bArr) throws ErrnoException {
        n0.f fVar = this.f1300d;
        if (fVar == null) {
            throw new ErrnoException("onRead", OsConstants.EBADF);
        }
        long j3 = 0;
        if (this.f1302f > j2) {
            try {
                n0.e.d(fVar);
                this.f1300d = n0.f.a(this.f1297a, this.f1298b);
                this.f1302f = 0L;
            } catch (FileNotFoundException e2) {
                throw new ErrnoException(e2.getMessage(), -1);
            }
        }
        long j4 = this.f1302f;
        if (j4 < j2) {
            long j5 = j2 - j4;
            if (j5 > 0) {
                int iMin = (int) Math.min(2048L, j5);
                byte[] bArr2 = new byte[iMin];
                long j6 = j5;
                while (j6 > 0) {
                    try {
                        int i3 = this.f1300d.read(bArr2, 0, (int) Math.min(iMin, j6));
                        if (i3 < 0) {
                            break;
                        }
                        j6 -= (long) i3;
                    } catch (IOException e3) {
                        throw new ErrnoException(e3.getMessage(), OsConstants.EINTR);
                    }
                }
                j3 = j5 - j6;
            }
            long j7 = j4 + j3;
            this.f1302f = j7;
            if (j7 != j2) {
                return 0;
            }
        }
        int i4 = i2;
        while (i4 > 0) {
            try {
                int i5 = i2 - i4;
                int i6 = this.f1300d.read(bArr, i5, i4);
                if (i6 <= 0) {
                    return i5;
                }
                i4 -= i6;
                this.f1302f += (long) i6;
            } catch (IOException unused) {
                throw new ErrnoException("onRead", OsConstants.EIO);
            }
        }
        return i2 - i4;
    }

    @Override
    public final void onRelease() {
        n0.e.d(this.f1300d);
        this.f1300d = null;
        n0.e.d(this.f1301e);
        this.f1301e = null;
        HandlerThread handlerThread = this.f1303g;
        this.f1303g = null;
        if (handlerThread != null) {
            handlerThread.quitSafely();
        }
    }

    @Override
    public final int onWrite(long j2, int i2, byte[] bArr) throws ErrnoException {
        d dVar = this.f1301e;
        if (dVar == null) {
            throw new ErrnoException("onWrite", OsConstants.EBADF);
        }
        if (this.f1302f != j2) {
            dVar.f1305b = false;
            return 0;
        }
        try {
            dVar.write(bArr, 0, i2);
            this.f1302f += (long) i2;
            return i2;
        } catch (IOException unused) {
            this.f1301e.f1305b = false;
            throw new ErrnoException("onWrite", OsConstants.EIO);
        }
    }
}
