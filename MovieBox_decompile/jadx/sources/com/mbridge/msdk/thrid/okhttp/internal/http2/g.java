package com.mbridge.msdk.thrid.okhttp.internal.http2;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.Socket;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import okhttp3.internal.http2.Settings;

public final class g implements Closeable {
    static final boolean A = true;

    private static final ExecutorService f37264z = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60, TimeUnit.SECONDS, new SynchronousQueue(), com.mbridge.msdk.thrid.okhttp.internal.c.a("OkHttp Http2Connection", true));

    final boolean f37265a;

    final j f37266b;

    final String f37268d;

    int f37269e;

    int f37270f;

    private boolean f37271g;

    private final ScheduledExecutorService f37272h;

    private final ExecutorService f37273i;

    final com.mbridge.msdk.thrid.okhttp.internal.http2.l f37274j;

    long f37283s;

    final m f37285u;

    final Socket f37286v;

    final com.mbridge.msdk.thrid.okhttp.internal.http2.j f37287w;

    final l f37288x;

    final Set<Integer> f37289y;

    final Map<Integer, com.mbridge.msdk.thrid.okhttp.internal.http2.i> f37267c = new LinkedHashMap();

    private long f37275k = 0;

    private long f37276l = 0;

    private long f37277m = 0;

    private long f37278n = 0;

    private long f37279o = 0;

    private long f37280p = 0;

    private long f37281q = 0;

    long f37282r = 0;

    m f37284t = new m();

    class a extends com.mbridge.msdk.thrid.okhttp.internal.b {

        final int f37290b;

        final com.mbridge.msdk.thrid.okhttp.internal.http2.b f37291c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(String str, Object[] objArr, int i10, com.mbridge.msdk.thrid.okhttp.internal.http2.b bVar) {
            super(str, objArr);
            this.f37290b = i10;
            this.f37291c = bVar;
        }

        @Override
        public void b() {
            try {
                g.this.b(this.f37290b, this.f37291c);
            } catch (IOException unused) {
                g.this.h();
            }
        }
    }

    class b extends com.mbridge.msdk.thrid.okhttp.internal.b {

        final int f37293b;

        final long f37294c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(String str, Object[] objArr, int i10, long j10) {
            super(str, objArr);
            this.f37293b = i10;
            this.f37294c = j10;
        }

        @Override
        public void b() {
            try {
                g.this.f37287w.a(this.f37293b, this.f37294c);
            } catch (IOException unused) {
                g.this.h();
            }
        }
    }

    class c extends com.mbridge.msdk.thrid.okhttp.internal.b {
        c(String str, Object... objArr) {
            super(str, objArr);
        }

        @Override
        public void b() {
            g.this.a(false, 2, 0);
        }
    }

    class d extends com.mbridge.msdk.thrid.okhttp.internal.b {

        final int f37297b;

        final List f37298c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(String str, Object[] objArr, int i10, List list) {
            super(str, objArr);
            this.f37297b = i10;
            this.f37298c = list;
        }

        @Override
        public void b() {
            if (g.this.f37274j.a(this.f37297b, this.f37298c)) {
                try {
                    g.this.f37287w.a(this.f37297b, com.mbridge.msdk.thrid.okhttp.internal.http2.b.CANCEL);
                    synchronized (g.this) {
                        try {
                            g.this.f37289y.remove(Integer.valueOf(this.f37297b));
                        } catch (Throwable th2) {
                            throw th2;
                        }
                    }
                } catch (IOException unused) {
                }
            }
        }
    }

    class e extends com.mbridge.msdk.thrid.okhttp.internal.b {

        final int f37300b;

        final List f37301c;

        final boolean f37302d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(String str, Object[] objArr, int i10, List list, boolean z10) {
            super(str, objArr);
            this.f37300b = i10;
            this.f37301c = list;
            this.f37302d = z10;
        }

        @Override
        public void b() {
            boolean zA = g.this.f37274j.a(this.f37300b, this.f37301c, this.f37302d);
            if (zA) {
                try {
                    g.this.f37287w.a(this.f37300b, com.mbridge.msdk.thrid.okhttp.internal.http2.b.CANCEL);
                } catch (IOException unused) {
                    return;
                }
            }
            if (zA || this.f37302d) {
                synchronized (g.this) {
                    try {
                        g.this.f37289y.remove(Integer.valueOf(this.f37300b));
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
        }
    }

    class f extends com.mbridge.msdk.thrid.okhttp.internal.b {

        final int f37304b;

        final com.mbridge.msdk.thrid.okio.c f37305c;

        final int f37306d;

        final boolean f37307e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f(String str, Object[] objArr, int i10, com.mbridge.msdk.thrid.okio.c cVar, int i11, boolean z10) {
            super(str, objArr);
            this.f37304b = i10;
            this.f37305c = cVar;
            this.f37306d = i11;
            this.f37307e = z10;
        }

        @Override
        public void b() {
            try {
                boolean zA = g.this.f37274j.a(this.f37304b, this.f37305c, this.f37306d, this.f37307e);
                if (zA) {
                    g.this.f37287w.a(this.f37304b, com.mbridge.msdk.thrid.okhttp.internal.http2.b.CANCEL);
                }
                if (zA || this.f37307e) {
                    synchronized (g.this) {
                        g.this.f37289y.remove(Integer.valueOf(this.f37304b));
                    }
                }
            } catch (IOException unused) {
            }
        }
    }

    class C0525g extends com.mbridge.msdk.thrid.okhttp.internal.b {

        final int f37309b;

        final com.mbridge.msdk.thrid.okhttp.internal.http2.b f37310c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0525g(String str, Object[] objArr, int i10, com.mbridge.msdk.thrid.okhttp.internal.http2.b bVar) {
            super(str, objArr);
            this.f37309b = i10;
            this.f37310c = bVar;
        }

        @Override
        public void b() {
            g.this.f37274j.a(this.f37309b, this.f37310c);
            synchronized (g.this) {
                g.this.f37289y.remove(Integer.valueOf(this.f37309b));
            }
        }
    }

    final class i extends com.mbridge.msdk.thrid.okhttp.internal.b {
        i() {
            super("OkHttp %s ping", g.this.f37268d);
        }

        @Override
        public void b() {
            boolean z10;
            synchronized (g.this) {
                if (g.this.f37276l < g.this.f37275k) {
                    z10 = true;
                } else {
                    g.e(g.this);
                    z10 = false;
                }
            }
            if (z10) {
                g.this.h();
            } else {
                g.this.a(false, 1, 0);
            }
        }
    }

    public static abstract class j {

        public static final j f37321a = new a();

        static class a extends j {
            a() {
            }

            @Override
            public void a(com.mbridge.msdk.thrid.okhttp.internal.http2.i iVar) throws IOException {
                iVar.a(com.mbridge.msdk.thrid.okhttp.internal.http2.b.REFUSED_STREAM);
            }
        }

        public void a(g gVar) {
        }

        public abstract void a(com.mbridge.msdk.thrid.okhttp.internal.http2.i iVar) throws IOException;
    }

    final class k extends com.mbridge.msdk.thrid.okhttp.internal.b {

        final boolean f37322b;

        final int f37323c;

        final int f37324d;

        k(boolean z10, int i10, int i11) {
            super("OkHttp %s ping %08x%08x", g.this.f37268d, Integer.valueOf(i10), Integer.valueOf(i11));
            this.f37322b = z10;
            this.f37323c = i10;
            this.f37324d = i11;
        }

        @Override
        public void b() {
            g.this.a(this.f37322b, this.f37323c, this.f37324d);
        }
    }

    class l extends com.mbridge.msdk.thrid.okhttp.internal.b implements com.mbridge.msdk.thrid.okhttp.internal.http2.h.b {

        final com.mbridge.msdk.thrid.okhttp.internal.http2.h f37326b;

        class a extends com.mbridge.msdk.thrid.okhttp.internal.b {

            final com.mbridge.msdk.thrid.okhttp.internal.http2.i f37328b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(String str, Object[] objArr, com.mbridge.msdk.thrid.okhttp.internal.http2.i iVar) {
                super(str, objArr);
                this.f37328b = iVar;
            }

            @Override
            public void b() {
                try {
                    g.this.f37266b.a(this.f37328b);
                } catch (IOException e10) {
                    com.mbridge.msdk.thrid.okhttp.internal.platform.g.d().a(4, "Http2Connection.Listener failure for " + g.this.f37268d, e10);
                    try {
                        this.f37328b.a(com.mbridge.msdk.thrid.okhttp.internal.http2.b.PROTOCOL_ERROR);
                    } catch (IOException unused) {
                    }
                }
            }
        }

        class b extends com.mbridge.msdk.thrid.okhttp.internal.b {

            final boolean f37330b;

            final m f37331c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            b(String str, Object[] objArr, boolean z10, m mVar) {
                super(str, objArr);
                this.f37330b = z10;
                this.f37331c = mVar;
            }

            @Override
            public void b() {
                l.this.b(this.f37330b, this.f37331c);
            }
        }

        class c extends com.mbridge.msdk.thrid.okhttp.internal.b {
            c(String str, Object... objArr) {
                super(str, objArr);
            }

            @Override
            public void b() {
                g gVar = g.this;
                gVar.f37266b.a(gVar);
            }
        }

        l(com.mbridge.msdk.thrid.okhttp.internal.http2.h hVar) {
            super("OkHttp %s", g.this.f37268d);
            this.f37326b = hVar;
        }

        @Override
        public void a() {
        }

        @Override
        protected void b() throws Throwable {
            Throwable th2;
            com.mbridge.msdk.thrid.okhttp.internal.http2.b bVar;
            com.mbridge.msdk.thrid.okhttp.internal.http2.b bVar2 = com.mbridge.msdk.thrid.okhttp.internal.http2.b.INTERNAL_ERROR;
            try {
                try {
                    this.f37326b.a(this);
                    while (this.f37326b.a(false, (com.mbridge.msdk.thrid.okhttp.internal.http2.h.b) this)) {
                    }
                    bVar = com.mbridge.msdk.thrid.okhttp.internal.http2.b.NO_ERROR;
                    try {
                        try {
                            g.this.a(bVar, com.mbridge.msdk.thrid.okhttp.internal.http2.b.CANCEL);
                        } catch (IOException unused) {
                            com.mbridge.msdk.thrid.okhttp.internal.http2.b bVar3 = com.mbridge.msdk.thrid.okhttp.internal.http2.b.PROTOCOL_ERROR;
                            g.this.a(bVar3, bVar3);
                        }
                    } catch (Throwable th3) {
                        th2 = th3;
                        try {
                            g.this.a(bVar, bVar2);
                        } catch (IOException unused2) {
                        }
                        com.mbridge.msdk.thrid.okhttp.internal.c.a(this.f37326b);
                        throw th2;
                    }
                } catch (IOException unused3) {
                }
            } catch (IOException unused4) {
                bVar = bVar2;
            } catch (Throwable th4) {
                th2 = th4;
                bVar = bVar2;
                g.this.a(bVar, bVar2);
                com.mbridge.msdk.thrid.okhttp.internal.c.a(this.f37326b);
                throw th2;
            }
            com.mbridge.msdk.thrid.okhttp.internal.c.a(this.f37326b);
        }

        @Override
        public void a(int i10, int i11, int i12, boolean z10) {
        }

        @Override
        public void a(boolean z10, int i10, com.mbridge.msdk.thrid.okio.e eVar, int i11) throws IOException {
            if (g.this.b(i10)) {
                g.this.a(i10, eVar, i11, z10);
                return;
            }
            com.mbridge.msdk.thrid.okhttp.internal.http2.i iVarA = g.this.a(i10);
            if (iVarA == null) {
                g.this.c(i10, com.mbridge.msdk.thrid.okhttp.internal.http2.b.PROTOCOL_ERROR);
                long j10 = i11;
                g.this.g(j10);
                eVar.skip(j10);
                return;
            }
            iVarA.a(eVar, i11);
            if (z10) {
                iVarA.i();
            }
        }

        @Override
        public void a(boolean z10, int i10, int i11, List<com.mbridge.msdk.thrid.okhttp.internal.http2.c> list) {
            if (g.this.b(i10)) {
                g.this.b(i10, list, z10);
                return;
            }
            synchronized (g.this) {
                try {
                    com.mbridge.msdk.thrid.okhttp.internal.http2.i iVarA = g.this.a(i10);
                    if (iVarA == null) {
                        if (g.this.f37271g) {
                            return;
                        }
                        g gVar = g.this;
                        if (i10 <= gVar.f37269e) {
                            return;
                        }
                        if (i10 % 2 == gVar.f37270f % 2) {
                            return;
                        }
                        com.mbridge.msdk.thrid.okhttp.internal.http2.i iVar = new com.mbridge.msdk.thrid.okhttp.internal.http2.i(i10, g.this, false, z10, com.mbridge.msdk.thrid.okhttp.internal.c.b(list));
                        g gVar2 = g.this;
                        gVar2.f37269e = i10;
                        gVar2.f37267c.put(Integer.valueOf(i10), iVar);
                        g.f37264z.execute(new a("OkHttp %s stream %d", new Object[]{g.this.f37268d, Integer.valueOf(i10)}, iVar));
                        return;
                    }
                    iVarA.a(list);
                    if (z10) {
                        iVarA.i();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        void b(boolean z10, m mVar) {
            com.mbridge.msdk.thrid.okhttp.internal.http2.i[] iVarArr;
            long j10;
            synchronized (g.this.f37287w) {
                synchronized (g.this) {
                    try {
                        int iC = g.this.f37285u.c();
                        if (z10) {
                            g.this.f37285u.a();
                        }
                        g.this.f37285u.a(mVar);
                        int iC2 = g.this.f37285u.c();
                        iVarArr = null;
                        if (iC2 == -1 || iC2 == iC) {
                            j10 = 0;
                        } else {
                            j10 = iC2 - iC;
                            if (!g.this.f37267c.isEmpty()) {
                                iVarArr = (com.mbridge.msdk.thrid.okhttp.internal.http2.i[]) g.this.f37267c.values().toArray(new com.mbridge.msdk.thrid.okhttp.internal.http2.i[g.this.f37267c.size()]);
                            }
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                try {
                    g gVar = g.this;
                    gVar.f37287w.a(gVar.f37285u);
                } catch (IOException unused) {
                    g.this.h();
                }
            }
            if (iVarArr != null) {
                for (com.mbridge.msdk.thrid.okhttp.internal.http2.i iVar : iVarArr) {
                    synchronized (iVar) {
                        iVar.a(j10);
                    }
                }
            }
            g.f37264z.execute(new c("OkHttp %s settings", g.this.f37268d));
        }

        @Override
        public void a(int i10, com.mbridge.msdk.thrid.okhttp.internal.http2.b bVar) {
            if (g.this.b(i10)) {
                g.this.a(i10, bVar);
                return;
            }
            com.mbridge.msdk.thrid.okhttp.internal.http2.i iVarC = g.this.c(i10);
            if (iVarC != null) {
                iVarC.d(bVar);
            }
        }

        @Override
        public void a(boolean z10, m mVar) {
            try {
                g.this.f37272h.execute(new b("OkHttp %s ACK Settings", new Object[]{g.this.f37268d}, z10, mVar));
            } catch (RejectedExecutionException unused) {
            }
        }

        @Override
        public void a(boolean z10, int i10, int i11) {
            if (!z10) {
                try {
                    g.this.f37272h.execute(g.this.new k(true, i10, i11));
                    return;
                } catch (RejectedExecutionException unused) {
                    return;
                }
            }
            synchronized (g.this) {
                try {
                    if (i10 == 1) {
                        g.c(g.this);
                    } else if (i10 == 2) {
                        g.h(g.this);
                    } else if (i10 == 3) {
                        g.i(g.this);
                        g.this.notifyAll();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override
        public void a(int i10, com.mbridge.msdk.thrid.okhttp.internal.http2.b bVar, com.mbridge.msdk.thrid.okio.f fVar) {
            com.mbridge.msdk.thrid.okhttp.internal.http2.i[] iVarArr;
            fVar.e();
            synchronized (g.this) {
                iVarArr = (com.mbridge.msdk.thrid.okhttp.internal.http2.i[]) g.this.f37267c.values().toArray(new com.mbridge.msdk.thrid.okhttp.internal.http2.i[g.this.f37267c.size()]);
                g.this.f37271g = true;
            }
            for (com.mbridge.msdk.thrid.okhttp.internal.http2.i iVar : iVarArr) {
                if (iVar.c() > i10 && iVar.f()) {
                    iVar.d(com.mbridge.msdk.thrid.okhttp.internal.http2.b.REFUSED_STREAM);
                    g.this.c(iVar.c());
                }
            }
        }

        @Override
        public void a(int i10, long j10) {
            if (i10 == 0) {
                synchronized (g.this) {
                    g gVar = g.this;
                    gVar.f37283s += j10;
                    gVar.notifyAll();
                }
                return;
            }
            com.mbridge.msdk.thrid.okhttp.internal.http2.i iVarA = g.this.a(i10);
            if (iVarA != null) {
                synchronized (iVarA) {
                    iVarA.a(j10);
                }
            }
        }

        @Override
        public void a(int i10, int i11, List<com.mbridge.msdk.thrid.okhttp.internal.http2.c> list) {
            g.this.a(i11, list);
        }
    }

    g(h hVar) {
        m mVar = new m();
        this.f37285u = mVar;
        this.f37289y = new LinkedHashSet();
        this.f37274j = hVar.f37317f;
        boolean z10 = hVar.f37318g;
        this.f37265a = z10;
        this.f37266b = hVar.f37316e;
        int i10 = z10 ? 1 : 2;
        this.f37270f = i10;
        if (z10) {
            this.f37270f = i10 + 2;
        }
        if (z10) {
            this.f37284t.a(7, 16777216);
        }
        String str = hVar.f37313b;
        this.f37268d = str;
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1, com.mbridge.msdk.thrid.okhttp.internal.c.a(com.mbridge.msdk.thrid.okhttp.internal.c.a("OkHttp %s Writer", str), false));
        this.f37272h = scheduledThreadPoolExecutor;
        if (hVar.f37319h != 0) {
            i iVar = new i();
            long j10 = hVar.f37319h;
            scheduledThreadPoolExecutor.scheduleAtFixedRate(iVar, j10, j10, TimeUnit.MILLISECONDS);
        }
        this.f37273i = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), com.mbridge.msdk.thrid.okhttp.internal.c.a(com.mbridge.msdk.thrid.okhttp.internal.c.a("OkHttp %s Push Observer", str), true));
        mVar.a(7, Settings.DEFAULT_INITIAL_WINDOW_SIZE);
        mVar.a(5, 16384);
        this.f37283s = mVar.c();
        this.f37286v = hVar.f37312a;
        this.f37287w = new com.mbridge.msdk.thrid.okhttp.internal.http2.j(hVar.f37315d, z10);
        this.f37288x = new l(new com.mbridge.msdk.thrid.okhttp.internal.http2.h(hVar.f37314c, z10));
    }

    static long c(g gVar) {
        long j10 = gVar.f37276l;
        gVar.f37276l = 1 + j10;
        return j10;
    }

    static long e(g gVar) {
        long j10 = gVar.f37275k;
        gVar.f37275k = 1 + j10;
        return j10;
    }

    static long h(g gVar) {
        long j10 = gVar.f37278n;
        gVar.f37278n = 1 + j10;
        return j10;
    }

    static long i(g gVar) {
        long j10 = gVar.f37280p;
        gVar.f37280p = 1 + j10;
        return j10;
    }

    boolean b(int i10) {
        return i10 != 0 && (i10 & 1) == 0;
    }

    @Override
    public void close() throws IOException {
        a(com.mbridge.msdk.thrid.okhttp.internal.http2.b.NO_ERROR, com.mbridge.msdk.thrid.okhttp.internal.http2.b.CANCEL);
    }

    public void flush() throws IOException {
        this.f37287w.flush();
    }

    public synchronized int k() {
        return this.f37285u.b(Integer.MAX_VALUE);
    }

    void l() {
        synchronized (this) {
            try {
                long j10 = this.f37278n;
                long j11 = this.f37277m;
                if (j10 < j11) {
                    return;
                }
                this.f37277m = j11 + 1;
                this.f37281q = System.nanoTime() + C.NANOS_PER_SECOND;
                try {
                    this.f37272h.execute(new c("OkHttp %s ping", this.f37268d));
                } catch (RejectedExecutionException unused) {
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void m() throws IOException {
        a(true);
    }

    public void h() {
        try {
            com.mbridge.msdk.thrid.okhttp.internal.http2.b bVar = com.mbridge.msdk.thrid.okhttp.internal.http2.b.PROTOCOL_ERROR;
            a(bVar, bVar);
        } catch (IOException unused) {
        }
    }

    synchronized com.mbridge.msdk.thrid.okhttp.internal.http2.i c(int i10) {
        com.mbridge.msdk.thrid.okhttp.internal.http2.i iVarRemove;
        iVarRemove = this.f37267c.remove(Integer.valueOf(i10));
        notifyAll();
        return iVarRemove;
    }

    public synchronized boolean f(long j10) {
        if (this.f37271g) {
            return false;
        }
        return this.f37278n >= this.f37277m || j10 < this.f37281q;
    }

    synchronized void g(long j10) {
        long j11 = this.f37282r + j10;
        this.f37282r = j11;
        if (j11 >= this.f37284t.c() / 2) {
            a(0, this.f37282r);
            this.f37282r = 0L;
        }
    }

    synchronized com.mbridge.msdk.thrid.okhttp.internal.http2.i a(int i10) {
        return this.f37267c.get(Integer.valueOf(i10));
    }

    void b(int i10, com.mbridge.msdk.thrid.okhttp.internal.http2.b bVar) throws IOException {
        this.f37287w.a(i10, bVar);
    }

    public static class h {

        Socket f37312a;

        String f37313b;

        com.mbridge.msdk.thrid.okio.e f37314c;

        com.mbridge.msdk.thrid.okio.d f37315d;

        j f37316e = j.f37321a;

        com.mbridge.msdk.thrid.okhttp.internal.http2.l f37317f = com.mbridge.msdk.thrid.okhttp.internal.http2.l.f37384a;

        boolean f37318g;

        int f37319h;

        public h(boolean z10) {
            this.f37318g = z10;
        }

        public h a(Socket socket, String str, com.mbridge.msdk.thrid.okio.e eVar, com.mbridge.msdk.thrid.okio.d dVar) {
            this.f37312a = socket;
            this.f37313b = str;
            this.f37314c = eVar;
            this.f37315d = dVar;
            return this;
        }

        public h a(j jVar) {
            this.f37316e = jVar;
            return this;
        }

        public h a(int i10) {
            this.f37319h = i10;
            return this;
        }

        public g a() {
            return new g(this);
        }
    }

    public com.mbridge.msdk.thrid.okhttp.internal.http2.i a(List<com.mbridge.msdk.thrid.okhttp.internal.http2.c> list, boolean z10) throws IOException {
        return a(0, list, z10);
    }

    void b(int i10, List<com.mbridge.msdk.thrid.okhttp.internal.http2.c> list, boolean z10) {
        try {
            a(new e("OkHttp %s Push Headers[%s]", new Object[]{this.f37268d, Integer.valueOf(i10)}, i10, list, z10));
        } catch (RejectedExecutionException unused) {
        }
    }

    void c(int i10, com.mbridge.msdk.thrid.okhttp.internal.http2.b bVar) {
        try {
            this.f37272h.execute(new a("OkHttp %s stream %d", new Object[]{this.f37268d, Integer.valueOf(i10)}, i10, bVar));
        } catch (RejectedExecutionException unused) {
        }
    }

    private com.mbridge.msdk.thrid.okhttp.internal.http2.i a(int i10, List<com.mbridge.msdk.thrid.okhttp.internal.http2.c> list, boolean z10) throws IOException {
        int i11;
        com.mbridge.msdk.thrid.okhttp.internal.http2.i iVar;
        boolean z11;
        boolean z12 = !z10;
        synchronized (this.f37287w) {
            try {
                synchronized (this) {
                    try {
                        if (this.f37270f > 1073741823) {
                            a(com.mbridge.msdk.thrid.okhttp.internal.http2.b.REFUSED_STREAM);
                        }
                        if (!this.f37271g) {
                            i11 = this.f37270f;
                            this.f37270f = i11 + 2;
                            iVar = new com.mbridge.msdk.thrid.okhttp.internal.http2.i(i11, this, z12, false, null);
                            z11 = !z10 || this.f37283s == 0 || iVar.f37347b == 0;
                            if (iVar.g()) {
                                this.f37267c.put(Integer.valueOf(i11), iVar);
                            }
                        } else {
                            throw new com.mbridge.msdk.thrid.okhttp.internal.http2.a();
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                if (i10 == 0) {
                    this.f37287w.a(z12, i11, i10, list);
                } else if (!this.f37265a) {
                    this.f37287w.a(i10, i11, list);
                } else {
                    throw new IllegalArgumentException("client streams shouldn't have associated stream IDs");
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
        if (z11) {
            this.f37287w.flush();
        }
        return iVar;
    }

    public void a(int i10, boolean z10, com.mbridge.msdk.thrid.okio.c cVar, long j10) throws IOException {
        long j11;
        int iMin;
        long j12;
        if (j10 == 0) {
            this.f37287w.a(z10, i10, cVar, 0);
            return;
        }
        while (j10 > 0) {
            synchronized (this) {
                while (true) {
                    try {
                        try {
                            j11 = this.f37283s;
                            if (j11 <= 0) {
                                if (this.f37267c.containsKey(Integer.valueOf(i10))) {
                                    wait();
                                } else {
                                    throw new IOException("stream closed");
                                }
                            }
                        } catch (InterruptedException unused) {
                            Thread.currentThread().interrupt();
                            throw new InterruptedIOException();
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                iMin = Math.min((int) Math.min(j10, j11), this.f37287w.h());
                j12 = iMin;
                this.f37283s -= j12;
            }
            j10 -= j12;
            this.f37287w.a(z10 && j10 == 0, i10, cVar, iMin);
        }
    }

    void a(int i10, long j10) {
        try {
            this.f37272h.execute(new b("OkHttp Window Update %s stream %d", new Object[]{this.f37268d, Integer.valueOf(i10)}, i10, j10));
        } catch (RejectedExecutionException unused) {
        }
    }

    void a(boolean z10, int i10, int i11) {
        try {
            this.f37287w.a(z10, i10, i11);
        } catch (IOException unused) {
            h();
        }
    }

    public void a(com.mbridge.msdk.thrid.okhttp.internal.http2.b bVar) throws IOException {
        synchronized (this.f37287w) {
            synchronized (this) {
                if (this.f37271g) {
                    return;
                }
                this.f37271g = true;
                this.f37287w.a(this.f37269e, bVar, com.mbridge.msdk.thrid.okhttp.internal.c.f37069a);
            }
        }
    }

    void a(com.mbridge.msdk.thrid.okhttp.internal.http2.b bVar, com.mbridge.msdk.thrid.okhttp.internal.http2.b bVar2) throws IOException {
        if (!A && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        com.mbridge.msdk.thrid.okhttp.internal.http2.i[] iVarArr = null;
        try {
            a(bVar);
            e = null;
        } catch (IOException e10) {
            e = e10;
        }
        synchronized (this) {
            try {
                if (!this.f37267c.isEmpty()) {
                    iVarArr = (com.mbridge.msdk.thrid.okhttp.internal.http2.i[]) this.f37267c.values().toArray(new com.mbridge.msdk.thrid.okhttp.internal.http2.i[this.f37267c.size()]);
                    this.f37267c.clear();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (iVarArr != null) {
            for (com.mbridge.msdk.thrid.okhttp.internal.http2.i iVar : iVarArr) {
                try {
                    iVar.a(bVar2);
                } catch (IOException e11) {
                    if (e != null) {
                        e = e11;
                    }
                }
            }
        }
        try {
            this.f37287w.close();
        } catch (IOException e12) {
            if (e == null) {
                e = e12;
            }
        }
        try {
            this.f37286v.close();
        } catch (IOException e13) {
            e = e13;
        }
        this.f37272h.shutdown();
        this.f37273i.shutdown();
        if (e != null) {
            throw e;
        }
    }

    void a(boolean z10) throws IOException {
        if (z10) {
            this.f37287w.d();
            this.f37287w.b(this.f37284t);
            int iC = this.f37284t.c();
            if (iC != 65535) {
                this.f37287w.a(0, iC - Settings.DEFAULT_INITIAL_WINDOW_SIZE);
            }
        }
        new Thread(this.f37288x).start();
    }

    void a(int i10, List<com.mbridge.msdk.thrid.okhttp.internal.http2.c> list) {
        synchronized (this) {
            try {
                if (this.f37289y.contains(Integer.valueOf(i10))) {
                    c(i10, com.mbridge.msdk.thrid.okhttp.internal.http2.b.PROTOCOL_ERROR);
                    return;
                }
                this.f37289y.add(Integer.valueOf(i10));
                try {
                    a(new d("OkHttp %s Push Request[%s]", new Object[]{this.f37268d, Integer.valueOf(i10)}, i10, list));
                } catch (RejectedExecutionException unused) {
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    void a(int i10, com.mbridge.msdk.thrid.okio.e eVar, int i11, boolean z10) throws IOException {
        com.mbridge.msdk.thrid.okio.c cVar = new com.mbridge.msdk.thrid.okio.c();
        long j10 = i11;
        eVar.e(j10);
        eVar.b(cVar, j10);
        if (cVar.size() == j10) {
            a(new f("OkHttp %s Push Data[%s]", new Object[]{this.f37268d, Integer.valueOf(i10)}, i10, cVar, i11, z10));
            return;
        }
        throw new IOException(cVar.size() + " != " + i11);
    }

    void a(int i10, com.mbridge.msdk.thrid.okhttp.internal.http2.b bVar) {
        a(new C0525g("OkHttp %s Push Reset[%s]", new Object[]{this.f37268d, Integer.valueOf(i10)}, i10, bVar));
    }

    private synchronized void a(com.mbridge.msdk.thrid.okhttp.internal.b bVar) {
        if (!this.f37271g) {
            this.f37273i.execute(bVar);
        }
    }
}
