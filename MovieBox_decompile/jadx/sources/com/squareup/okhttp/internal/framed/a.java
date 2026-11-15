package com.squareup.okhttp.internal.framed;

import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.List;
import okio.AsyncTimeout;
import okio.Buffer;
import okio.BufferedSource;
import okio.Sink;
import okio.Source;
import okio.Timeout;

public final class a {

    long f39510b;

    private final int f39511c;

    private final FramedConnection f39512d;

    private final List f39513e;

    private List f39514f;

    private final c f39515g;

    final b f39516h;

    long f39509a = 0;

    private final d f39517i = new d();

    private final d f39518j = new d();

    private ErrorCode f39519k = null;

    final class b implements Sink {

        private final Buffer f39520a = new Buffer();

        private boolean f39521b;

        private boolean f39522c;

        b() {
        }

        private void h(boolean z10) throws IOException {
            long jMin;
            a aVar;
            synchronized (a.this) {
                a.this.f39518j.enter();
                while (true) {
                    try {
                        a aVar2 = a.this;
                        if (aVar2.f39510b > 0 || this.f39522c || this.f39521b || aVar2.f39519k != null) {
                            break;
                        } else {
                            a.this.z();
                        }
                    } catch (Throwable th2) {
                        a.this.f39518j.exitAndThrowIfTimedOut();
                        throw th2;
                    }
                }
                a.this.f39518j.exitAndThrowIfTimedOut();
                a.this.k();
                jMin = Math.min(a.this.f39510b, this.f39520a.size());
                aVar = a.this;
                aVar.f39510b -= jMin;
            }
            aVar.f39518j.enter();
            try {
                a.this.f39512d.A0(a.this.f39511c, z10 && jMin == this.f39520a.size(), this.f39520a, jMin);
            } finally {
                a.this.f39518j.exitAndThrowIfTimedOut();
            }
        }

        @Override
        public void close() throws IOException {
            synchronized (a.this) {
                try {
                    if (this.f39521b) {
                        return;
                    }
                    if (!a.this.f39516h.f39522c) {
                        if (this.f39520a.size() > 0) {
                            while (this.f39520a.size() > 0) {
                                h(true);
                            }
                        } else {
                            a.this.f39512d.A0(a.this.f39511c, true, null, 0L);
                        }
                    }
                    synchronized (a.this) {
                        this.f39521b = true;
                    }
                    a.this.f39512d.flush();
                    a.this.j();
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override
        public void flush() throws IOException {
            synchronized (a.this) {
                a.this.k();
            }
            while (this.f39520a.size() > 0) {
                h(false);
                a.this.f39512d.flush();
            }
        }

        @Override
        public Timeout getTimeout() {
            return a.this.f39518j;
        }

        @Override
        public void write(Buffer buffer, long j10) throws IOException {
            this.f39520a.write(buffer, j10);
            while (this.f39520a.size() >= 16384) {
                h(false);
            }
        }
    }

    private final class c implements Source {

        private final Buffer f39524a;

        private final Buffer f39525b;

        private final long f39526c;

        private boolean f39527d;

        private boolean f39528e;

        private void h() throws IOException {
            if (this.f39527d) {
                throw new IOException("stream closed");
            }
            if (a.this.f39519k == null) {
                return;
            }
            throw new IOException("stream was reset: " + a.this.f39519k);
        }

        private void k() throws IOException {
            a.this.f39517i.enter();
            while (this.f39525b.size() == 0 && !this.f39528e && !this.f39527d && a.this.f39519k == null) {
                try {
                    a.this.z();
                } catch (Throwable th2) {
                    a.this.f39517i.exitAndThrowIfTimedOut();
                    throw th2;
                }
            }
            a.this.f39517i.exitAndThrowIfTimedOut();
        }

        @Override
        public void close() {
            synchronized (a.this) {
                this.f39527d = true;
                this.f39525b.clear();
                a.this.notifyAll();
            }
            a.this.j();
        }

        void j(BufferedSource bufferedSource, long j10) throws IOException {
            boolean z10;
            boolean z11;
            while (j10 > 0) {
                synchronized (a.this) {
                    z10 = this.f39528e;
                    z11 = this.f39525b.size() + j10 > this.f39526c;
                }
                if (z11) {
                    bufferedSource.skip(j10);
                    a.this.n(ErrorCode.FLOW_CONTROL_ERROR);
                    return;
                }
                if (z10) {
                    bufferedSource.skip(j10);
                    return;
                }
                long j11 = bufferedSource.read(this.f39524a, j10);
                if (j11 == -1) {
                    throw new EOFException();
                }
                j10 -= j11;
                synchronized (a.this) {
                    try {
                        boolean z12 = this.f39525b.size() == 0;
                        this.f39525b.writeAll(this.f39524a);
                        if (z12) {
                            a.this.notifyAll();
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
        }

        @Override
        public long read(Buffer buffer, long j10) {
            if (j10 < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j10);
            }
            synchronized (a.this) {
                try {
                    k();
                    h();
                    if (this.f39525b.size() == 0) {
                        return -1L;
                    }
                    Buffer buffer2 = this.f39525b;
                    long j11 = buffer2.read(buffer, Math.min(j10, buffer2.size()));
                    a aVar = a.this;
                    long j12 = aVar.f39509a + j11;
                    aVar.f39509a = j12;
                    if (j12 >= aVar.f39512d.f39492p.e(65536) / 2) {
                        a.this.f39512d.H0(a.this.f39511c, a.this.f39509a);
                        a.this.f39509a = 0L;
                    }
                    synchronized (a.this.f39512d) {
                        try {
                            a.this.f39512d.f39490n += j11;
                            if (a.this.f39512d.f39490n >= a.this.f39512d.f39492p.e(65536) / 2) {
                                a.this.f39512d.H0(0, a.this.f39512d.f39490n);
                                a.this.f39512d.f39490n = 0L;
                            }
                        } catch (Throwable th2) {
                            throw th2;
                        }
                    }
                    return j11;
                } catch (Throwable th3) {
                    throw th3;
                }
            }
        }

        @Override
        public Timeout getTimeout() {
            return a.this.f39517i;
        }

        private c(long j10) {
            this.f39524a = new Buffer();
            this.f39525b = new Buffer();
            this.f39526c = j10;
        }
    }

    class d extends AsyncTimeout {
        d() {
        }

        public void exitAndThrowIfTimedOut() throws IOException {
            if (exit()) {
                throw newTimeoutException(null);
            }
        }

        @Override
        protected IOException newTimeoutException(IOException iOException) {
            SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
            if (iOException != null) {
                socketTimeoutException.initCause(iOException);
            }
            return socketTimeoutException;
        }

        @Override
        protected void timedOut() {
            a.this.n(ErrorCode.CANCEL);
        }
    }

    a(int i10, FramedConnection framedConnection, boolean z10, boolean z11, List list) {
        if (framedConnection == null) {
            throw new NullPointerException("connection == null");
        }
        if (list == null) {
            throw new NullPointerException("requestHeaders == null");
        }
        this.f39511c = i10;
        this.f39512d = framedConnection;
        this.f39510b = framedConnection.f39493q.e(65536);
        c cVar = new c(framedConnection.f39492p.e(65536));
        this.f39515g = cVar;
        b bVar = new b();
        this.f39516h = bVar;
        cVar.f39528e = z11;
        bVar.f39522c = z10;
        this.f39513e = list;
    }

    public void j() {
        boolean z10;
        boolean zT;
        synchronized (this) {
            try {
                z10 = !this.f39515g.f39528e && this.f39515g.f39527d && (this.f39516h.f39522c || this.f39516h.f39521b);
                zT = t();
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (z10) {
            l(ErrorCode.CANCEL);
        } else {
            if (zT) {
                return;
            }
            this.f39512d.t0(this.f39511c);
        }
    }

    public void k() throws IOException {
        if (this.f39516h.f39521b) {
            throw new IOException("stream closed");
        }
        if (this.f39516h.f39522c) {
            throw new IOException("stream finished");
        }
        if (this.f39519k == null) {
            return;
        }
        throw new IOException("stream was reset: " + this.f39519k);
    }

    private boolean m(ErrorCode errorCode) {
        synchronized (this) {
            try {
                if (this.f39519k != null) {
                    return false;
                }
                if (this.f39515g.f39528e && this.f39516h.f39522c) {
                    return false;
                }
                this.f39519k = errorCode;
                notifyAll();
                this.f39512d.t0(this.f39511c);
                return true;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void z() throws InterruptedIOException {
        try {
            wait();
        } catch (InterruptedException unused) {
            throw new InterruptedIOException();
        }
    }

    public Timeout A() {
        return this.f39518j;
    }

    void i(long j10) {
        this.f39510b += j10;
        if (j10 > 0) {
            notifyAll();
        }
    }

    public void l(ErrorCode errorCode) {
        if (m(errorCode)) {
            this.f39512d.E0(this.f39511c, errorCode);
        }
    }

    public void n(ErrorCode errorCode) {
        if (m(errorCode)) {
            this.f39512d.G0(this.f39511c, errorCode);
        }
    }

    public int o() {
        return this.f39511c;
    }

    public synchronized List p() {
        List list;
        try {
            this.f39517i.enter();
            while (this.f39514f == null && this.f39519k == null) {
                try {
                    z();
                } catch (Throwable th2) {
                    this.f39517i.exitAndThrowIfTimedOut();
                    throw th2;
                }
            }
            this.f39517i.exitAndThrowIfTimedOut();
            list = this.f39514f;
            if (list == null) {
                throw new IOException("stream was reset: " + this.f39519k);
            }
        } catch (Throwable th3) {
            throw th3;
        }
        return list;
    }

    public Sink q() {
        synchronized (this) {
            try {
                if (this.f39514f == null && !s()) {
                    throw new IllegalStateException("reply before requesting the sink");
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return this.f39516h;
    }

    public Source r() {
        return this.f39515g;
    }

    public boolean s() {
        return this.f39512d.f39478b == ((this.f39511c & 1) == 1);
    }

    public synchronized boolean t() {
        try {
            if (this.f39519k != null) {
                return false;
            }
            if (this.f39515g.f39528e || this.f39515g.f39527d) {
                if ((this.f39516h.f39522c || this.f39516h.f39521b) && this.f39514f != null) {
                    return false;
                }
            }
            return true;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public Timeout u() {
        return this.f39517i;
    }

    void v(BufferedSource bufferedSource, int i10) {
        this.f39515g.j(bufferedSource, i10);
    }

    void w() {
        boolean zT;
        synchronized (this) {
            this.f39515g.f39528e = true;
            zT = t();
            notifyAll();
        }
        if (zT) {
            return;
        }
        this.f39512d.t0(this.f39511c);
    }

    void x(List list, HeadersMode headersMode) {
        ErrorCode errorCode;
        boolean zT;
        synchronized (this) {
            try {
                errorCode = null;
                zT = true;
                if (this.f39514f == null) {
                    if (headersMode.failIfHeadersAbsent()) {
                        errorCode = ErrorCode.PROTOCOL_ERROR;
                    } else {
                        this.f39514f = list;
                        zT = t();
                        notifyAll();
                    }
                } else if (headersMode.failIfHeadersPresent()) {
                    errorCode = ErrorCode.STREAM_IN_USE;
                } else {
                    ArrayList arrayList = new ArrayList();
                    arrayList.addAll(this.f39514f);
                    arrayList.addAll(list);
                    this.f39514f = arrayList;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (errorCode != null) {
            n(errorCode);
        } else {
            if (zT) {
                return;
            }
            this.f39512d.t0(this.f39511c);
        }
    }

    synchronized void y(ErrorCode errorCode) {
        if (this.f39519k == null) {
            this.f39519k = errorCode;
            notifyAll();
        }
    }
}
