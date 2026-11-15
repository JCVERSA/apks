package com.squareup.okhttp.internal.framed;

import com.squareup.okhttp.Protocol;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ByteString;
import okio.Source;
import okio.Timeout;

public final class d implements Variant {

    private static final Logger f39552a = Logger.getLogger(b.class.getName());

    private static final ByteString f39553b = ByteString.encodeUtf8("PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n");

    static final class a implements Source {

        private final BufferedSource f39554a;

        int f39555b;

        byte f39556c;

        int f39557d;

        int f39558e;

        short f39559f;

        public a(BufferedSource bufferedSource) {
            this.f39554a = bufferedSource;
        }

        private void d() throws IOException {
            int i10 = this.f39557d;
            int iK = d.k(this.f39554a);
            this.f39558e = iK;
            this.f39555b = iK;
            byte b10 = (byte) (this.f39554a.readByte() & 255);
            this.f39556c = (byte) (this.f39554a.readByte() & 255);
            if (d.f39552a.isLoggable(Level.FINE)) {
                d.f39552a.fine(b.b(true, this.f39557d, this.f39555b, b10, this.f39556c));
            }
            int i11 = this.f39554a.readInt() & Integer.MAX_VALUE;
            this.f39557d = i11;
            if (b10 != 9) {
                throw d.i("%s != TYPE_CONTINUATION", Byte.valueOf(b10));
            }
            if (i11 != i10) {
                throw d.i("TYPE_CONTINUATION streamId changed", new Object[0]);
            }
        }

        @Override
        public void close() {
        }

        @Override
        public long read(Buffer buffer, long j10) throws IOException {
            while (true) {
                int i10 = this.f39558e;
                if (i10 != 0) {
                    long j11 = this.f39554a.read(buffer, Math.min(j10, i10));
                    if (j11 == -1) {
                        return -1L;
                    }
                    this.f39558e = (int) (((long) this.f39558e) - j11);
                    return j11;
                }
                this.f39554a.skip(this.f39559f);
                this.f39559f = (short) 0;
                if ((this.f39556c & 4) != 0) {
                    return -1L;
                }
                d();
            }
        }

        @Override
        public Timeout getTimeout() {
            return this.f39554a.getTimeout();
        }
    }

    static final class b {

        private static final String[] f39560a = {"DATA", "HEADERS", "PRIORITY", "RST_STREAM", "SETTINGS", "PUSH_PROMISE", "PING", "GOAWAY", "WINDOW_UPDATE", "CONTINUATION"};

        private static final String[] f39561b = new String[64];

        private static final String[] f39562c = new String[256];

        static {
            int i10 = 0;
            int i11 = 0;
            while (true) {
                String[] strArr = f39562c;
                if (i11 >= strArr.length) {
                    break;
                }
                strArr[i11] = String.format("%8s", Integer.toBinaryString(i11)).replace(' ', '0');
                i11++;
            }
            String[] strArr2 = f39561b;
            strArr2[0] = "";
            strArr2[1] = "END_STREAM";
            int[] iArr = {1};
            strArr2[8] = "PADDED";
            int i12 = iArr[0];
            strArr2[i12 | 8] = strArr2[i12] + "|PADDED";
            strArr2[4] = "END_HEADERS";
            strArr2[32] = "PRIORITY";
            strArr2[36] = "END_HEADERS|PRIORITY";
            int[] iArr2 = {4, 32, 36};
            for (int i13 = 0; i13 < 3; i13++) {
                int i14 = iArr2[i13];
                int i15 = iArr[0];
                String[] strArr3 = f39561b;
                int i16 = i15 | i14;
                strArr3[i16] = strArr3[i15] + '|' + strArr3[i14];
                strArr3[i16 | 8] = strArr3[i15] + '|' + strArr3[i14] + "|PADDED";
            }
            while (true) {
                String[] strArr4 = f39561b;
                if (i10 >= strArr4.length) {
                    return;
                }
                if (strArr4[i10] == null) {
                    strArr4[i10] = f39562c[i10];
                }
                i10++;
            }
        }

        static String a(byte b10, byte b11) {
            if (b11 == 0) {
                return "";
            }
            if (b10 != 2 && b10 != 3) {
                if (b10 == 4 || b10 == 6) {
                    return b11 == 1 ? "ACK" : f39562c[b11];
                }
                if (b10 != 7 && b10 != 8) {
                    String[] strArr = f39561b;
                    String str = b11 < strArr.length ? strArr[b11] : f39562c[b11];
                    if (b10 != 5 || (b11 & 4) == 0) {
                        return (b10 != 0 || (b11 & 32) == 0) ? str : str.replace("PRIORITY", "COMPRESSED");
                    }
                    return str.replace("HEADERS", "PUSH_PROMISE");
                }
            }
            return f39562c[b11];
        }

        static String b(boolean z10, int i10, int i11, byte b10, byte b11) {
            String[] strArr = f39560a;
            return String.format("%s 0x%08x %5d %-13s %s", z10 ? "<<" : ">>", Integer.valueOf(i10), Integer.valueOf(i11), b10 < strArr.length ? strArr[b10] : String.format("0x%02x", Byte.valueOf(b10)), a(b10, b11));
        }
    }

    static final class c implements FrameReader {

        private final BufferedSource f39563a;

        private final a f39564b;

        private final boolean f39565c;

        final com.squareup.okhttp.internal.framed.c.a f39566d;

        c(BufferedSource bufferedSource, int i10, boolean z10) {
            this.f39563a = bufferedSource;
            this.f39565c = z10;
            a aVar = new a(bufferedSource);
            this.f39564b = aVar;
            this.f39566d = new com.squareup.okhttp.internal.framed.c.a(i10, aVar);
        }

        private void b(FrameReader.Handler handler, int i10, byte b10, int i11) throws IOException {
            boolean z10 = (b10 & 1) != 0;
            if ((b10 & 32) != 0) {
                throw d.i("PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA", new Object[0]);
            }
            short s10 = (b10 & 8) != 0 ? (short) (this.f39563a.readByte() & 255) : (short) 0;
            handler.data(z10, i11, this.f39563a, d.j(i10, b10, s10));
            this.f39563a.skip(s10);
        }

        private void d(FrameReader.Handler handler, int i10, byte b10, int i11) throws IOException {
            if (i10 < 8) {
                throw d.i("TYPE_GOAWAY length < 8: %s", Integer.valueOf(i10));
            }
            if (i11 != 0) {
                throw d.i("TYPE_GOAWAY streamId != 0", new Object[0]);
            }
            int i12 = this.f39563a.readInt();
            int i13 = this.f39563a.readInt();
            int i14 = i10 - 8;
            ErrorCode errorCodeFromHttp2 = ErrorCode.fromHttp2(i13);
            if (errorCodeFromHttp2 == null) {
                throw d.i("TYPE_GOAWAY unexpected error code: %d", Integer.valueOf(i13));
            }
            ByteString byteString = ByteString.EMPTY;
            if (i14 > 0) {
                byteString = this.f39563a.readByteString(i14);
            }
            handler.goAway(i12, errorCodeFromHttp2, byteString);
        }

        private List f(int i10, short s10, byte b10, int i11) throws IOException {
            a aVar = this.f39564b;
            aVar.f39558e = i10;
            aVar.f39555b = i10;
            aVar.f39559f = s10;
            aVar.f39556c = b10;
            aVar.f39557d = i11;
            this.f39566d.l();
            return this.f39566d.e();
        }

        private void h(FrameReader.Handler handler, int i10, byte b10, int i11) throws IOException {
            if (i11 == 0) {
                throw d.i("PROTOCOL_ERROR: TYPE_HEADERS streamId == 0", new Object[0]);
            }
            boolean z10 = (b10 & 1) != 0;
            short s10 = (b10 & 8) != 0 ? (short) (this.f39563a.readByte() & 255) : (short) 0;
            if ((b10 & 32) != 0) {
                k(handler, i11);
                i10 -= 5;
            }
            handler.headers(false, z10, i11, -1, f(d.j(i10, b10, s10), s10, b10, i11), HeadersMode.HTTP_20_HEADERS);
        }

        private void j(FrameReader.Handler handler, int i10, byte b10, int i11) throws IOException {
            if (i10 != 8) {
                throw d.i("TYPE_PING length != 8: %s", Integer.valueOf(i10));
            }
            if (i11 != 0) {
                throw d.i("TYPE_PING streamId != 0", new Object[0]);
            }
            handler.ping((b10 & 1) != 0, this.f39563a.readInt(), this.f39563a.readInt());
        }

        private void k(FrameReader.Handler handler, int i10) throws IOException {
            int i11 = this.f39563a.readInt();
            handler.priority(i10, i11 & Integer.MAX_VALUE, (this.f39563a.readByte() & 255) + 1, (Integer.MIN_VALUE & i11) != 0);
        }

        private void l(FrameReader.Handler handler, int i10, byte b10, int i11) throws IOException {
            if (i10 != 5) {
                throw d.i("TYPE_PRIORITY length: %d != 5", Integer.valueOf(i10));
            }
            if (i11 == 0) {
                throw d.i("TYPE_PRIORITY streamId == 0", new Object[0]);
            }
            k(handler, i11);
        }

        private void m(FrameReader.Handler handler, int i10, byte b10, int i11) throws IOException {
            if (i11 == 0) {
                throw d.i("PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0", new Object[0]);
            }
            short s10 = (b10 & 8) != 0 ? (short) (this.f39563a.readByte() & 255) : (short) 0;
            handler.pushPromise(i11, this.f39563a.readInt() & Integer.MAX_VALUE, f(d.j(i10 - 4, b10, s10), s10, b10, i11));
        }

        private void n(FrameReader.Handler handler, int i10, byte b10, int i11) throws IOException {
            if (i10 != 4) {
                throw d.i("TYPE_RST_STREAM length: %d != 4", Integer.valueOf(i10));
            }
            if (i11 == 0) {
                throw d.i("TYPE_RST_STREAM streamId == 0", new Object[0]);
            }
            int i12 = this.f39563a.readInt();
            ErrorCode errorCodeFromHttp2 = ErrorCode.fromHttp2(i12);
            if (errorCodeFromHttp2 == null) {
                throw d.i("TYPE_RST_STREAM unexpected error code: %d", Integer.valueOf(i12));
            }
            handler.rstStream(i11, errorCodeFromHttp2);
        }

        private void o(FrameReader.Handler handler, int i10, byte b10, int i11) throws IOException {
            if (i11 != 0) {
                throw d.i("TYPE_SETTINGS streamId != 0", new Object[0]);
            }
            if ((b10 & 1) != 0) {
                if (i10 != 0) {
                    throw d.i("FRAME_SIZE_ERROR ack frame should be empty!", new Object[0]);
                }
                handler.ackSettings();
                return;
            }
            if (i10 % 6 != 0) {
                throw d.i("TYPE_SETTINGS length %% 6 != 0: %s", Integer.valueOf(i10));
            }
            h hVar = new h();
            for (int i12 = 0; i12 < i10; i12 += 6) {
                short s10 = this.f39563a.readShort();
                int i13 = this.f39563a.readInt();
                switch (s10) {
                    case 1:
                    case 6:
                        break;
                    case 2:
                        if (i13 != 0 && i13 != 1) {
                            throw d.i("PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1", new Object[0]);
                        }
                        break;
                        break;
                    case 3:
                        s10 = 4;
                        break;
                    case 4:
                        if (i13 < 0) {
                            throw d.i("PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1", new Object[0]);
                        }
                        s10 = 7;
                        break;
                        break;
                    case 5:
                        if (i13 < 16384 || i13 > 16777215) {
                            throw d.i("PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s", Integer.valueOf(i13));
                        }
                        break;
                        break;
                    default:
                        throw d.i("PROTOCOL_ERROR invalid settings id: %s", Short.valueOf(s10));
                }
                hVar.l(s10, 0, i13);
            }
            handler.settings(false, hVar);
            if (hVar.d() >= 0) {
                this.f39566d.g(hVar.d());
            }
        }

        private void p(FrameReader.Handler handler, int i10, byte b10, int i11) throws IOException {
            if (i10 != 4) {
                throw d.i("TYPE_WINDOW_UPDATE length !=4: %s", Integer.valueOf(i10));
            }
            long j10 = ((long) this.f39563a.readInt()) & 2147483647L;
            if (j10 == 0) {
                throw d.i("windowSizeIncrement was 0", Long.valueOf(j10));
            }
            handler.windowUpdate(i11, j10);
        }

        @Override
        public void close() throws IOException {
            this.f39563a.close();
        }

        @Override
        public boolean nextFrame(FrameReader.Handler handler) throws IOException {
            try {
                this.f39563a.require(9L);
                int iK = d.k(this.f39563a);
                if (iK < 0 || iK > 16384) {
                    throw d.i("FRAME_SIZE_ERROR: %s", Integer.valueOf(iK));
                }
                byte b10 = (byte) (this.f39563a.readByte() & 255);
                byte b11 = (byte) (this.f39563a.readByte() & 255);
                int i10 = this.f39563a.readInt() & Integer.MAX_VALUE;
                if (d.f39552a.isLoggable(Level.FINE)) {
                    d.f39552a.fine(b.b(true, i10, iK, b10, b11));
                }
                switch (b10) {
                    case 0:
                        b(handler, iK, b11, i10);
                        return true;
                    case 1:
                        h(handler, iK, b11, i10);
                        return true;
                    case 2:
                        l(handler, iK, b11, i10);
                        return true;
                    case 3:
                        n(handler, iK, b11, i10);
                        return true;
                    case 4:
                        o(handler, iK, b11, i10);
                        return true;
                    case 5:
                        m(handler, iK, b11, i10);
                        return true;
                    case 6:
                        j(handler, iK, b11, i10);
                        return true;
                    case 7:
                        d(handler, iK, b11, i10);
                        return true;
                    case 8:
                        p(handler, iK, b11, i10);
                        return true;
                    default:
                        this.f39563a.skip(iK);
                        return true;
                }
            } catch (IOException unused) {
                return false;
            }
        }

        @Override
        public void readConnectionPreface() throws IOException {
            if (this.f39565c) {
                return;
            }
            ByteString byteString = this.f39563a.readByteString(d.f39553b.size());
            if (d.f39552a.isLoggable(Level.FINE)) {
                d.f39552a.fine(String.format("<< CONNECTION %s", byteString.hex()));
            }
            if (!d.f39553b.equals(byteString)) {
                throw d.i("Expected a connection header but was %s", byteString.utf8());
            }
        }
    }

    static final class C0554d implements FrameWriter {

        private final BufferedSink f39567a;

        private final boolean f39568b;

        private final Buffer f39569c;

        private final com.squareup.okhttp.internal.framed.c.b f39570d;

        private int f39571e;

        private boolean f39572f;

        C0554d(BufferedSink bufferedSink, boolean z10) {
            this.f39567a = bufferedSink;
            this.f39568b = z10;
            Buffer buffer = new Buffer();
            this.f39569c = buffer;
            this.f39570d = new com.squareup.okhttp.internal.framed.c.b(buffer);
            this.f39571e = 16384;
        }

        private void h(int i10, long j10) throws IOException {
            while (j10 > 0) {
                int iMin = (int) Math.min(this.f39571e, j10);
                long j11 = iMin;
                j10 -= j11;
                d(i10, iMin, (byte) 9, j10 == 0 ? (byte) 4 : (byte) 0);
                this.f39567a.write(this.f39569c, j11);
            }
        }

        @Override
        public synchronized void ackSettings(h hVar) {
            if (this.f39572f) {
                throw new IOException("closed");
            }
            this.f39571e = hVar.g(this.f39571e);
            d(0, 0, (byte) 4, (byte) 1);
            this.f39567a.flush();
        }

        void b(int i10, byte b10, Buffer buffer, int i11) throws IOException {
            d(i10, i11, (byte) 0, b10);
            if (i11 > 0) {
                this.f39567a.write(buffer, i11);
            }
        }

        @Override
        public synchronized void close() {
            this.f39572f = true;
            this.f39567a.close();
        }

        @Override
        public synchronized void connectionPreface() {
            try {
                if (this.f39572f) {
                    throw new IOException("closed");
                }
                if (this.f39568b) {
                    if (d.f39552a.isLoggable(Level.FINE)) {
                        d.f39552a.fine(String.format(">> CONNECTION %s", d.f39553b.hex()));
                    }
                    this.f39567a.write(d.f39553b.toByteArray());
                    this.f39567a.flush();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }

        void d(int i10, int i11, byte b10, byte b11) throws IOException {
            if (d.f39552a.isLoggable(Level.FINE)) {
                d.f39552a.fine(b.b(false, i10, i11, b10, b11));
            }
            int i12 = this.f39571e;
            if (i11 > i12) {
                throw d.h("FRAME_SIZE_ERROR length > %d: %d", Integer.valueOf(i12), Integer.valueOf(i11));
            }
            if ((Integer.MIN_VALUE & i10) != 0) {
                throw d.h("reserved bit set: %s", Integer.valueOf(i10));
            }
            d.l(this.f39567a, i11);
            this.f39567a.writeByte(b10 & 255);
            this.f39567a.writeByte(b11 & 255);
            this.f39567a.writeInt(i10 & Integer.MAX_VALUE);
        }

        @Override
        public synchronized void data(boolean z10, int i10, Buffer buffer, int i11) {
            if (this.f39572f) {
                throw new IOException("closed");
            }
            b(i10, z10 ? (byte) 1 : (byte) 0, buffer, i11);
        }

        void f(boolean z10, int i10, List list) throws IOException {
            if (this.f39572f) {
                throw new IOException("closed");
            }
            this.f39570d.b(list);
            long size = this.f39569c.size();
            int iMin = (int) Math.min(this.f39571e, size);
            long j10 = iMin;
            byte b10 = size == j10 ? (byte) 4 : (byte) 0;
            if (z10) {
                b10 = (byte) (b10 | 1);
            }
            d(i10, iMin, (byte) 1, b10);
            this.f39567a.write(this.f39569c, j10);
            if (size > j10) {
                h(i10, size - j10);
            }
        }

        @Override
        public synchronized void flush() {
            if (this.f39572f) {
                throw new IOException("closed");
            }
            this.f39567a.flush();
        }

        @Override
        public synchronized void goAway(int i10, ErrorCode errorCode, byte[] bArr) {
            try {
                if (this.f39572f) {
                    throw new IOException("closed");
                }
                if (errorCode.httpCode == -1) {
                    throw d.h("errorCode.httpCode == -1", new Object[0]);
                }
                d(0, bArr.length + 8, (byte) 7, (byte) 0);
                this.f39567a.writeInt(i10);
                this.f39567a.writeInt(errorCode.httpCode);
                if (bArr.length > 0) {
                    this.f39567a.write(bArr);
                }
                this.f39567a.flush();
            } catch (Throwable th2) {
                throw th2;
            }
        }

        @Override
        public synchronized void headers(int i10, List list) {
            if (this.f39572f) {
                throw new IOException("closed");
            }
            f(false, i10, list);
        }

        @Override
        public int maxDataLength() {
            return this.f39571e;
        }

        @Override
        public synchronized void ping(boolean z10, int i10, int i11) {
            if (this.f39572f) {
                throw new IOException("closed");
            }
            d(0, 8, (byte) 6, z10 ? (byte) 1 : (byte) 0);
            this.f39567a.writeInt(i10);
            this.f39567a.writeInt(i11);
            this.f39567a.flush();
        }

        @Override
        public synchronized void pushPromise(int i10, int i11, List list) {
            if (this.f39572f) {
                throw new IOException("closed");
            }
            this.f39570d.b(list);
            long size = this.f39569c.size();
            int iMin = (int) Math.min(this.f39571e - 4, size);
            long j10 = iMin;
            d(i10, iMin + 4, (byte) 5, size == j10 ? (byte) 4 : (byte) 0);
            this.f39567a.writeInt(i11 & Integer.MAX_VALUE);
            this.f39567a.write(this.f39569c, j10);
            if (size > j10) {
                h(i10, size - j10);
            }
        }

        @Override
        public synchronized void rstStream(int i10, ErrorCode errorCode) {
            if (this.f39572f) {
                throw new IOException("closed");
            }
            if (errorCode.httpCode == -1) {
                throw new IllegalArgumentException();
            }
            d(i10, 4, (byte) 3, (byte) 0);
            this.f39567a.writeInt(errorCode.httpCode);
            this.f39567a.flush();
        }

        @Override
        public synchronized void settings(h hVar) {
            int i10;
            try {
                if (this.f39572f) {
                    throw new IOException("closed");
                }
                int i11 = 0;
                d(0, hVar.m() * 6, (byte) 4, (byte) 0);
                while (i11 < 10) {
                    if (hVar.i(i11)) {
                        if (i11 == 4) {
                            i10 = 3;
                        } else {
                            i10 = i11 == 7 ? 4 : i11;
                        }
                        this.f39567a.writeShort(i10);
                        this.f39567a.writeInt(hVar.c(i11));
                    }
                    i11++;
                }
                this.f39567a.flush();
            } catch (Throwable th2) {
                throw th2;
            }
        }

        @Override
        public synchronized void synReply(boolean z10, int i10, List list) {
            if (this.f39572f) {
                throw new IOException("closed");
            }
            f(z10, i10, list);
        }

        @Override
        public synchronized void synStream(boolean z10, boolean z11, int i10, int i11, List list) {
            try {
                if (z11) {
                    throw new UnsupportedOperationException();
                }
                if (this.f39572f) {
                    throw new IOException("closed");
                }
                f(z10, i10, list);
            } catch (Throwable th2) {
                throw th2;
            }
        }

        @Override
        public synchronized void windowUpdate(int i10, long j10) {
            if (this.f39572f) {
                throw new IOException("closed");
            }
            if (j10 == 0 || j10 > 2147483647L) {
                throw d.h("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s", Long.valueOf(j10));
            }
            d(i10, 4, (byte) 8, (byte) 0);
            this.f39567a.writeInt((int) j10);
            this.f39567a.flush();
        }
    }

    public static IllegalArgumentException h(String str, Object... objArr) {
        throw new IllegalArgumentException(String.format(str, objArr));
    }

    public static IOException i(String str, Object... objArr) throws IOException {
        throw new IOException(String.format(str, objArr));
    }

    public static int j(int i10, byte b10, short s10) throws IOException {
        if ((b10 & 8) != 0) {
            i10--;
        }
        if (s10 <= i10) {
            return (short) (i10 - s10);
        }
        throw i("PROTOCOL_ERROR padding %s > remaining length %s", Short.valueOf(s10), Integer.valueOf(i10));
    }

    public static int k(BufferedSource bufferedSource) {
        return (bufferedSource.readByte() & 255) | ((bufferedSource.readByte() & 255) << 16) | ((bufferedSource.readByte() & 255) << 8);
    }

    public static void l(BufferedSink bufferedSink, int i10) throws IOException {
        bufferedSink.writeByte((i10 >>> 16) & 255);
        bufferedSink.writeByte((i10 >>> 8) & 255);
        bufferedSink.writeByte(i10 & 255);
    }

    @Override
    public Protocol getProtocol() {
        return Protocol.HTTP_2;
    }

    @Override
    public FrameReader newReader(BufferedSource bufferedSource, boolean z10) {
        return new c(bufferedSource, 4096, z10);
    }

    @Override
    public FrameWriter newWriter(BufferedSink bufferedSink, boolean z10) {
        return new C0554d(bufferedSink, z10);
    }
}
