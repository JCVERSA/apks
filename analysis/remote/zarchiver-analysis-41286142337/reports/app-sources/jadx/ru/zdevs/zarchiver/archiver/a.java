package ru.zdevs.zarchiver.archiver;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.ParcelFileDescriptor;
import android.os.ProxyFileDescriptorCallback;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import e0.d;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.InterruptedIOException;
import n0.e;

public final class a extends ProxyFileDescriptorCallback implements d {

    public final NArc f1629a;

    public final int f1630b;

    public final String f1631c;

    public long[] f1632d;

    public final boolean f1633e;

    public ParcelFileDescriptor f1635g;

    public boolean f1634f = false;

    public long f1636h = 0;

    public boolean f1637i = false;

    public HandlerThread f1638j = null;

    public a(NArc nArc, int i2, String str, long[] jArr, boolean z2) {
        this.f1629a = nArc;
        this.f1630b = i2;
        this.f1631c = str;
        this.f1632d = jArr;
        this.f1633e = z2;
        this.f1635g = ParcelFileDescriptor.adoptFd((int) jArr[0]);
    }

    @Override
    public final long a() {
        return this.f1632d[2];
    }

    @Override
    public final boolean b() {
        if (this.f1637i) {
            return false;
        }
        if (this.f1633e) {
            this.f1634f = true;
        }
        return this.f1634f;
    }

    @Override
    public final boolean c() {
        return !this.f1637i;
    }

    @Override
    public final void d() {
        onRelease();
    }

    public final void finalize() {
        HandlerThread handlerThread = this.f1638j;
        this.f1638j = null;
        if (handlerThread != null) {
            handlerThread.quitSafely();
        }
    }

    @Override
    public final Handler getHandler() {
        HandlerThread handlerThread = new HandlerThread("NFileDescriptorCallback");
        this.f1638j = handlerThread;
        handlerThread.start();
        return new Handler(this.f1638j.getLooper());
    }

    @Override
    public final boolean isOpen() {
        return !this.f1637i;
    }

    @Override
    public final long onGetSize() {
        return this.f1632d[1];
    }

    @Override
    public final int onRead(long j2, int i2, byte[] bArr) throws ErrnoException {
        if (this.f1637i) {
            return 0;
        }
        long j3 = 0;
        if (this.f1636h > j2) {
            long[] jArrI = null;
            try {
                ParcelFileDescriptor parcelFileDescriptor = this.f1635g;
                if (parcelFileDescriptor != null) {
                    parcelFileDescriptor.close();
                }
                this.f1635g = null;
            } catch (IOException unused) {
            }
            try {
                jArrI = this.f1629a.i(this.f1630b, this.f1631c);
            } catch (NArc.NArcPasswordException unused2) {
            }
            if (jArrI == null) {
                this.f1636h = 2147483647L;
                throw new ErrnoException("recreateStream", OsConstants.EIO);
            }
            this.f1636h = 0L;
            this.f1632d = jArrI;
            this.f1635g = ParcelFileDescriptor.adoptFd((int) jArrI[0]);
        }
        long j4 = this.f1636h;
        if (j4 < j2) {
            long j5 = j2 - j4;
            if (j5 > 0) {
                FileDescriptor fileDescriptor = this.f1635g.getFileDescriptor();
                int iMin = (int) Math.min(2048L, j5);
                byte[] bArr2 = new byte[iMin];
                long j6 = j5;
                while (j6 > 0) {
                    try {
                        int i3 = Os.read(fileDescriptor, bArr2, 0, (int) Math.min(iMin, j6));
                        if (i3 < 0) {
                            break;
                        }
                        j6 -= (long) i3;
                    } catch (InterruptedIOException e2) {
                        throw new ErrnoException(e2.getMessage(), OsConstants.EINTR);
                    }
                }
                j3 = j5 - j6;
            }
            long j7 = j4 + j3;
            this.f1636h = j7;
            if (j7 != j2) {
                return 0;
            }
        }
        int i4 = i2;
        while (i4 > 0) {
            try {
                int i5 = i2 - i4;
                int i6 = Os.read(this.f1635g.getFileDescriptor(), bArr, i5, i4);
                if (i6 <= 0) {
                    return i5;
                }
                i4 -= i6;
                this.f1636h += (long) i6;
            } catch (IOException unused3) {
                throw new ErrnoException("onRead", OsConstants.EIO);
            }
        }
        return i2 - i4;
    }

    @Override
    public final void onRelease() {
        if (this.f1637i) {
            return;
        }
        this.f1637i = true;
        e.c(this.f1635g);
        this.f1629a.a();
        if (this.f1634f) {
            this.f1629a.o(this.f1632d[2]);
        }
        if (this.f1633e) {
            try {
                Thread.sleep(50L);
            } catch (InterruptedException unused) {
            }
            e.d(this.f1629a);
        }
        HandlerThread handlerThread = this.f1638j;
        this.f1638j = null;
        if (handlerThread != null) {
            handlerThread.quitSafely();
        }
    }
}
