package com.mbridge.msdk.thrid.okhttp.internal.http2;

import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

final class j implements Closeable {

    private static final Logger f37370g = Logger.getLogger(e.class.getName());

    private final com.mbridge.msdk.thrid.okio.d f37371a;

    private final boolean f37372b;

    private final com.mbridge.msdk.thrid.okio.c f37373c;

    private int f37374d;

    private boolean f37375e;

    final d.b f37376f;

    j(com.mbridge.msdk.thrid.okio.d dVar, boolean z10) {
        this.f37371a = dVar;
        this.f37372b = z10;
        com.mbridge.msdk.thrid.okio.c cVar = new com.mbridge.msdk.thrid.okio.c();
        this.f37373c = cVar;
        this.f37376f = new d.b(cVar);
        this.f37374d = 16384;
    }

    public synchronized void a(m mVar) throws IOException {
        try {
            if (this.f37375e) {
                throw new IOException("closed");
            }
            this.f37374d = mVar.c(this.f37374d);
            if (mVar.b() != -1) {
                this.f37376f.b(mVar.b());
            }
            a(0, 0, (byte) 4, (byte) 1);
            this.f37371a.flush();
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void b(m mVar) throws IOException {
        int i10;
        try {
            if (this.f37375e) {
                throw new IOException("closed");
            }
            int i11 = 0;
            a(0, mVar.d() * 6, (byte) 4, (byte) 0);
            while (i11 < 10) {
                if (mVar.d(i11)) {
                    if (i11 == 4) {
                        i10 = 3;
                    } else {
                        i10 = i11 == 7 ? 4 : i11;
                    }
                    this.f37371a.writeShort(i10);
                    this.f37371a.writeInt(mVar.a(i11));
                }
                i11++;
            }
            this.f37371a.flush();
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override
    public synchronized void close() throws IOException {
        this.f37375e = true;
        this.f37371a.close();
    }

    public synchronized void d() throws IOException {
        try {
            if (this.f37375e) {
                throw new IOException("closed");
            }
            if (this.f37372b) {
                Logger logger = f37370g;
                if (logger.isLoggable(Level.FINE)) {
                    logger.fine(com.mbridge.msdk.thrid.okhttp.internal.c.a(">> CONNECTION %s", e.f37250a.b()));
                }
                this.f37371a.write(e.f37250a.g());
                this.f37371a.flush();
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void flush() throws IOException {
        if (this.f37375e) {
            throw new IOException("closed");
        }
        this.f37371a.flush();
    }

    public int h() {
        return this.f37374d;
    }

    public synchronized void a(int i10, int i11, List<c> list) throws IOException {
        if (!this.f37375e) {
            this.f37376f.a(list);
            long size = this.f37373c.size();
            int iMin = (int) Math.min(this.f37374d - 4, size);
            long j10 = iMin;
            a(i10, iMin + 4, (byte) 5, size == j10 ? (byte) 4 : (byte) 0);
            this.f37371a.writeInt(i11 & Integer.MAX_VALUE);
            this.f37371a.a(this.f37373c, j10);
            if (size > j10) {
                b(i10, size - j10);
            }
        } else {
            throw new IOException("closed");
        }
    }

    private void b(int i10, long j10) throws IOException {
        while (j10 > 0) {
            int iMin = (int) Math.min(this.f37374d, j10);
            long j11 = iMin;
            j10 -= j11;
            a(i10, iMin, (byte) 9, j10 == 0 ? (byte) 4 : (byte) 0);
            this.f37371a.a(this.f37373c, j11);
        }
    }

    public synchronized void a(boolean z10, int i10, int i11, List<c> list) throws IOException {
        if (!this.f37375e) {
            a(z10, i10, list);
        } else {
            throw new IOException("closed");
        }
    }

    public synchronized void a(int i10, b bVar) throws IOException {
        if (!this.f37375e) {
            if (bVar.f37220a != -1) {
                a(i10, 4, (byte) 3, (byte) 0);
                this.f37371a.writeInt(bVar.f37220a);
                this.f37371a.flush();
            } else {
                throw new IllegalArgumentException();
            }
        } else {
            throw new IOException("closed");
        }
    }

    public synchronized void a(boolean z10, int i10, com.mbridge.msdk.thrid.okio.c cVar, int i11) throws IOException {
        if (!this.f37375e) {
            a(i10, z10 ? (byte) 1 : (byte) 0, cVar, i11);
        } else {
            throw new IOException("closed");
        }
    }

    void a(int i10, byte b10, com.mbridge.msdk.thrid.okio.c cVar, int i11) throws IOException {
        a(i10, i11, (byte) 0, b10);
        if (i11 > 0) {
            this.f37371a.a(cVar, i11);
        }
    }

    public synchronized void a(boolean z10, int i10, int i11) throws IOException {
        if (!this.f37375e) {
            a(0, 8, (byte) 6, z10 ? (byte) 1 : (byte) 0);
            this.f37371a.writeInt(i10);
            this.f37371a.writeInt(i11);
            this.f37371a.flush();
        } else {
            throw new IOException("closed");
        }
    }

    public synchronized void a(int i10, b bVar, byte[] bArr) throws IOException {
        try {
            if (!this.f37375e) {
                if (bVar.f37220a != -1) {
                    a(0, bArr.length + 8, (byte) 7, (byte) 0);
                    this.f37371a.writeInt(i10);
                    this.f37371a.writeInt(bVar.f37220a);
                    if (bArr.length > 0) {
                        this.f37371a.write(bArr);
                    }
                    this.f37371a.flush();
                } else {
                    throw e.a("errorCode.httpCode == -1", new Object[0]);
                }
            } else {
                throw new IOException("closed");
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void a(int i10, long j10) throws IOException {
        if (this.f37375e) {
            throw new IOException("closed");
        }
        if (j10 != 0 && j10 <= 2147483647L) {
            a(i10, 4, (byte) 8, (byte) 0);
            this.f37371a.writeInt((int) j10);
            this.f37371a.flush();
        } else {
            throw e.a("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s", Long.valueOf(j10));
        }
    }

    public void a(int i10, int i11, byte b10, byte b11) throws IOException {
        Logger logger = f37370g;
        if (logger.isLoggable(Level.FINE)) {
            logger.fine(e.a(false, i10, i11, b10, b11));
        }
        int i12 = this.f37374d;
        if (i11 > i12) {
            throw e.a("FRAME_SIZE_ERROR length > %d: %d", Integer.valueOf(i12), Integer.valueOf(i11));
        }
        if ((Integer.MIN_VALUE & i10) != 0) {
            throw e.a("reserved bit set: %s", Integer.valueOf(i10));
        }
        a(this.f37371a, i11);
        this.f37371a.writeByte(b10 & 255);
        this.f37371a.writeByte(b11 & 255);
        this.f37371a.writeInt(i10 & Integer.MAX_VALUE);
    }

    private static void a(com.mbridge.msdk.thrid.okio.d dVar, int i10) throws IOException {
        dVar.writeByte((i10 >>> 16) & 255);
        dVar.writeByte((i10 >>> 8) & 255);
        dVar.writeByte(i10 & 255);
    }

    void a(boolean z10, int i10, List<c> list) throws IOException {
        if (!this.f37375e) {
            this.f37376f.a(list);
            long size = this.f37373c.size();
            int iMin = (int) Math.min(this.f37374d, size);
            long j10 = iMin;
            byte b10 = size == j10 ? (byte) 4 : (byte) 0;
            if (z10) {
                b10 = (byte) (b10 | 1);
            }
            a(i10, iMin, (byte) 1, b10);
            this.f37371a.a(this.f37373c, j10);
            if (size > j10) {
                b(i10, size - j10);
                return;
            }
            return;
        }
        throw new IOException("closed");
    }
}
