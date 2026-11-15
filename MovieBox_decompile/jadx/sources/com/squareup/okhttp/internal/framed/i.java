package com.squareup.okhttp.internal.framed;

import com.squareup.okhttp.Protocol;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.ProtocolException;
import java.util.List;
import java.util.zip.Deflater;
import okhttp3.internal.http2.Settings;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ByteString;
import okio.DeflaterSink;
import okio.Okio;
import okio.Sink;

public final class i implements Variant {

    static final byte[] f39589a;

    static final class a implements FrameReader {

        private final BufferedSource f39590a;

        private final boolean f39591b;

        private final f f39592c;

        a(BufferedSource bufferedSource, boolean z10) {
            this.f39590a = bufferedSource;
            this.f39592c = new f(bufferedSource);
            this.f39591b = z10;
        }

        private static IOException b(String str, Object... objArr) throws IOException {
            throw new IOException(String.format(str, objArr));
        }

        private void d(FrameReader.Handler handler, int i10, int i11) throws IOException {
            if (i11 != 8) {
                throw b("TYPE_GOAWAY length: %d != 8", Integer.valueOf(i11));
            }
            int i12 = this.f39590a.readInt() & Integer.MAX_VALUE;
            int i13 = this.f39590a.readInt();
            ErrorCode errorCodeFromSpdyGoAway = ErrorCode.fromSpdyGoAway(i13);
            if (errorCodeFromSpdyGoAway == null) {
                throw b("TYPE_GOAWAY unexpected error code: %d", Integer.valueOf(i13));
            }
            handler.goAway(i12, errorCodeFromSpdyGoAway, ByteString.EMPTY);
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        private void f(FrameReader.Handler handler, int i10, int i11) {
            handler.headers(false, false, this.f39590a.readInt() & Integer.MAX_VALUE, -1, this.f39592c.f(i11 - 4), HeadersMode.SPDY_HEADERS);
        }

        private void h(FrameReader.Handler handler, int i10, int i11) throws IOException {
            if (i11 != 4) {
                throw b("TYPE_PING length: %d != 4", Integer.valueOf(i11));
            }
            int i12 = this.f39590a.readInt();
            handler.ping(this.f39591b == ((i12 & 1) == 1), i12, 0);
        }

        private void j(FrameReader.Handler handler, int i10, int i11) throws IOException {
            if (i11 != 8) {
                throw b("TYPE_RST_STREAM length: %d != 8", Integer.valueOf(i11));
            }
            int i12 = this.f39590a.readInt() & Integer.MAX_VALUE;
            int i13 = this.f39590a.readInt();
            ErrorCode errorCodeFromSpdy3Rst = ErrorCode.fromSpdy3Rst(i13);
            if (errorCodeFromSpdy3Rst == null) {
                throw b("TYPE_RST_STREAM unexpected error code: %d", Integer.valueOf(i13));
            }
            handler.rstStream(i12, errorCodeFromSpdy3Rst);
        }

        private void k(FrameReader.Handler handler, int i10, int i11) throws IOException {
            int i12 = this.f39590a.readInt();
            if (i11 != (i12 * 8) + 4) {
                throw b("TYPE_SETTINGS length: %d != 4 + 8 * %d", Integer.valueOf(i11), Integer.valueOf(i12));
            }
            h hVar = new h();
            for (int i13 = 0; i13 < i12; i13++) {
                int i14 = this.f39590a.readInt();
                hVar.l(i14 & 16777215, ((-16777216) & i14) >>> 24, this.f39590a.readInt());
            }
            handler.settings((i10 & 1) != 0, hVar);
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        private void l(FrameReader.Handler handler, int i10, int i11) {
            handler.headers(false, (i10 & 1) != 0, this.f39590a.readInt() & Integer.MAX_VALUE, -1, this.f39592c.f(i11 - 4), HeadersMode.SPDY_REPLY);
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        private void m(FrameReader.Handler handler, int i10, int i11) throws IOException {
            int i12 = this.f39590a.readInt() & Integer.MAX_VALUE;
            int i13 = this.f39590a.readInt() & Integer.MAX_VALUE;
            this.f39590a.readShort();
            handler.headers((i10 & 2) != 0, (i10 & 1) != 0, i12, i13, this.f39592c.f(i11 - 10), HeadersMode.SPDY_SYN_STREAM);
        }

        private void n(FrameReader.Handler handler, int i10, int i11) throws IOException {
            if (i11 != 8) {
                throw b("TYPE_WINDOW_UPDATE length: %d != 8", Integer.valueOf(i11));
            }
            int i12 = this.f39590a.readInt() & Integer.MAX_VALUE;
            long j10 = this.f39590a.readInt() & Integer.MAX_VALUE;
            if (j10 == 0) {
                throw b("windowSizeIncrement was 0", Long.valueOf(j10));
            }
            handler.windowUpdate(i12, j10);
        }

        @Override
        public void close() {
            this.f39592c.c();
        }

        @Override
        public boolean nextFrame(FrameReader.Handler handler) throws IOException {
            try {
                int i10 = this.f39590a.readInt();
                int i11 = this.f39590a.readInt();
                int i12 = ((-16777216) & i11) >>> 24;
                int i13 = i11 & 16777215;
                if (!((Integer.MIN_VALUE & i10) != 0)) {
                    handler.data((i12 & 1) != 0, i10 & Integer.MAX_VALUE, this.f39590a, i13);
                    return true;
                }
                int i14 = (2147418112 & i10) >>> 16;
                int i15 = i10 & Settings.DEFAULT_INITIAL_WINDOW_SIZE;
                if (i14 != 3) {
                    throw new ProtocolException("version != 3: " + i14);
                }
                switch (i15) {
                    case 1:
                        m(handler, i12, i13);
                        return true;
                    case 2:
                        l(handler, i12, i13);
                        return true;
                    case 3:
                        j(handler, i12, i13);
                        return true;
                    case 4:
                        k(handler, i12, i13);
                        return true;
                    case 5:
                    default:
                        this.f39590a.skip(i13);
                        return true;
                    case 6:
                        h(handler, i12, i13);
                        return true;
                    case 7:
                        d(handler, i12, i13);
                        return true;
                    case 8:
                        f(handler, i12, i13);
                        return true;
                    case 9:
                        n(handler, i12, i13);
                        return true;
                }
            } catch (IOException unused) {
                return false;
            }
        }

        @Override
        public void readConnectionPreface() {
        }
    }

    static final class b implements FrameWriter {

        private final BufferedSink f39593a;

        private final Buffer f39594b;

        private final BufferedSink f39595c;

        private final boolean f39596d;

        private boolean f39597e;

        b(BufferedSink bufferedSink, boolean z10) {
            this.f39593a = bufferedSink;
            this.f39596d = z10;
            Deflater deflater = new Deflater();
            deflater.setDictionary(i.f39589a);
            Buffer buffer = new Buffer();
            this.f39594b = buffer;
            this.f39595c = Okio.buffer(new DeflaterSink((Sink) buffer, deflater));
        }

        private void d(List list) throws IOException {
            this.f39595c.writeInt(list.size());
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                ByteString byteString = ((com.squareup.okhttp.internal.framed.b) list.get(i10)).f39538a;
                this.f39595c.writeInt(byteString.size());
                this.f39595c.write(byteString);
                ByteString byteString2 = ((com.squareup.okhttp.internal.framed.b) list.get(i10)).f39539b;
                this.f39595c.writeInt(byteString2.size());
                this.f39595c.write(byteString2);
            }
            this.f39595c.flush();
        }

        @Override
        public void ackSettings(h hVar) {
        }

        void b(int i10, int i11, Buffer buffer, int i12) throws IOException {
            if (this.f39597e) {
                throw new IOException("closed");
            }
            long j10 = i12;
            if (j10 > 16777215) {
                throw new IllegalArgumentException("FRAME_TOO_LARGE max size is 16Mib: " + i12);
            }
            this.f39593a.writeInt(i10 & Integer.MAX_VALUE);
            this.f39593a.writeInt(((i11 & 255) << 24) | (16777215 & i12));
            if (i12 > 0) {
                this.f39593a.write(buffer, j10);
            }
        }

        @Override
        public synchronized void close() {
            this.f39597e = true;
            com.squareup.okhttp.internal.g.b(this.f39593a, this.f39595c);
        }

        @Override
        public synchronized void connectionPreface() {
        }

        @Override
        public synchronized void data(boolean z10, int i10, Buffer buffer, int i11) {
            b(i10, z10 ? 1 : 0, buffer, i11);
        }

        @Override
        public synchronized void flush() {
            if (this.f39597e) {
                throw new IOException("closed");
            }
            this.f39593a.flush();
        }

        @Override
        public synchronized void goAway(int i10, ErrorCode errorCode, byte[] bArr) {
            if (this.f39597e) {
                throw new IOException("closed");
            }
            if (errorCode.spdyGoAwayCode == -1) {
                throw new IllegalArgumentException("errorCode.spdyGoAwayCode == -1");
            }
            this.f39593a.writeInt(-2147287033);
            this.f39593a.writeInt(8);
            this.f39593a.writeInt(i10);
            this.f39593a.writeInt(errorCode.spdyGoAwayCode);
            this.f39593a.flush();
        }

        @Override
        public synchronized void headers(int i10, List list) {
            if (this.f39597e) {
                throw new IOException("closed");
            }
            d(list);
            int size = (int) (this.f39594b.size() + 4);
            this.f39593a.writeInt(-2147287032);
            this.f39593a.writeInt(size & 16777215);
            this.f39593a.writeInt(i10 & Integer.MAX_VALUE);
            this.f39593a.writeAll(this.f39594b);
        }

        @Override
        public int maxDataLength() {
            return 16383;
        }

        @Override
        public synchronized void ping(boolean z10, int i10, int i11) {
            if (this.f39597e) {
                throw new IOException("closed");
            }
            if (z10 != (this.f39596d != ((i10 & 1) == 1))) {
                throw new IllegalArgumentException("payload != reply");
            }
            this.f39593a.writeInt(-2147287034);
            this.f39593a.writeInt(4);
            this.f39593a.writeInt(i10);
            this.f39593a.flush();
        }

        @Override
        public void pushPromise(int i10, int i11, List list) {
        }

        @Override
        public synchronized void rstStream(int i10, ErrorCode errorCode) {
            if (this.f39597e) {
                throw new IOException("closed");
            }
            if (errorCode.spdyRstCode == -1) {
                throw new IllegalArgumentException();
            }
            this.f39593a.writeInt(-2147287037);
            this.f39593a.writeInt(8);
            this.f39593a.writeInt(i10 & Integer.MAX_VALUE);
            this.f39593a.writeInt(errorCode.spdyRstCode);
            this.f39593a.flush();
        }

        @Override
        public synchronized void settings(h hVar) {
            try {
                if (this.f39597e) {
                    throw new IOException("closed");
                }
                int iM = hVar.m();
                this.f39593a.writeInt(-2147287036);
                this.f39593a.writeInt(((iM * 8) + 4) & 16777215);
                this.f39593a.writeInt(iM);
                for (int i10 = 0; i10 <= 10; i10++) {
                    if (hVar.i(i10)) {
                        this.f39593a.writeInt(((hVar.b(i10) & 255) << 24) | (i10 & 16777215));
                        this.f39593a.writeInt(hVar.c(i10));
                    }
                }
                this.f39593a.flush();
            } catch (Throwable th2) {
                throw th2;
            }
        }

        @Override
        public synchronized void synReply(boolean z10, int i10, List list) {
            if (this.f39597e) {
                throw new IOException("closed");
            }
            d(list);
            int size = (int) (this.f39594b.size() + 4);
            this.f39593a.writeInt(-2147287038);
            this.f39593a.writeInt((((z10 ? 1 : 0) & 255) << 24) | (size & 16777215));
            this.f39593a.writeInt(i10 & Integer.MAX_VALUE);
            this.f39593a.writeAll(this.f39594b);
            this.f39593a.flush();
        }

        @Override
        public synchronized void synStream(boolean z10, boolean z11, int i10, int i11, List list) {
            if (this.f39597e) {
                throw new IOException("closed");
            }
            d(list);
            int size = (int) (this.f39594b.size() + 10);
            int i12 = (z10 ? 1 : 0) | (z11 ? 2 : 0);
            this.f39593a.writeInt(-2147287039);
            this.f39593a.writeInt(((i12 & 255) << 24) | (size & 16777215));
            this.f39593a.writeInt(i10 & Integer.MAX_VALUE);
            this.f39593a.writeInt(Integer.MAX_VALUE & i11);
            this.f39593a.writeShort(0);
            this.f39593a.writeAll(this.f39594b);
            this.f39593a.flush();
        }

        @Override
        public synchronized void windowUpdate(int i10, long j10) {
            if (this.f39597e) {
                throw new IOException("closed");
            }
            if (j10 == 0 || j10 > 2147483647L) {
                throw new IllegalArgumentException("windowSizeIncrement must be between 1 and 0x7fffffff: " + j10);
            }
            this.f39593a.writeInt(-2147287031);
            this.f39593a.writeInt(8);
            this.f39593a.writeInt(i10);
            this.f39593a.writeInt((int) j10);
            this.f39593a.flush();
        }
    }

    static {
        try {
            f39589a = "\u0000\u0000\u0000\u0007options\u0000\u0000\u0000\u0004head\u0000\u0000\u0000\u0004post\u0000\u0000\u0000\u0003put\u0000\u0000\u0000\u0006delete\u0000\u0000\u0000\u0005trace\u0000\u0000\u0000\u0006accept\u0000\u0000\u0000\u000eaccept-charset\u0000\u0000\u0000\u000faccept-encoding\u0000\u0000\u0000\u000faccept-language\u0000\u0000\u0000\raccept-ranges\u0000\u0000\u0000\u0003age\u0000\u0000\u0000\u0005allow\u0000\u0000\u0000\rauthorization\u0000\u0000\u0000\rcache-control\u0000\u0000\u0000\nconnection\u0000\u0000\u0000\fcontent-base\u0000\u0000\u0000\u0010content-encoding\u0000\u0000\u0000\u0010content-language\u0000\u0000\u0000\u000econtent-length\u0000\u0000\u0000\u0010content-location\u0000\u0000\u0000\u000bcontent-md5\u0000\u0000\u0000\rcontent-range\u0000\u0000\u0000\fcontent-type\u0000\u0000\u0000\u0004date\u0000\u0000\u0000\u0004etag\u0000\u0000\u0000\u0006expect\u0000\u0000\u0000\u0007expires\u0000\u0000\u0000\u0004from\u0000\u0000\u0000\u0004host\u0000\u0000\u0000\bif-match\u0000\u0000\u0000\u0011if-modified-since\u0000\u0000\u0000\rif-none-match\u0000\u0000\u0000\bif-range\u0000\u0000\u0000\u0013if-unmodified-since\u0000\u0000\u0000\rlast-modified\u0000\u0000\u0000\blocation\u0000\u0000\u0000\fmax-forwards\u0000\u0000\u0000\u0006pragma\u0000\u0000\u0000\u0012proxy-authenticate\u0000\u0000\u0000\u0013proxy-authorization\u0000\u0000\u0000\u0005range\u0000\u0000\u0000\u0007referer\u0000\u0000\u0000\u000bretry-after\u0000\u0000\u0000\u0006server\u0000\u0000\u0000\u0002te\u0000\u0000\u0000\u0007trailer\u0000\u0000\u0000\u0011transfer-encoding\u0000\u0000\u0000\u0007upgrade\u0000\u0000\u0000\nuser-agent\u0000\u0000\u0000\u0004vary\u0000\u0000\u0000\u0003via\u0000\u0000\u0000\u0007warning\u0000\u0000\u0000\u0010www-authenticate\u0000\u0000\u0000\u0006method\u0000\u0000\u0000\u0003get\u0000\u0000\u0000\u0006status\u0000\u0000\u0000\u0006200 OK\u0000\u0000\u0000\u0007version\u0000\u0000\u0000\bHTTP/1.1\u0000\u0000\u0000\u0003url\u0000\u0000\u0000\u0006public\u0000\u0000\u0000\nset-cookie\u0000\u0000\u0000\nkeep-alive\u0000\u0000\u0000\u0006origin100101201202205206300302303304305306307402405406407408409410411412413414415416417502504505203 Non-Authoritative Information204 No Content301 Moved Permanently400 Bad Request401 Unauthorized403 Forbidden404 Not Found500 Internal Server Error501 Not Implemented503 Service UnavailableJan Feb Mar Apr May Jun Jul Aug Sept Oct Nov Dec 00:00:00 Mon, Tue, Wed, Thu, Fri, Sat, Sun, GMTchunked,text/html,image/png,image/jpg,image/gif,application/xml,application/xhtml+xml,text/plain,text/javascript,publicprivatemax-age=gzip,deflate,sdchcharset=utf-8charset=iso-8859-1,utf-,*,enq=0.".getBytes(com.squareup.okhttp.internal.g.f39600c.name());
        } catch (UnsupportedEncodingException unused) {
            throw new AssertionError();
        }
    }

    @Override
    public Protocol getProtocol() {
        return Protocol.SPDY_3;
    }

    @Override
    public FrameReader newReader(BufferedSource bufferedSource, boolean z10) {
        return new a(bufferedSource, z10);
    }

    @Override
    public FrameWriter newWriter(BufferedSink bufferedSink, boolean z10) {
        return new b(bufferedSink, z10);
    }
}
