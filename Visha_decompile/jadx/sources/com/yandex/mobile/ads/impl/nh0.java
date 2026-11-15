package com.yandex.mobile.ads.impl;

import defpackage.s15;
import defpackage.wn8;
import defpackage.y45;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;
import okio.Source;
import okio.Timeout;

public final class nh0 implements Closeable {
    private static final Logger e;
    public static final int f = 0;
    private final BufferedSource a;
    private final boolean b;
    private final b c;
    private final lg0.a d;

    public static final class a {
        public static int a(int i, int i2, int i3) throws IOException {
            if ((i2 & 8) != 0) {
                i--;
            }
            if (i3 <= i) {
                return i - i3;
            }
            throw new IOException("PROTOCOL_ERROR padding " + i3 + " > remaining length " + i);
        }

        public static Logger a() {
            return nh0.e;
        }
    }

    public static final class b implements Source {
        private final BufferedSource a;
        private int b;
        private int c;
        private int d;
        private int e;
        private int f;

        public b(BufferedSource bufferedSource) {
            y45.j(bufferedSource, "source");
            this.a = bufferedSource;
        }

        private final void b() throws IOException {
            int i = this.d;
            int iA = g92.a(this.a);
            this.e = iA;
            this.b = iA;
            int iA2 = g92.a(this.a.readByte());
            this.c = g92.a(this.a.readByte());
            int i2 = nh0.f;
            if (a.a().isLoggable(Level.FINE)) {
                Logger loggerA = a.a();
                gh0 gh0Var = gh0.a;
                int i3 = this.d;
                int i4 = this.b;
                int i5 = this.c;
                gh0Var.getClass();
                loggerA.fine(gh0.a(true, i3, i4, iA2, i5));
            }
            int i6 = this.a.readInt() & Integer.MAX_VALUE;
            this.d = i6;
            if (iA2 == 9) {
                if (i6 != i) {
                    throw new IOException("TYPE_CONTINUATION streamId changed");
                }
            } else {
                throw new IOException(iA2 + " != TYPE_CONTINUATION");
            }
        }

        public final int a() {
            return this.e;
        }

        public final void c(int i) {
            this.b = i;
        }

        @Override
        public final void close() throws IOException {
        }

        public final void d(int i) {
            this.f = i;
        }

        public final void e(int i) {
            this.d = i;
        }

        @Override
        public final long read(Buffer buffer, long j) throws IOException {
            y45.j(buffer, "sink");
            while (true) {
                int i = this.e;
                if (i != 0) {
                    long j2 = this.a.read(buffer, Math.min(j, i));
                    if (j2 == -1) {
                        return -1L;
                    }
                    this.e -= (int) j2;
                    return j2;
                }
                this.a.skip(this.f);
                this.f = 0;
                if ((this.c & 4) != 0) {
                    return -1L;
                }
                b();
            }
        }

        @Override
        public final Timeout getTimeout() {
            return this.a.getTimeout();
        }

        public final void a(int i) {
            this.c = i;
        }

        public final void b(int i) {
            this.e = i;
        }
    }

    public interface c {
        void a(int i, int i2, BufferedSource bufferedSource, boolean z) throws IOException;

        void a(int i, int i2, boolean z);

        void a(int i, long j);

        void a(int i, t50 t50Var);

        void a(int i, t50 t50Var, ByteString byteString);

        void a(int i, List list) throws IOException;

        void a(zx1 zx1Var);

        void a(boolean z, int i, List list);
    }

    static {
        Logger logger = Logger.getLogger(gh0.class.getName());
        y45.i(logger, "getLogger(...)");
        e = logger;
    }

    public nh0(BufferedSource bufferedSource, boolean z) {
        y45.j(bufferedSource, "source");
        this.a = bufferedSource;
        this.b = z;
        b bVar = new b(bufferedSource);
        this.c = bVar;
        this.d = new lg0.a(bVar);
    }

    private final void b(c cVar, int i, int i2) throws IOException {
        if (i != 5) {
            throw new IOException("TYPE_PRIORITY length: " + i + " != 5");
        }
        if (i2 == 0) {
            throw new IOException("TYPE_PRIORITY streamId == 0");
        }
        this.a.readInt();
        this.a.readByte();
        byte[] bArr = g92.a;
        cVar.getClass();
    }

    private final void c(c cVar, int i, int i2) throws IOException {
        if (i != 4) {
            throw new IOException("TYPE_RST_STREAM length: " + i + " != 4");
        }
        if (i2 == 0) {
            throw new IOException("TYPE_RST_STREAM streamId == 0");
        }
        int i3 = this.a.readInt();
        t50.c.getClass();
        t50 t50VarA = t50.a.a(i3);
        if (t50VarA != null) {
            cVar.a(i2, t50VarA);
            return;
        }
        throw new IOException("TYPE_RST_STREAM unexpected error code: " + i3);
    }

    private final void d(c cVar, int i, int i2) throws IOException {
        if (i != 4) {
            throw new IOException("TYPE_WINDOW_UPDATE length !=4: " + i);
        }
        long jA = g92.a(this.a.readInt());
        if (jA == 0) {
            throw new IOException("windowSizeIncrement was 0");
        }
        cVar.a(i2, jA);
    }

    public final boolean a(boolean z, c cVar) throws IOException {
        int i;
        y45.j(cVar, "handler");
        try {
            this.a.require(9L);
            int iA = g92.a(this.a);
            if (iA > 16384) {
                throw new IOException("FRAME_SIZE_ERROR: " + iA);
            }
            int iA2 = g92.a(this.a.readByte());
            int iA3 = g92.a(this.a.readByte());
            int i2 = this.a.readInt() & Integer.MAX_VALUE;
            Logger logger = e;
            if (logger.isLoggable(Level.FINE)) {
                gh0.a.getClass();
                logger.fine(gh0.a(true, i2, iA, iA2, iA3));
            }
            if (z && iA2 != 4) {
                gh0.a.getClass();
                throw new IOException("Expected a SETTINGS frame but was " + gh0.a(iA2));
            }
            switch (iA2) {
                case 0:
                    if (i2 == 0) {
                        throw new IOException("PROTOCOL_ERROR: TYPE_DATA streamId == 0");
                    }
                    boolean z2 = (iA3 & 1) != 0;
                    if ((iA3 & 32) != 0) {
                        throw new IOException("PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA");
                    }
                    i = (iA3 & 8) != 0 ? this.a.readByte() & 255 : 0;
                    cVar.a(i2, a.a(iA, iA3, i), this.a, z2);
                    this.a.skip(i);
                    return true;
                case 1:
                    if (i2 == 0) {
                        throw new IOException("PROTOCOL_ERROR: TYPE_HEADERS streamId == 0");
                    }
                    boolean z3 = (iA3 & 1) != 0;
                    i = (iA3 & 8) != 0 ? this.a.readByte() & 255 : 0;
                    if ((iA3 & 32) != 0) {
                        this.a.readInt();
                        this.a.readByte();
                        cVar.getClass();
                        iA -= 5;
                    }
                    this.c.b(a.a(iA, iA3, i));
                    b bVar = this.c;
                    bVar.c(bVar.a());
                    this.c.d(i);
                    this.c.a(iA3);
                    this.c.e(i2);
                    this.d.c();
                    cVar.a(z3, i2, this.d.a());
                    return true;
                case 2:
                    b(cVar, iA, i2);
                    return true;
                case 3:
                    c(cVar, iA, i2);
                    return true;
                case 4:
                    b(cVar, iA, iA3, i2);
                    return true;
                case 5:
                    if (i2 == 0) {
                        throw new IOException("PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0");
                    }
                    i = (iA3 & 8) != 0 ? this.a.readByte() & 255 : 0;
                    int i3 = this.a.readInt() & Integer.MAX_VALUE;
                    this.c.b(a.a(iA - 4, iA3, i));
                    b bVar2 = this.c;
                    bVar2.c(bVar2.a());
                    this.c.d(i);
                    this.c.a(iA3);
                    this.c.e(i2);
                    this.d.c();
                    cVar.a(i3, this.d.a());
                    return true;
                case 6:
                    a(cVar, iA, iA3, i2);
                    return true;
                case 7:
                    a(cVar, iA, i2);
                    return true;
                case 8:
                    d(cVar, iA, i2);
                    return true;
                default:
                    this.a.skip(iA);
                    return true;
            }
        } catch (EOFException unused) {
            return false;
        }
    }

    @Override
    public final void close() throws IOException {
        this.a.close();
    }

    private final void b(c cVar, int i, int i2, int i3) throws IOException {
        if (i3 != 0) {
            throw new IOException("TYPE_SETTINGS streamId != 0");
        }
        if ((i2 & 1) != 0) {
            if (i == 0) {
                cVar.getClass();
                return;
            }
            throw new IOException("FRAME_SIZE_ERROR ack frame should be empty!");
        }
        if (i % 6 == 0) {
            zx1 zx1Var = new zx1();
            s15 s15VarP = wn8.p(wn8.q(0, i), 6);
            int iB = s15VarP.b();
            int iC = s15VarP.c();
            int iF = s15VarP.f();
            if ((iF > 0 && iB <= iC) || (iF < 0 && iC <= iB)) {
                while (true) {
                    int iA = g92.a(this.a.readShort());
                    int i4 = this.a.readInt();
                    if (iA != 2) {
                        if (iA == 3) {
                            iA = 4;
                        } else if (iA != 4) {
                            if (iA == 5 && (i4 < 16384 || i4 > 16777215)) {
                                throw new IOException("PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: " + i4);
                            }
                        } else {
                            if (i4 < 0) {
                                throw new IOException("PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1");
                            }
                            iA = 7;
                        }
                    } else if (i4 != 0 && i4 != 1) {
                        throw new IOException("PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1");
                    }
                    zx1Var.a(iA, i4);
                    if (iB != iC) {
                        iB += iF;
                    }
                }
            }
            cVar.a(zx1Var);
            return;
        }
        throw new IOException("TYPE_SETTINGS length % 6 != 0: " + i);
    }

    public final void a(c cVar) throws IOException {
        y45.j(cVar, "handler");
        if (this.b) {
            if (!a(true, cVar)) {
                throw new IOException("Required SETTINGS preface not received");
            }
            return;
        }
        BufferedSource bufferedSource = this.a;
        ByteString byteString = gh0.b;
        ByteString byteString2 = bufferedSource.readByteString(byteString.size());
        Logger logger = e;
        if (logger.isLoggable(Level.FINE)) {
            logger.fine(g92.a("<< CONNECTION " + byteString2.hex(), new Object[0]));
        }
        if (y45.e(byteString, byteString2)) {
            return;
        }
        throw new IOException("Expected a connection header but was " + byteString2.utf8());
    }

    private final void a(c cVar, int i, int i2) throws IOException {
        if (i < 8) {
            throw new IOException("TYPE_GOAWAY length < 8: " + i);
        }
        if (i2 == 0) {
            int i3 = this.a.readInt();
            int i4 = this.a.readInt();
            int i5 = i - 8;
            t50.c.getClass();
            t50 t50VarA = t50.a.a(i4);
            if (t50VarA != null) {
                ByteString byteString = ByteString.EMPTY;
                if (i5 > 0) {
                    byteString = this.a.readByteString(i5);
                }
                cVar.a(i3, t50VarA, byteString);
                return;
            }
            throw new IOException("TYPE_GOAWAY unexpected error code: " + i4);
        }
        throw new IOException("TYPE_GOAWAY streamId != 0");
    }

    private final void a(c cVar, int i, int i2, int i3) throws IOException {
        if (i == 8) {
            if (i3 == 0) {
                cVar.a(this.a.readInt(), this.a.readInt(), (i2 & 1) != 0);
                return;
            }
            throw new IOException("TYPE_PING streamId != 0");
        }
        throw new IOException("TYPE_PING length != 8: " + i);
    }
}
