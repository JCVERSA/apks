package e0;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.ParcelFileDescriptor;
import android.os.ProxyFileDescriptorCallback;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import java.io.FileDescriptor;
import java.io.InterruptedIOException;
import ru.zdevs.zarchiver.archiver.NArc;

public final class e extends ProxyFileDescriptorCallback implements d, Runnable {

    public volatile byte[] f668a;

    public final long[] f673f;

    public final NArc f674g;

    public final ParcelFileDescriptor f675h;

    public int f669b = 0;

    public FileDescriptor f670c = null;

    public String f671d = null;

    public long f672e = 0;

    public boolean f676i = false;

    public HandlerThread f677j = null;

    public e(long[] jArr, int i2, NArc nArc) {
        this.f673f = jArr;
        this.f668a = new byte[i2];
        this.f674g = nArc;
        this.f675h = ParcelFileDescriptor.adoptFd((int) jArr[0]);
    }

    @Override
    public final long a() {
        return this.f673f[2];
    }

    @Override
    public final boolean b() {
        return this.f674g != null;
    }

    @Override
    public final boolean c() {
        return !this.f676i;
    }

    @Override
    public final void d() {
        if (this.f671d != null) {
            w0.c.h(this);
        } else {
            onRelease();
        }
    }

    public final void e(int i2) throws ErrnoException {
        int i3;
        if (this.f676i) {
            return;
        }
        while (this.f669b < i2) {
            try {
                i3 = Os.read(this.f675h.getFileDescriptor(), this.f668a, this.f669b, 2048);
            } catch (InterruptedIOException unused) {
                i3 = -1;
            }
            if (i3 <= 0) {
                if (this.f676i) {
                    return;
                }
                this.f676i = true;
                n0.e.c(this.f675h);
                try {
                    Thread.sleep(50L);
                } catch (InterruptedException unused2) {
                }
                n0.e.d(this.f674g);
                return;
            }
            this.f669b += i3;
        }
    }

    public final void f() {
        HandlerThread handlerThread = this.f677j;
        this.f677j = null;
        if (handlerThread != null) {
            handlerThread.quitSafely();
        }
        try {
            String str = this.f671d;
            if (str != null) {
                Os.remove(str);
                this.f671d = null;
            }
        } catch (ErrnoException unused) {
        }
    }

    public final void finalize() {
        f();
    }

    public final boolean g() throws ErrnoException {
        if (this.f673f[1] > 0 && this.f668a.length >= this.f673f[1]) {
            return false;
        }
        if (this.f670c == null) {
            if (!v0.h.e(null)) {
                n0.e.h();
                a0.c.Z(null);
                throw null;
            }
            String strI = a0.c.i(n0.e.h(), "~" + System.currentTimeMillis() + ".tmp");
            this.f671d = strI;
            FileDescriptor fileDescriptorOpen = Os.open(strI, OsConstants.O_RDWR | OsConstants.O_CREAT, 0);
            this.f670c = fileDescriptorOpen;
            if (fileDescriptorOpen == null) {
                return false;
            }
        }
        Os.lseek(this.f670c, 0L, OsConstants.SEEK_END);
        try {
            Os.write(this.f670c, this.f668a, 0, this.f669b);
            this.f672e += (long) this.f669b;
            this.f669b = 0;
            return true;
        } catch (InterruptedIOException unused) {
            return false;
        }
    }

    @Override
    public final Handler getHandler() {
        HandlerThread handlerThread = new HandlerThread("NFileDescriptorBufferedCallback");
        this.f677j = handlerThread;
        handlerThread.start();
        return new Handler(this.f677j.getLooper());
    }

    @Override
    public final boolean isOpen() {
        return (this.f670c == null && this.f668a == null) ? false : true;
    }

    @Override
    public final long onGetSize() {
        long j2 = this.f673f[1];
        return j2 > 0 ? j2 : this.f668a.length;
    }

    @Override
    public final int onRead(long j2, int i2, byte[] bArr) throws ErrnoException {
        int iMin;
        long j3 = this.f672e;
        if (j2 < j3) {
            iMin = Math.min(i2, (int) (j3 - j2));
            Os.lseek(this.f670c, j2, OsConstants.SEEK_SET);
            try {
                Os.read(this.f670c, bArr, 0, iMin);
                if (iMin == i2) {
                    return iMin;
                }
            } catch (InterruptedIOException unused) {
                return 0;
            }
        } else {
            iMin = 0;
        }
        if (this.f668a == null) {
            return iMin;
        }
        while (((long) i2) + j2 > this.f672e + ((long) this.f668a.length)) {
            e(this.f668a.length);
            int i3 = this.f669b;
            if (i3 <= 0) {
                return iMin;
            }
            long j4 = ((long) iMin) + j2;
            long j5 = this.f672e;
            if (j4 >= j5 && j4 < ((long) i3) + j5) {
                int i4 = (int) (j4 - j5);
                System.arraycopy(this.f668a, i4, bArr, iMin, this.f669b - i4);
                iMin = (this.f669b - i4) + iMin;
            }
            if (!g()) {
                return iMin;
            }
        }
        long j6 = this.f672e;
        long j7 = j2 + ((long) iMin);
        if (j6 <= j7) {
            int i5 = (int) (j7 - j6);
            int iMin2 = Math.min(this.f668a.length - i5, i2 - iMin);
            if (iMin2 == 0) {
                return iMin;
            }
            int i6 = i5 + iMin2;
            if (i6 > this.f669b) {
                e(i6);
            }
            int i7 = this.f669b;
            if (i6 > i7) {
                iMin2 = i7 - i5;
            }
            if (iMin2 < 0) {
                return 0;
            }
            System.arraycopy(this.f668a, i5, bArr, iMin, iMin2);
            iMin += iMin2;
            if (this.f676i && g()) {
                this.f668a = null;
            }
        }
        return iMin;
    }

    @Override
    public final void onRelease() {
        this.f668a = null;
        if (!this.f676i) {
            this.f676i = true;
            n0.e.c(this.f675h);
            try {
                Thread.sleep(50L);
            } catch (InterruptedException unused) {
            }
            n0.e.d(this.f674g);
        }
        try {
            FileDescriptor fileDescriptor = this.f670c;
            if (fileDescriptor != null) {
                Os.close(fileDescriptor);
                this.f670c = null;
            }
        } catch (ErrnoException unused2) {
        }
        f();
    }

    @Override
    public final void run() {
        onRelease();
    }
}
