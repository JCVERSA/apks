package com.mbridge.msdk.thrid.okio;

import androidx.annotation.Nullable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.logging.Level;
import java.util.logging.Logger;

public final class l {

    static final Logger f37619a = Logger.getLogger(l.class.getName());

    static class a implements r {

        final t f37620a;

        final OutputStream f37621b;

        a(t tVar, OutputStream outputStream) {
            this.f37620a = tVar;
            this.f37621b = outputStream;
        }

        @Override
        public void a(com.mbridge.msdk.thrid.okio.c cVar, long j10) throws IOException {
            u.a(cVar.f37600b, 0L, j10);
            while (j10 > 0) {
                this.f37620a.e();
                o oVar = cVar.f37599a;
                int iMin = (int) Math.min(j10, oVar.f37634c - oVar.f37633b);
                this.f37621b.write(oVar.f37632a, oVar.f37633b, iMin);
                int i10 = oVar.f37633b + iMin;
                oVar.f37633b = i10;
                long j11 = iMin;
                j10 -= j11;
                cVar.f37600b -= j11;
                if (i10 == oVar.f37634c) {
                    cVar.f37599a = oVar.b();
                    p.a(oVar);
                }
            }
        }

        @Override
        public t b() {
            return this.f37620a;
        }

        @Override
        public void close() throws IOException {
            this.f37621b.close();
        }

        @Override
        public void flush() throws IOException {
            this.f37621b.flush();
        }

        public String toString() {
            return "sink(" + this.f37621b + ")";
        }
    }

    static class c extends com.mbridge.msdk.thrid.okio.a {

        final Socket f37624k;

        c(Socket socket) {
            this.f37624k = socket;
        }

        @Override
        protected IOException b(@Nullable IOException iOException) {
            SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
            if (iOException != null) {
                socketTimeoutException.initCause(iOException);
            }
            return socketTimeoutException;
        }

        @Override
        protected void j() {
            try {
                this.f37624k.close();
            } catch (AssertionError e10) {
                if (!l.a(e10)) {
                    throw e10;
                }
                l.f37619a.log(Level.WARNING, "Failed to close timed out socket " + this.f37624k, (Throwable) e10);
            } catch (Exception e11) {
                l.f37619a.log(Level.WARNING, "Failed to close timed out socket " + this.f37624k, (Throwable) e11);
            }
        }
    }

    private l() {
    }

    public static e a(s sVar) {
        return new n(sVar);
    }

    public static s b(Socket socket) throws IOException {
        if (socket == null) {
            throw new IllegalArgumentException("socket == null");
        }
        if (socket.getInputStream() == null) {
            throw new IOException("socket's input stream == null");
        }
        com.mbridge.msdk.thrid.okio.a aVarC = c(socket);
        return aVarC.a(a(socket.getInputStream(), aVarC));
    }

    private static com.mbridge.msdk.thrid.okio.a c(Socket socket) {
        return new c(socket);
    }

    public static d a(r rVar) {
        return new m(rVar);
    }

    private static r a(OutputStream outputStream, t tVar) {
        if (outputStream == null) {
            throw new IllegalArgumentException("out == null");
        }
        if (tVar != null) {
            return new a(tVar, outputStream);
        }
        throw new IllegalArgumentException("timeout == null");
    }

    public static r a(Socket socket) throws IOException {
        if (socket != null) {
            if (socket.getOutputStream() != null) {
                com.mbridge.msdk.thrid.okio.a aVarC = c(socket);
                return aVarC.a(a(socket.getOutputStream(), aVarC));
            }
            throw new IOException("socket's output stream == null");
        }
        throw new IllegalArgumentException("socket == null");
    }

    static class b implements s {

        final t f37622a;

        final InputStream f37623b;

        b(t tVar, InputStream inputStream) {
            this.f37622a = tVar;
            this.f37623b = inputStream;
        }

        @Override
        public long b(com.mbridge.msdk.thrid.okio.c cVar, long j10) throws IOException {
            if (j10 < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j10);
            }
            if (j10 == 0) {
                return 0L;
            }
            try {
                this.f37622a.e();
                o oVarB = cVar.b(1);
                int i10 = this.f37623b.read(oVarB.f37632a, oVarB.f37634c, (int) Math.min(j10, 8192 - oVarB.f37634c));
                if (i10 == -1) {
                    return -1L;
                }
                oVarB.f37634c += i10;
                long j11 = i10;
                cVar.f37600b += j11;
                return j11;
            } catch (AssertionError e10) {
                if (l.a(e10)) {
                    throw new IOException(e10);
                }
                throw e10;
            }
        }

        @Override
        public void close() throws IOException {
            this.f37623b.close();
        }

        public String toString() {
            return "source(" + this.f37623b + ")";
        }

        @Override
        public t b() {
            return this.f37622a;
        }
    }

    public static s a(InputStream inputStream) {
        return a(inputStream, new t());
    }

    private static s a(InputStream inputStream, t tVar) {
        if (inputStream == null) {
            throw new IllegalArgumentException("in == null");
        }
        if (tVar != null) {
            return new b(tVar, inputStream);
        }
        throw new IllegalArgumentException("timeout == null");
    }

    static boolean a(AssertionError assertionError) {
        return (assertionError.getCause() == null || assertionError.getMessage() == null || !assertionError.getMessage().contains("getsockname failed")) ? false : true;
    }
}
