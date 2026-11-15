package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.io.Closeable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import okio.Buffer;
import okio.BufferedSink;

public final class ph0 implements Closeable {
    private static final Logger g = Logger.getLogger(gh0.class.getName());
    private final BufferedSink a;
    private final boolean b;
    private final Buffer c;
    private int d;
    private boolean e;
    private final lg0.b f;

    public ph0(BufferedSink bufferedSink, boolean z) {
        y45.j(bufferedSink, "sink");
        this.a = bufferedSink;
        this.b = z;
        Buffer buffer = new Buffer();
        this.c = buffer;
        this.d = 16384;
        this.f = new lg0.b(buffer);
    }

    public final synchronized void a(zx1 zx1Var) throws IOException {
        try {
            y45.j(zx1Var, "peerSettings");
            if (this.e) {
                throw new IOException("closed");
            }
            this.d = zx1Var.b(this.d);
            if (zx1Var.a() != -1) {
                this.f.b(zx1Var.a());
            }
            a(0, 0, 4, 1);
            this.a.flush();
        } catch (Throwable th) {
            throw th;
        }
    }

    public final int b() {
        return this.d;
    }

    @Override
    public final synchronized void close() throws IOException {
        this.e = true;
        this.a.close();
    }

    public final synchronized void flush() throws IOException {
        if (this.e) {
            throw new IOException("closed");
        }
        this.a.flush();
    }

    public final synchronized void b(zx1 zx1Var) throws IOException {
        int i;
        try {
            y45.j(zx1Var, "settings");
            if (this.e) {
                throw new IOException("closed");
            }
            int i2 = 0;
            a(0, zx1Var.d() * 6, 4, 0);
            while (i2 < 10) {
                if (zx1Var.c(i2)) {
                    if (i2 != 4) {
                        i = i2 != 7 ? i2 : 4;
                    } else {
                        i = 3;
                    }
                    this.a.writeShort(i);
                    this.a.writeInt(zx1Var.a(i2));
                }
                i2++;
            }
            this.a.flush();
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void a() throws IOException {
        try {
            if (!this.e) {
                if (this.b) {
                    Logger logger = g;
                    if (logger.isLoggable(Level.FINE)) {
                        logger.fine(g92.a(">> CONNECTION " + gh0.b.hex(), new Object[0]));
                    }
                    this.a.write(gh0.b);
                    this.a.flush();
                    return;
                }
                return;
            }
            throw new IOException("closed");
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void a(boolean z, int i, Buffer buffer, int i2) throws IOException {
        if (!this.e) {
            a(i, i2, 0, z ? 1 : 0);
            if (i2 > 0) {
                BufferedSink bufferedSink = this.a;
                y45.g(buffer);
                bufferedSink.write(buffer, i2);
            }
        } else {
            throw new IOException("closed");
        }
    }

    public final synchronized void a(int i, t50 t50Var, byte[] bArr) throws IOException {
        try {
            y45.j(t50Var, "errorCode");
            y45.j(bArr, "debugData");
            if (!this.e) {
                if (t50Var.a() != -1) {
                    a(0, bArr.length + 8, 7, 0);
                    this.a.writeInt(i);
                    this.a.writeInt(t50Var.a());
                    if (!(bArr.length == 0)) {
                        this.a.write(bArr);
                    }
                    this.a.flush();
                } else {
                    throw new IllegalArgumentException("errorCode.httpCode == -1");
                }
            } else {
                throw new IOException("closed");
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void a(int i, ArrayList arrayList, boolean z) throws IOException {
        y45.j(arrayList, "headerBlock");
        if (!this.e) {
            this.f.a(arrayList);
            long size = this.c.size();
            long jMin = Math.min(this.d, size);
            int i2 = size == jMin ? 4 : 0;
            if (z) {
                i2 |= 1;
            }
            a(i, (int) jMin, 1, i2);
            this.a.write(this.c, jMin);
            if (size > jMin) {
                long j = size - jMin;
                while (j > 0) {
                    long jMin2 = Math.min(this.d, j);
                    j -= jMin2;
                    a(i, (int) jMin2, 9, j == 0 ? 4 : 0);
                    this.a.write(this.c, jMin2);
                }
            }
        } else {
            throw new IOException("closed");
        }
    }

    public final synchronized void a(int i, int i2, boolean z) throws IOException {
        if (!this.e) {
            a(0, 8, 6, z ? 1 : 0);
            this.a.writeInt(i);
            this.a.writeInt(i2);
            this.a.flush();
        } else {
            throw new IOException("closed");
        }
    }

    public final synchronized void a(int i, t50 t50Var) throws IOException {
        y45.j(t50Var, "errorCode");
        if (!this.e) {
            if (t50Var.a() != -1) {
                a(i, 4, 3, 0);
                this.a.writeInt(t50Var.a());
                this.a.flush();
            } else {
                throw new IllegalArgumentException("Failed requirement.");
            }
        } else {
            throw new IOException("closed");
        }
    }

    public final synchronized void a(int i, long j) throws IOException {
        if (this.e) {
            throw new IOException("closed");
        }
        if (j != 0 && j <= 2147483647L) {
            a(i, 4, 8, 0);
            this.a.writeInt((int) j);
            this.a.flush();
        } else {
            throw new IllegalArgumentException(("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: " + j).toString());
        }
    }

    public final void a(int i, int i2, int i3, int i4) throws IOException {
        Logger logger = g;
        if (logger.isLoggable(Level.FINE)) {
            gh0.a.getClass();
            logger.fine(gh0.a(false, i, i2, i3, i4));
        }
        int i5 = this.d;
        if (i2 > i5) {
            throw new IllegalArgumentException(("FRAME_SIZE_ERROR length > " + i5 + ": " + i2).toString());
        }
        if ((Integer.MIN_VALUE & i) == 0) {
            g92.a(this.a, i2);
            this.a.writeByte(i3 & 255);
            this.a.writeByte(i4 & 255);
            this.a.writeInt(i & Integer.MAX_VALUE);
            return;
        }
        throw new IllegalArgumentException(("reserved bit set: " + i).toString());
    }
}
