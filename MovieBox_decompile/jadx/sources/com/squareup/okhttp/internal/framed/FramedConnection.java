package com.squareup.okhttp.internal.framed;

import com.squareup.okhttp.Protocol;
import com.squareup.okhttp.internal.NamedRunnable;
import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.Socket;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import okhttp3.internal.http2.Settings;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ByteString;

public final class FramedConnection implements Closeable {

    private static final ExecutorService f39476x = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60, TimeUnit.SECONDS, new SynchronousQueue(), com.squareup.okhttp.internal.g.s("OkHttp FramedConnection", true));

    final Protocol f39477a;

    final boolean f39478b;

    private final b f39479c;

    private final Map f39480d;

    private final String f39481e;

    private int f39482f;

    private int f39483g;

    private boolean f39484h;

    private long f39485i;

    private final ExecutorService f39486j;

    private Map f39487k;

    private final PushObserver f39488l;

    private int f39489m;

    long f39490n;

    long f39491o;

    h f39492p;

    final h f39493q;

    private boolean f39494r;

    final Variant f39495s;

    final Socket f39496t;

    final FrameWriter f39497u;

    final Reader f39498v;

    private final Set f39499w;

    class Reader extends NamedRunnable implements FrameReader.Handler {
        final FrameReader frameReader;

        private void ackSettingsLater(final h hVar) {
            FramedConnection.f39476x.execute(new NamedRunnable("OkHttp %s ACK Settings", new Object[]{FramedConnection.this.f39481e}) {
                @Override
                public void execute() {
                    try {
                        FramedConnection.this.f39497u.ackSettings(hVar);
                    } catch (IOException unused) {
                    }
                }
            });
        }

        @Override
        public void ackSettings() {
        }

        @Override
        public void alternateService(int i10, String str, ByteString byteString, String str2, int i11, long j10) {
        }

        @Override
        public void data(boolean z10, int i10, BufferedSource bufferedSource, int i11) throws IOException {
            if (FramedConnection.this.r0(i10)) {
                FramedConnection.this.j0(i10, bufferedSource, i11, z10);
                return;
            }
            com.squareup.okhttp.internal.framed.a aVarE0 = FramedConnection.this.e0(i10);
            if (aVarE0 == null) {
                FramedConnection.this.G0(i10, ErrorCode.INVALID_STREAM);
                bufferedSource.skip(i11);
            } else {
                aVarE0.v(bufferedSource, i11);
                if (z10) {
                    aVarE0.w();
                }
            }
        }

        @Override
        protected void execute() throws Throwable {
            ErrorCode errorCode;
            ErrorCode errorCode2;
            ErrorCode errorCode3 = ErrorCode.INTERNAL_ERROR;
            try {
                try {
                    if (!FramedConnection.this.f39478b) {
                        this.frameReader.readConnectionPreface();
                    }
                    while (this.frameReader.nextFrame(this)) {
                    }
                    errorCode2 = ErrorCode.NO_ERROR;
                    try {
                        try {
                            FramedConnection.this.X(errorCode2, ErrorCode.CANCEL);
                        } catch (IOException unused) {
                            ErrorCode errorCode4 = ErrorCode.PROTOCOL_ERROR;
                            FramedConnection.this.X(errorCode4, errorCode4);
                        }
                    } catch (Throwable th2) {
                        errorCode = errorCode2;
                        th = th2;
                        try {
                            FramedConnection.this.X(errorCode, errorCode3);
                        } catch (IOException unused2) {
                        }
                        com.squareup.okhttp.internal.g.c(this.frameReader);
                        throw th;
                    }
                } catch (IOException unused3) {
                }
            } catch (IOException unused4) {
                errorCode2 = errorCode3;
            } catch (Throwable th3) {
                th = th3;
                errorCode = errorCode3;
                FramedConnection.this.X(errorCode, errorCode3);
                com.squareup.okhttp.internal.g.c(this.frameReader);
                throw th;
            }
            com.squareup.okhttp.internal.g.c(this.frameReader);
        }

        @Override
        public void goAway(int i10, ErrorCode errorCode, ByteString byteString) {
            com.squareup.okhttp.internal.framed.a[] aVarArr;
            byteString.size();
            synchronized (FramedConnection.this) {
                aVarArr = (com.squareup.okhttp.internal.framed.a[]) FramedConnection.this.f39480d.values().toArray(new com.squareup.okhttp.internal.framed.a[FramedConnection.this.f39480d.size()]);
                FramedConnection.this.f39484h = true;
            }
            for (com.squareup.okhttp.internal.framed.a aVar : aVarArr) {
                if (aVar.o() > i10 && aVar.s()) {
                    aVar.y(ErrorCode.REFUSED_STREAM);
                    FramedConnection.this.t0(aVar.o());
                }
            }
        }

        @Override
        public void headers(boolean z10, boolean z11, int i10, int i11, List<com.squareup.okhttp.internal.framed.b> list, HeadersMode headersMode) {
            if (FramedConnection.this.r0(i10)) {
                FramedConnection.this.l0(i10, list, z11);
                return;
            }
            synchronized (FramedConnection.this) {
                try {
                    if (FramedConnection.this.f39484h) {
                        return;
                    }
                    com.squareup.okhttp.internal.framed.a aVarE0 = FramedConnection.this.e0(i10);
                    if (aVarE0 != null) {
                        if (headersMode.failIfStreamPresent()) {
                            aVarE0.n(ErrorCode.PROTOCOL_ERROR);
                            FramedConnection.this.t0(i10);
                            return;
                        } else {
                            aVarE0.x(list, headersMode);
                            if (z11) {
                                aVarE0.w();
                                return;
                            }
                            return;
                        }
                    }
                    if (headersMode.failIfStreamAbsent()) {
                        FramedConnection.this.G0(i10, ErrorCode.INVALID_STREAM);
                        return;
                    }
                    if (i10 <= FramedConnection.this.f39482f) {
                        return;
                    }
                    if (i10 % 2 == FramedConnection.this.f39483g % 2) {
                        return;
                    }
                    final com.squareup.okhttp.internal.framed.a aVar = new com.squareup.okhttp.internal.framed.a(i10, FramedConnection.this, z10, z11, list);
                    FramedConnection.this.f39482f = i10;
                    FramedConnection.this.f39480d.put(Integer.valueOf(i10), aVar);
                    FramedConnection.f39476x.execute(new NamedRunnable("OkHttp %s stream %d", new Object[]{FramedConnection.this.f39481e, Integer.valueOf(i10)}) {
                        @Override
                        public void execute() {
                            try {
                                FramedConnection.this.f39479c.b(aVar);
                            } catch (IOException e10) {
                                com.squareup.okhttp.internal.c.logger.log(Level.INFO, "FramedConnection.Listener failure for " + FramedConnection.this.f39481e, (Throwable) e10);
                                try {
                                    aVar.l(ErrorCode.PROTOCOL_ERROR);
                                } catch (IOException unused) {
                                }
                            }
                        }
                    });
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override
        public void ping(boolean z10, int i10, int i11) {
            if (z10) {
                FramedConnection.v(FramedConnection.this, i10);
            } else {
                FramedConnection.this.D0(true, i10, i11, null);
            }
        }

        @Override
        public void priority(int i10, int i11, int i12, boolean z10) {
        }

        @Override
        public void pushPromise(int i10, int i11, List<com.squareup.okhttp.internal.framed.b> list) {
            FramedConnection.this.o0(i11, list);
        }

        @Override
        public void rstStream(int i10, ErrorCode errorCode) {
            if (FramedConnection.this.r0(i10)) {
                FramedConnection.this.p0(i10, errorCode);
                return;
            }
            com.squareup.okhttp.internal.framed.a aVarT0 = FramedConnection.this.t0(i10);
            if (aVarT0 != null) {
                aVarT0.y(errorCode);
            }
        }

        @Override
        public void settings(boolean z10, h hVar) {
            com.squareup.okhttp.internal.framed.a[] aVarArr;
            long j10;
            synchronized (FramedConnection.this) {
                try {
                    int iE = FramedConnection.this.f39493q.e(65536);
                    if (z10) {
                        FramedConnection.this.f39493q.a();
                    }
                    FramedConnection.this.f39493q.j(hVar);
                    if (FramedConnection.this.d0() == Protocol.HTTP_2) {
                        ackSettingsLater(hVar);
                    }
                    int iE2 = FramedConnection.this.f39493q.e(65536);
                    aVarArr = null;
                    if (iE2 == -1 || iE2 == iE) {
                        j10 = 0;
                    } else {
                        j10 = iE2 - iE;
                        if (!FramedConnection.this.f39494r) {
                            FramedConnection.this.W(j10);
                            FramedConnection.this.f39494r = true;
                        }
                        if (!FramedConnection.this.f39480d.isEmpty()) {
                            aVarArr = (com.squareup.okhttp.internal.framed.a[]) FramedConnection.this.f39480d.values().toArray(new com.squareup.okhttp.internal.framed.a[FramedConnection.this.f39480d.size()]);
                        }
                    }
                    FramedConnection.f39476x.execute(new NamedRunnable("OkHttp %s settings", FramedConnection.this.f39481e) {
                        @Override
                        public void execute() {
                            FramedConnection.this.f39479c.a(FramedConnection.this);
                        }
                    });
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (aVarArr == null || j10 == 0) {
                return;
            }
            for (com.squareup.okhttp.internal.framed.a aVar : aVarArr) {
                synchronized (aVar) {
                    aVar.i(j10);
                }
            }
        }

        @Override
        public void windowUpdate(int i10, long j10) {
            if (i10 == 0) {
                synchronized (FramedConnection.this) {
                    FramedConnection framedConnection = FramedConnection.this;
                    framedConnection.f39491o += j10;
                    framedConnection.notifyAll();
                }
                return;
            }
            com.squareup.okhttp.internal.framed.a aVarE0 = FramedConnection.this.e0(i10);
            if (aVarE0 != null) {
                synchronized (aVarE0) {
                    aVarE0.i(j10);
                }
            }
        }

        private Reader(FrameReader frameReader) {
            super("OkHttp %s", FramedConnection.this.f39481e);
            this.frameReader = frameReader;
        }
    }

    public static class a {

        private Socket f39500a;

        private String f39501b;

        private BufferedSource f39502c;

        private BufferedSink f39503d;

        private b f39504e = b.f39508a;

        private Protocol f39505f = Protocol.SPDY_3;

        private PushObserver f39506g = PushObserver.CANCEL;

        private boolean f39507h;

        public a(boolean z10) {
            this.f39507h = z10;
        }

        public FramedConnection i() {
            return new FramedConnection(this);
        }

        public a j(Protocol protocol) {
            this.f39505f = protocol;
            return this;
        }

        public a k(Socket socket, String str, BufferedSource bufferedSource, BufferedSink bufferedSink) {
            this.f39500a = socket;
            this.f39501b = str;
            this.f39502c = bufferedSource;
            this.f39503d = bufferedSink;
            return this;
        }
    }

    public static abstract class b {

        public static final b f39508a = new a();

        static class a extends b {
            a() {
            }

            @Override
            public void b(com.squareup.okhttp.internal.framed.a aVar) {
                aVar.l(ErrorCode.REFUSED_STREAM);
            }
        }

        public void a(FramedConnection framedConnection) {
        }

        public abstract void b(com.squareup.okhttp.internal.framed.a aVar);
    }

    public void B0(boolean z10, int i10, int i11, g gVar) {
        synchronized (this.f39497u) {
            this.f39497u.ping(z10, i10, i11);
        }
    }

    public void D0(boolean z10, int i10, int i11, g gVar) {
        f39476x.execute(new NamedRunnable("OkHttp %s ping %08x%08x", new Object[]{this.f39481e, Integer.valueOf(i10), Integer.valueOf(i11)}, z10, i10, i11, gVar) {
            final int val$payload1;
            final int val$payload2;
            final g val$ping;
            final boolean val$reply;

            @Override
            public void execute() {
                try {
                    FramedConnection.this.B0(this.val$reply, this.val$payload1, this.val$payload2, null);
                } catch (IOException unused) {
                }
            }
        });
    }

    public void X(ErrorCode errorCode, ErrorCode errorCode2) throws IOException {
        com.squareup.okhttp.internal.framed.a[] aVarArr;
        g[] gVarArr;
        try {
            y0(errorCode);
            e = null;
        } catch (IOException e10) {
            e = e10;
        }
        synchronized (this) {
            try {
                if (this.f39480d.isEmpty()) {
                    aVarArr = null;
                } else {
                    aVarArr = (com.squareup.okhttp.internal.framed.a[]) this.f39480d.values().toArray(new com.squareup.okhttp.internal.framed.a[this.f39480d.size()]);
                    this.f39480d.clear();
                    x0(false);
                }
                Map map = this.f39487k;
                if (map != null) {
                    gVarArr = (g[]) map.values().toArray(new g[this.f39487k.size()]);
                    this.f39487k = null;
                } else {
                    gVarArr = null;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (aVarArr != null) {
            for (com.squareup.okhttp.internal.framed.a aVar : aVarArr) {
                try {
                    aVar.l(errorCode2);
                } catch (IOException e11) {
                    if (e != null) {
                        e = e11;
                    }
                }
            }
        }
        if (gVarArr != null && gVarArr.length > 0) {
            g gVar = gVarArr[0];
            throw null;
        }
        try {
            this.f39497u.close();
        } catch (IOException e12) {
            if (e == null) {
                e = e12;
            }
        }
        try {
            this.f39496t.close();
        } catch (IOException e13) {
            e = e13;
        }
        if (e != null) {
            throw e;
        }
    }

    private com.squareup.okhttp.internal.framed.a g0(int i10, List list, boolean z10, boolean z11) throws IOException {
        int i11;
        com.squareup.okhttp.internal.framed.a aVar;
        boolean z12 = !z10;
        boolean z13 = !z11;
        synchronized (this.f39497u) {
            try {
                synchronized (this) {
                    try {
                        if (this.f39484h) {
                            throw new IOException("shutdown");
                        }
                        i11 = this.f39483g;
                        this.f39483g = i11 + 2;
                        aVar = new com.squareup.okhttp.internal.framed.a(i11, this, z12, z13, list);
                        if (aVar.t()) {
                            this.f39480d.put(Integer.valueOf(i11), aVar);
                            x0(false);
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                if (i10 == 0) {
                    this.f39497u.synStream(z12, z13, i11, i10, list);
                } else {
                    if (this.f39478b) {
                        throw new IllegalArgumentException("client streams shouldn't have associated stream IDs");
                    }
                    this.f39497u.pushPromise(i10, i11, list);
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
        if (!z10) {
            this.f39497u.flush();
        }
        return aVar;
    }

    public void j0(final int i10, BufferedSource bufferedSource, final int i11, final boolean z10) throws IOException {
        final Buffer buffer = new Buffer();
        long j10 = i11;
        bufferedSource.require(j10);
        bufferedSource.read(buffer, j10);
        if (buffer.size() == j10) {
            this.f39486j.execute(new NamedRunnable("OkHttp %s Push Data[%s]", new Object[]{this.f39481e, Integer.valueOf(i10)}) {
                @Override
                public void execute() {
                    try {
                        boolean zOnData = FramedConnection.this.f39488l.onData(i10, buffer, i11, z10);
                        if (zOnData) {
                            FramedConnection.this.f39497u.rstStream(i10, ErrorCode.CANCEL);
                        }
                        if (zOnData || z10) {
                            synchronized (FramedConnection.this) {
                                try {
                                    FramedConnection.this.f39499w.remove(Integer.valueOf(i10));
                                } catch (Throwable th2) {
                                    throw th2;
                                }
                            }
                        }
                    } catch (IOException unused) {
                    }
                }
            });
            return;
        }
        throw new IOException(buffer.size() + " != " + i11);
    }

    public void l0(final int i10, final List list, final boolean z10) {
        this.f39486j.execute(new NamedRunnable("OkHttp %s Push Headers[%s]", new Object[]{this.f39481e, Integer.valueOf(i10)}) {
            @Override
            public void execute() {
                boolean zOnHeaders = FramedConnection.this.f39488l.onHeaders(i10, list, z10);
                if (zOnHeaders) {
                    try {
                        FramedConnection.this.f39497u.rstStream(i10, ErrorCode.CANCEL);
                    } catch (IOException unused) {
                        return;
                    }
                }
                if (zOnHeaders || z10) {
                    synchronized (FramedConnection.this) {
                        FramedConnection.this.f39499w.remove(Integer.valueOf(i10));
                    }
                }
            }
        });
    }

    public void o0(final int i10, final List list) {
        synchronized (this) {
            try {
                if (this.f39499w.contains(Integer.valueOf(i10))) {
                    G0(i10, ErrorCode.PROTOCOL_ERROR);
                } else {
                    this.f39499w.add(Integer.valueOf(i10));
                    this.f39486j.execute(new NamedRunnable("OkHttp %s Push Request[%s]", new Object[]{this.f39481e, Integer.valueOf(i10)}) {
                        @Override
                        public void execute() {
                            if (FramedConnection.this.f39488l.onRequest(i10, list)) {
                                try {
                                    FramedConnection.this.f39497u.rstStream(i10, ErrorCode.CANCEL);
                                    synchronized (FramedConnection.this) {
                                        FramedConnection.this.f39499w.remove(Integer.valueOf(i10));
                                    }
                                } catch (IOException unused) {
                                }
                            }
                        }
                    });
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void p0(final int i10, final ErrorCode errorCode) {
        this.f39486j.execute(new NamedRunnable("OkHttp %s Push Reset[%s]", new Object[]{this.f39481e, Integer.valueOf(i10)}) {
            @Override
            public void execute() {
                FramedConnection.this.f39488l.onReset(i10, errorCode);
                synchronized (FramedConnection.this) {
                    FramedConnection.this.f39499w.remove(Integer.valueOf(i10));
                }
            }
        });
    }

    public boolean r0(int i10) {
        return this.f39477a == Protocol.HTTP_2 && i10 != 0 && (i10 & 1) == 0;
    }

    private synchronized g s0(int i10) {
        Map map = this.f39487k;
        if (map != null) {
            android.support.v4.media.session.c.a(map.remove(Integer.valueOf(i10)));
        }
        return null;
    }

    static g v(FramedConnection framedConnection, int i10) {
        framedConnection.s0(i10);
        return null;
    }

    private synchronized void x0(boolean z10) {
        long jNanoTime;
        if (z10) {
            try {
                jNanoTime = System.nanoTime();
            } catch (Throwable th2) {
                throw th2;
            }
        } else {
            jNanoTime = Long.MAX_VALUE;
        }
        this.f39485i = jNanoTime;
    }

    public void A0(int i10, boolean z10, Buffer buffer, long j10) throws IOException {
        long j11;
        int iMin;
        long j12;
        if (j10 == 0) {
            this.f39497u.data(z10, i10, buffer, 0);
            return;
        }
        while (j10 > 0) {
            synchronized (this) {
                while (true) {
                    try {
                        try {
                            j11 = this.f39491o;
                            if (j11 <= 0) {
                                if (!this.f39480d.containsKey(Integer.valueOf(i10))) {
                                    throw new IOException("stream closed");
                                }
                                wait();
                            }
                        } catch (InterruptedException unused) {
                            throw new InterruptedIOException();
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                iMin = Math.min((int) Math.min(j10, j11), this.f39497u.maxDataLength());
                j12 = iMin;
                this.f39491o -= j12;
            }
            j10 -= j12;
            this.f39497u.data(z10 && j10 == 0, i10, buffer, iMin);
        }
    }

    void E0(int i10, ErrorCode errorCode) throws IOException {
        this.f39497u.rstStream(i10, errorCode);
    }

    void G0(final int i10, final ErrorCode errorCode) {
        f39476x.submit(new NamedRunnable("OkHttp %s stream %d", new Object[]{this.f39481e, Integer.valueOf(i10)}) {
            @Override
            public void execute() {
                try {
                    FramedConnection.this.E0(i10, errorCode);
                } catch (IOException unused) {
                }
            }
        });
    }

    void H0(final int i10, final long j10) {
        f39476x.execute(new NamedRunnable("OkHttp Window Update %s stream %d", new Object[]{this.f39481e, Integer.valueOf(i10)}) {
            @Override
            public void execute() {
                try {
                    FramedConnection.this.f39497u.windowUpdate(i10, j10);
                } catch (IOException unused) {
                }
            }
        });
    }

    void W(long j10) {
        this.f39491o += j10;
        if (j10 > 0) {
            notifyAll();
        }
    }

    @Override
    public void close() throws IOException {
        X(ErrorCode.NO_ERROR, ErrorCode.CANCEL);
    }

    public Protocol d0() {
        return this.f39477a;
    }

    synchronized com.squareup.okhttp.internal.framed.a e0(int i10) {
        return (com.squareup.okhttp.internal.framed.a) this.f39480d.get(Integer.valueOf(i10));
    }

    public synchronized int f0() {
        return this.f39493q.f(Integer.MAX_VALUE);
    }

    public void flush() throws IOException {
        this.f39497u.flush();
    }

    public com.squareup.okhttp.internal.framed.a h0(List list, boolean z10, boolean z11) {
        return g0(0, list, z10, z11);
    }

    synchronized com.squareup.okhttp.internal.framed.a t0(int i10) {
        com.squareup.okhttp.internal.framed.a aVar;
        try {
            aVar = (com.squareup.okhttp.internal.framed.a) this.f39480d.remove(Integer.valueOf(i10));
            if (aVar != null && this.f39480d.isEmpty()) {
                x0(true);
            }
            notifyAll();
        } catch (Throwable th2) {
            throw th2;
        }
        return aVar;
    }

    public void u0() {
        this.f39497u.connectionPreface();
        this.f39497u.settings(this.f39492p);
        int iE = this.f39492p.e(65536);
        if (iE != 65536) {
            this.f39497u.windowUpdate(0, iE - 65536);
        }
    }

    public void y0(ErrorCode errorCode) {
        synchronized (this.f39497u) {
            synchronized (this) {
                if (this.f39484h) {
                    return;
                }
                this.f39484h = true;
                this.f39497u.goAway(this.f39482f, errorCode, com.squareup.okhttp.internal.g.f39598a);
            }
        }
    }

    private FramedConnection(a aVar) {
        this.f39480d = new HashMap();
        this.f39485i = System.nanoTime();
        this.f39490n = 0L;
        this.f39492p = new h();
        h hVar = new h();
        this.f39493q = hVar;
        this.f39494r = false;
        this.f39499w = new LinkedHashSet();
        Protocol protocol = aVar.f39505f;
        this.f39477a = protocol;
        this.f39488l = aVar.f39506g;
        boolean z10 = aVar.f39507h;
        this.f39478b = z10;
        this.f39479c = aVar.f39504e;
        this.f39483g = aVar.f39507h ? 1 : 2;
        if (aVar.f39507h && protocol == Protocol.HTTP_2) {
            this.f39483g += 2;
        }
        this.f39489m = aVar.f39507h ? 1 : 2;
        if (aVar.f39507h) {
            this.f39492p.l(7, 0, 16777216);
        }
        String str = aVar.f39501b;
        this.f39481e = str;
        if (protocol == Protocol.HTTP_2) {
            this.f39495s = new d();
            this.f39486j = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), com.squareup.okhttp.internal.g.s(String.format("OkHttp %s Push Observer", str), true));
            hVar.l(7, 0, Settings.DEFAULT_INITIAL_WINDOW_SIZE);
            hVar.l(5, 0, 16384);
        } else {
            if (protocol != Protocol.SPDY_3) {
                throw new AssertionError(protocol);
            }
            this.f39495s = new i();
            this.f39486j = null;
        }
        this.f39491o = hVar.e(65536);
        this.f39496t = aVar.f39500a;
        this.f39497u = this.f39495s.newWriter(aVar.f39503d, z10);
        Reader reader = new Reader(this.f39495s.newReader(aVar.f39502c, z10));
        this.f39498v = reader;
        new Thread(reader).start();
    }
}
