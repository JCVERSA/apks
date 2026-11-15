package com.mbridge.msdk.thrid.okhttp.internal.http2;

import com.mbridge.msdk.thrid.okio.s;
import com.mbridge.msdk.thrid.okio.t;
import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

final class h implements Closeable {

    static final Logger f37334e = Logger.getLogger(e.class.getName());

    private final com.mbridge.msdk.thrid.okio.e f37335a;

    private final a f37336b;

    private final boolean f37337c;

    final d.a f37338d;

    interface b {
        void a();

        void a(int i10, int i11, int i12, boolean z10);

        void a(int i10, int i11, List<c> list) throws IOException;

        void a(int i10, long j10);

        void a(int i10, com.mbridge.msdk.thrid.okhttp.internal.http2.b bVar);

        void a(int i10, com.mbridge.msdk.thrid.okhttp.internal.http2.b bVar, com.mbridge.msdk.thrid.okio.f fVar);

        void a(boolean z10, int i10, int i11);

        void a(boolean z10, int i10, int i11, List<c> list);

        void a(boolean z10, int i10, com.mbridge.msdk.thrid.okio.e eVar, int i11) throws IOException;

        void a(boolean z10, m mVar);
    }

    h(com.mbridge.msdk.thrid.okio.e eVar, boolean z10) {
        this.f37335a = eVar;
        this.f37337c = z10;
        a aVar = new a(eVar);
        this.f37336b = aVar;
        this.f37338d = new d.a(4096, aVar);
    }

    private void b(b bVar, int i10, byte b10, int i11) throws IOException {
        if (i10 < 8) {
            throw e.b("TYPE_GOAWAY length < 8: %s", Integer.valueOf(i10));
        }
        if (i11 != 0) {
            throw e.b("TYPE_GOAWAY streamId != 0", new Object[0]);
        }
        int i12 = this.f37335a.readInt();
        int i13 = this.f37335a.readInt();
        int i14 = i10 - 8;
        com.mbridge.msdk.thrid.okhttp.internal.http2.b bVarA = com.mbridge.msdk.thrid.okhttp.internal.http2.b.a(i13);
        if (bVarA == null) {
            throw e.b("TYPE_GOAWAY unexpected error code: %d", Integer.valueOf(i13));
        }
        com.mbridge.msdk.thrid.okio.f fVarB = com.mbridge.msdk.thrid.okio.f.f37603e;
        if (i14 > 0) {
            fVarB = this.f37335a.b(i14);
        }
        bVar.a(i12, bVarA, fVarB);
    }

    private void c(b bVar, int i10, byte b10, int i11) throws IOException {
        if (i11 == 0) {
            throw e.b("PROTOCOL_ERROR: TYPE_HEADERS streamId == 0", new Object[0]);
        }
        boolean z10 = (b10 & 1) != 0;
        short s10 = (b10 & 8) != 0 ? (short) (this.f37335a.readByte() & 255) : (short) 0;
        if ((b10 & 32) != 0) {
            a(bVar, i11);
            i10 -= 5;
        }
        bVar.a(z10, i11, -1, a(a(i10, b10, s10), s10, b10, i11));
    }

    private void d(b bVar, int i10, byte b10, int i11) throws IOException {
        if (i10 != 8) {
            throw e.b("TYPE_PING length != 8: %s", Integer.valueOf(i10));
        }
        if (i11 != 0) {
            throw e.b("TYPE_PING streamId != 0", new Object[0]);
        }
        bVar.a((b10 & 1) != 0, this.f37335a.readInt(), this.f37335a.readInt());
    }

    private void e(b bVar, int i10, byte b10, int i11) throws IOException {
        if (i10 != 5) {
            throw e.b("TYPE_PRIORITY length: %d != 5", Integer.valueOf(i10));
        }
        if (i11 == 0) {
            throw e.b("TYPE_PRIORITY streamId == 0", new Object[0]);
        }
        a(bVar, i11);
    }

    private void f(b bVar, int i10, byte b10, int i11) throws IOException {
        if (i11 == 0) {
            throw e.b("PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0", new Object[0]);
        }
        short s10 = (b10 & 8) != 0 ? (short) (this.f37335a.readByte() & 255) : (short) 0;
        bVar.a(i11, this.f37335a.readInt() & Integer.MAX_VALUE, a(a(i10 - 4, b10, s10), s10, b10, i11));
    }

    private void g(b bVar, int i10, byte b10, int i11) throws IOException {
        if (i10 != 4) {
            throw e.b("TYPE_RST_STREAM length: %d != 4", Integer.valueOf(i10));
        }
        if (i11 == 0) {
            throw e.b("TYPE_RST_STREAM streamId == 0", new Object[0]);
        }
        int i12 = this.f37335a.readInt();
        com.mbridge.msdk.thrid.okhttp.internal.http2.b bVarA = com.mbridge.msdk.thrid.okhttp.internal.http2.b.a(i12);
        if (bVarA == null) {
            throw e.b("TYPE_RST_STREAM unexpected error code: %d", Integer.valueOf(i12));
        }
        bVar.a(i11, bVarA);
    }

    private void h(b bVar, int i10, byte b10, int i11) throws IOException {
        if (i11 != 0) {
            throw e.b("TYPE_SETTINGS streamId != 0", new Object[0]);
        }
        if ((b10 & 1) != 0) {
            if (i10 != 0) {
                throw e.b("FRAME_SIZE_ERROR ack frame should be empty!", new Object[0]);
            }
            bVar.a();
            return;
        }
        if (i10 % 6 != 0) {
            throw e.b("TYPE_SETTINGS length %% 6 != 0: %s", Integer.valueOf(i10));
        }
        m mVar = new m();
        for (int i12 = 0; i12 < i10; i12 += 6) {
            int i13 = this.f37335a.readShort() & 65535;
            int i14 = this.f37335a.readInt();
            if (i13 == 2) {
                if (i14 != 0 && i14 != 1) {
                    throw e.b("PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1", new Object[0]);
                }
            } else if (i13 == 3) {
                i13 = 4;
            } else if (i13 != 4) {
                if (i13 == 5 && (i14 < 16384 || i14 > 16777215)) {
                    throw e.b("PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s", Integer.valueOf(i14));
                }
            } else {
                if (i14 < 0) {
                    throw e.b("PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1", new Object[0]);
                }
                i13 = 7;
            }
            mVar.a(i13, i14);
        }
        bVar.a(false, mVar);
    }

    private void i(b bVar, int i10, byte b10, int i11) throws IOException {
        if (i10 != 4) {
            throw e.b("TYPE_WINDOW_UPDATE length !=4: %s", Integer.valueOf(i10));
        }
        long j10 = ((long) this.f37335a.readInt()) & 2147483647L;
        if (j10 == 0) {
            throw e.b("windowSizeIncrement was 0", Long.valueOf(j10));
        }
        bVar.a(i11, j10);
    }

    public void a(b bVar) throws IOException {
        if (this.f37337c) {
            if (!a(true, bVar)) {
                throw e.b("Required SETTINGS preface not received", new Object[0]);
            }
            return;
        }
        com.mbridge.msdk.thrid.okio.e eVar = this.f37335a;
        com.mbridge.msdk.thrid.okio.f fVar = e.f37250a;
        com.mbridge.msdk.thrid.okio.f fVarB = eVar.b(fVar.e());
        Logger logger = f37334e;
        if (logger.isLoggable(Level.FINE)) {
            logger.fine(com.mbridge.msdk.thrid.okhttp.internal.c.a("<< CONNECTION %s", fVarB.b()));
        }
        if (!fVar.equals(fVarB)) {
            throw e.b("Expected a connection header but was %s", fVarB.h());
        }
    }

    @Override
    public void close() throws IOException {
        this.f37335a.close();
    }

    static final class a implements s {

        private final com.mbridge.msdk.thrid.okio.e f37339a;

        int f37340b;

        byte f37341c;

        int f37342d;

        int f37343e;

        short f37344f;

        a(com.mbridge.msdk.thrid.okio.e eVar) {
            this.f37339a = eVar;
        }

        private void d() throws IOException {
            int i10 = this.f37342d;
            int iA = h.a(this.f37339a);
            this.f37343e = iA;
            this.f37340b = iA;
            byte b10 = (byte) (this.f37339a.readByte() & 255);
            this.f37341c = (byte) (this.f37339a.readByte() & 255);
            Logger logger = h.f37334e;
            if (logger.isLoggable(Level.FINE)) {
                logger.fine(e.a(true, this.f37342d, this.f37340b, b10, this.f37341c));
            }
            int i11 = this.f37339a.readInt() & Integer.MAX_VALUE;
            this.f37342d = i11;
            if (b10 != 9) {
                throw e.b("%s != TYPE_CONTINUATION", Byte.valueOf(b10));
            }
            if (i11 != i10) {
                throw e.b("TYPE_CONTINUATION streamId changed", new Object[0]);
            }
        }

        @Override
        public long b(com.mbridge.msdk.thrid.okio.c cVar, long j10) throws IOException {
            while (true) {
                int i10 = this.f37343e;
                if (i10 != 0) {
                    long jB = this.f37339a.b(cVar, Math.min(j10, i10));
                    if (jB == -1) {
                        return -1L;
                    }
                    this.f37343e = (int) (((long) this.f37343e) - jB);
                    return jB;
                }
                this.f37339a.skip(this.f37344f);
                this.f37344f = (short) 0;
                if ((this.f37341c & 4) != 0) {
                    return -1L;
                }
                d();
            }
        }

        @Override
        public void close() throws IOException {
        }

        @Override
        public t b() {
            return this.f37339a.b();
        }
    }

    public boolean a(boolean z10, b bVar) throws IOException {
        try {
            this.f37335a.e(9L);
            int iA = a(this.f37335a);
            if (iA < 0 || iA > 16384) {
                throw e.b("FRAME_SIZE_ERROR: %s", Integer.valueOf(iA));
            }
            byte b10 = (byte) (this.f37335a.readByte() & 255);
            if (z10 && b10 != 4) {
                throw e.b("Expected a SETTINGS frame but was %s", Byte.valueOf(b10));
            }
            byte b11 = (byte) (this.f37335a.readByte() & 255);
            int i10 = this.f37335a.readInt() & Integer.MAX_VALUE;
            Logger logger = f37334e;
            if (logger.isLoggable(Level.FINE)) {
                logger.fine(e.a(true, i10, iA, b10, b11));
            }
            switch (b10) {
                case 0:
                    a(bVar, iA, b11, i10);
                    return true;
                case 1:
                    c(bVar, iA, b11, i10);
                    return true;
                case 2:
                    e(bVar, iA, b11, i10);
                    return true;
                case 3:
                    g(bVar, iA, b11, i10);
                    return true;
                case 4:
                    h(bVar, iA, b11, i10);
                    return true;
                case 5:
                    f(bVar, iA, b11, i10);
                    return true;
                case 6:
                    d(bVar, iA, b11, i10);
                    return true;
                case 7:
                    b(bVar, iA, b11, i10);
                    return true;
                case 8:
                    i(bVar, iA, b11, i10);
                    return true;
                default:
                    this.f37335a.skip(iA);
                    return true;
            }
        } catch (IOException unused) {
            return false;
        }
    }

    private List<c> a(int i10, short s10, byte b10, int i11) throws IOException {
        a aVar = this.f37336b;
        aVar.f37343e = i10;
        aVar.f37340b = i10;
        aVar.f37344f = s10;
        aVar.f37341c = b10;
        aVar.f37342d = i11;
        this.f37338d.f();
        return this.f37338d.c();
    }

    private void a(b bVar, int i10, byte b10, int i11) throws IOException {
        if (i11 == 0) {
            throw e.b("PROTOCOL_ERROR: TYPE_DATA streamId == 0", new Object[0]);
        }
        boolean z10 = (b10 & 1) != 0;
        if ((b10 & 32) == 0) {
            short s10 = (b10 & 8) != 0 ? (short) (this.f37335a.readByte() & 255) : (short) 0;
            bVar.a(z10, i11, this.f37335a, a(i10, b10, s10));
            this.f37335a.skip(s10);
            return;
        }
        throw e.b("PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA", new Object[0]);
    }

    private void a(b bVar, int i10) throws IOException {
        int i11 = this.f37335a.readInt();
        bVar.a(i10, i11 & Integer.MAX_VALUE, (this.f37335a.readByte() & 255) + 1, (Integer.MIN_VALUE & i11) != 0);
    }

    static int a(com.mbridge.msdk.thrid.okio.e eVar) throws IOException {
        return (eVar.readByte() & 255) | ((eVar.readByte() & 255) << 16) | ((eVar.readByte() & 255) << 8);
    }

    static int a(int i10, byte b10, short s10) throws IOException {
        if ((b10 & 8) != 0) {
            i10--;
        }
        if (s10 <= i10) {
            return (short) (i10 - s10);
        }
        throw e.b("PROTOCOL_ERROR padding %s > remaining length %s", Short.valueOf(s10), Integer.valueOf(i10));
    }
}
