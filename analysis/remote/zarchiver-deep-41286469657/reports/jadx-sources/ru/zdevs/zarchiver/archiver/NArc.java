package ru.zdevs.zarchiver.archiver;

import a0.c;
import android.content.Context;
import android.os.ParcelFileDescriptor;
import android.os.storage.StorageManager;
import e0.f;
import e0.g;
import e0.h;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import n0.e;
import ru.zdevs.zarchiver.ZApp;

public class NArc implements Closeable {

    public volatile long f1625a;

    public final String f1626b;

    public volatile Closeable f1627c = null;

    public final Object f1628d = new Object();

    public static class NArcException extends Exception {
        public NArcException(String str) {
            super(str);
        }
    }

    public static class NArcItem {
        private final long mMTime;
        private final String mPath;
        private final long mSize;

        public NArcItem(String str, long j2, long j3) {
            this.mPath = str;
            this.mSize = j2;
            this.mMTime = j3;
        }

        public long getModifyTime() {
            return this.mMTime;
        }

        public String getPath() {
            return this.mPath;
        }

        public long getSize() {
            if (isDir()) {
                return 0L;
            }
            return this.mSize;
        }

        public boolean isDir() {
            return this.mSize == -2;
        }
    }

    public static class NArcPasswordException extends NArcException {
        public NArcPasswordException() {
            super("Wrong password");
        }
    }

    public static class NArcStreamOutsidePipePosition extends NArcException {
        public NArcStreamOutsidePipePosition() {
            super("Stream outside pipe position");
        }
    }

    public NArc(long j2, String str) {
        this.f1625a = j2;
        this.f1626b = str;
    }

    private static native long cArchiveOpen(String str, String str2, String str3);

    private static native void cCancel(long j2);

    private static native void cClose(long j2);

    private static native NArcItem cGetItem(long j2, int i2, String str);

    private static native int cGetItemCount(long j2);

    private static native long[] cGetStream(long j2, int i2, String str);

    private static native int cSetComment(long j2, String str);

    private static native void cWaitEndStream(long j2, long j3);

    public static NArc j(String str) {
        return k(str, "zip", null);
    }

    public static NArc k(String str, String str2, String str3) {
        if (!C2JBridge.f1613c && !C2JBridge.e()) {
            throw new NArcException("Fail to load library");
        }
        long jCArchiveOpen = cArchiveOpen(str, str2, str3);
        if (jCArchiveOpen == 0) {
            return null;
        }
        c.y(str);
        return new NArc(jCArchiveOpen, str);
    }

    public static NArc l(String str) {
        return k(str, c.u(str), h.d().e(str) ? h.d().c(false) : null);
    }

    public final void a() {
        synchronized (this.f1628d) {
            if (!isClosed()) {
                cCancel(this.f1625a);
            }
        }
    }

    public final void b(InputStream inputStream) {
        e.d(inputStream);
        close();
    }

    public final void c() {
        Closeable closeable = this.f1627c;
        this.f1627c = null;
        if (!(closeable instanceof g)) {
            e.d(closeable);
            return;
        }
        try {
            g gVar = (g) closeable;
            if (gVar.f686b.c()) {
                gVar.close();
            }
        } catch (IOException unused) {
        }
    }

    @Override
    public final void close() {
        c.y(this.f1626b);
        synchronized (this.f1628d) {
            if (isClosed()) {
                return;
            }
            long j2 = this.f1625a;
            this.f1625a = 0L;
            c();
            synchronized (this) {
                cClose(j2);
            }
        }
    }

    public final ParcelFileDescriptor d(int i2, String str, int i3) {
        ZApp zApp = ZApp.f1434c;
        if (zApp == null) {
            return null;
        }
        return e(zApp, i2, str, i3, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [android.os.ProxyFileDescriptorCallback, e0.d] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r2v5, types: [android.os.storage.StorageManager] */
    public final synchronized ParcelFileDescriptor e(Context context, int i2, String str, int i3, boolean z2) {
        ?? aVar;
        try {
            if (isClosed()) {
                return null;
            }
            c();
            if (i2 >= 0 || str == null) {
                str = null;
            } else {
                try {
                    str = c.b0(str);
                } catch (IOException unused) {
                    return null;
                } catch (NArcStreamOutsidePipePosition unused2) {
                    String str2 = str;
                    if (m()) {
                        return e(context, i2, str2, i3, z2);
                    }
                    return null;
                }
            }
            long[] jArrCGetStream = cGetStream(this.f1625a, i2, str);
            if (jArrCGetStream == null) {
                return null;
            }
            if (i3 != 0) {
                long j2 = jArrCGetStream[1];
                aVar = new e0.e(jArrCGetStream, Math.min(i3, j2 > 0 ? (int) j2 : Integer.MAX_VALUE), z2 ? this : null);
            } else {
                aVar = new a(this, i2, str, jArrCGetStream, z2);
            }
            g gVar = new g(this, aVar, ((StorageManager) context.getSystemService("storage")).openProxyFileDescriptor(268435456, aVar, aVar.getHandler()));
            this.f1627c = gVar;
            return gVar;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized NArcItem f(int i2) {
        if (isClosed()) {
            return null;
        }
        return cGetItem(this.f1625a, i2, null);
    }

    public final void finalize() {
        if (isClosed()) {
            return;
        }
        close();
    }

    public final synchronized int g() {
        if (isClosed()) {
            return 0;
        }
        int iCGetItemCount = cGetItemCount(this.f1625a);
        return iCGetItemCount >= 0 ? iCGetItemCount : 0;
    }

    public final synchronized f h(int i2, String str) {
        if (isClosed()) {
            return null;
        }
        c();
        try {
            long[] jArrCGetStream = cGetStream(this.f1625a, i2, str == null ? null : c.b0(str));
            if (jArrCGetStream == null) {
                return null;
            }
            f fVar = new f(this, (int) jArrCGetStream[0], jArrCGetStream[1], jArrCGetStream[2]);
            this.f1627c = fVar;
            return fVar;
        } catch (NArcStreamOutsidePipePosition unused) {
            if (m()) {
                return h(i2, str);
            }
            return null;
        }
    }

    public final synchronized long[] i(int i2, String str) {
        if (isClosed()) {
            return null;
        }
        try {
            return cGetStream(this.f1625a, i2, str);
        } catch (NArcStreamOutsidePipePosition unused) {
            if (m()) {
                return i(i2, str);
            }
            return null;
        }
    }

    public final boolean isClosed() {
        return this.f1625a == 0;
    }

    public final synchronized boolean m() {
        if (isClosed()) {
            return false;
        }
        close();
        this.f1625a = cArchiveOpen(this.f1626b, null, null);
        return this.f1625a != 0;
    }

    public final synchronized int n(String str) {
        if (isClosed()) {
            return -1;
        }
        return cSetComment(this.f1625a, str);
    }

    public final synchronized void o(long j2) {
        if (isClosed()) {
            return;
        }
        cWaitEndStream(this.f1625a, j2);
    }
}
