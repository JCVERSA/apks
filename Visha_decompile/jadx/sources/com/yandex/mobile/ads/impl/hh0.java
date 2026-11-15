package com.yandex.mobile.ads.impl;

import defpackage.c74;
import defpackage.y45;
import defpackage.zfb;
import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.Socket;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.Ref$IntRef;
import kotlin.jvm.internal.Ref$ObjectRef;
import okhttp3.internal.http2.Http2Connection;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ByteString;

public final class hh0 implements Closeable {
    private static final zx1 C;
    private final c A;
    private final LinkedHashSet B;
    private final boolean a;
    private final b b;
    private final LinkedHashMap c;
    private final String d;
    private int e;
    private int f;
    private boolean g;
    private final l42 h;
    private final k42 i;
    private final k42 j;
    private final k42 k;
    private final cn1 l;
    private long m;
    private long n;
    private long o;
    private long p;
    private long q;
    private long r;
    private final zx1 s;
    private zx1 t;
    private long u;
    private long v;
    private long w;
    private long x;
    private final Socket y;
    private final ph0 z;

    public static final class a {
        private boolean a;
        private final l42 b;
        public Socket c;
        public String d;
        public BufferedSource e;
        public BufferedSink f;
        private b g;
        private cn1 h;
        private int i;

        public a(l42 l42Var) {
            y45.j(l42Var, "taskRunner");
            this.a = true;
            this.b = l42Var;
            this.g = b.a;
            this.h = cn1.a;
        }

        public final boolean a() {
            return this.a;
        }

        public final String b() {
            String str = this.d;
            if (str != null) {
                return str;
            }
            y45.B("connectionName");
            return null;
        }

        public final b c() {
            return this.g;
        }

        public final int d() {
            return this.i;
        }

        public final cn1 e() {
            return this.h;
        }

        public final BufferedSink f() {
            BufferedSink bufferedSink = this.f;
            if (bufferedSink != null) {
                return bufferedSink;
            }
            y45.B("sink");
            return null;
        }

        public final Socket g() {
            Socket socket = this.c;
            if (socket != null) {
                return socket;
            }
            y45.B("socket");
            return null;
        }

        public final BufferedSource h() {
            BufferedSource bufferedSource = this.e;
            if (bufferedSource != null) {
                return bufferedSource;
            }
            y45.B("source");
            return null;
        }

        public final l42 i() {
            return this.b;
        }

        public final a j() {
            this.i = 0;
            return this;
        }

        public final a a(b bVar) {
            y45.j(bVar, "listener");
            this.g = bVar;
            return this;
        }

        public final a a(Socket socket, String str, BufferedSource bufferedSource, BufferedSink bufferedSink) throws IOException {
            String str2;
            y45.j(socket, "socket");
            y45.j(str, "peerName");
            y45.j(bufferedSource, "source");
            y45.j(bufferedSink, "sink");
            y45.j(socket, "<set-?>");
            this.c = socket;
            if (this.a) {
                str2 = g92.g + " " + str;
            } else {
                str2 = "MockWebServer " + str;
            }
            y45.j(str2, "<set-?>");
            this.d = str2;
            y45.j(bufferedSource, "<set-?>");
            this.e = bufferedSource;
            y45.j(bufferedSink, "<set-?>");
            this.f = bufferedSink;
            return this;
        }
    }

    public static abstract class b {
        public static final a a = new a();

        public static final class a extends b {
            @Override
            public final void a(oh0 oh0Var) throws IOException {
                y45.j(oh0Var, "stream");
                oh0Var.a(t50.h, (IOException) null);
            }
        }

        public void a(hh0 hh0Var, zx1 zx1Var) {
            y45.j(hh0Var, "connection");
            y45.j(zx1Var, "settings");
        }

        public abstract void a(oh0 oh0Var) throws IOException;
    }

    public static final class d extends h42 {
        final hh0 e;
        final int f;
        final List g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(String str, hh0 hh0Var, int i, List list, boolean z) {
            super(str, true);
            this.e = hh0Var;
            this.f = i;
            this.g = list;
        }

        @Override
        public final long e() {
            cn1 cn1Var = this.e.l;
            List list = this.g;
            ((bn1) cn1Var).getClass();
            y45.j(list, "responseHeaders");
            try {
                this.e.k().a(this.f, t50.i);
                synchronized (this.e) {
                    this.e.B.remove(Integer.valueOf(this.f));
                }
                return -1L;
            } catch (IOException unused) {
                return -1L;
            }
        }
    }

    public static final class e extends h42 {
        final hh0 e;
        final int f;
        final List g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(String str, hh0 hh0Var, int i, List list) {
            super(str, true);
            this.e = hh0Var;
            this.f = i;
            this.g = list;
        }

        @Override
        public final long e() {
            cn1 cn1Var = this.e.l;
            List list = this.g;
            ((bn1) cn1Var).getClass();
            y45.j(list, "requestHeaders");
            try {
                this.e.k().a(this.f, t50.i);
                synchronized (this.e) {
                    this.e.B.remove(Integer.valueOf(this.f));
                }
                return -1L;
            } catch (IOException unused) {
                return -1L;
            }
        }
    }

    public static final class f extends h42 {
        final hh0 e;
        final int f;
        final t50 g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(String str, hh0 hh0Var, int i, t50 t50Var) {
            super(str, true);
            this.e = hh0Var;
            this.f = i;
            this.g = t50Var;
        }

        @Override
        public final long e() {
            cn1 cn1Var = this.e.l;
            t50 t50Var = this.g;
            ((bn1) cn1Var).getClass();
            y45.j(t50Var, "errorCode");
            synchronized (this.e) {
                this.e.B.remove(Integer.valueOf(this.f));
                zfb zfbVar = zfb.a;
            }
            return -1L;
        }
    }

    public static final class g extends h42 {
        final hh0 e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(String str, hh0 hh0Var) {
            super(str, true);
            this.e = hh0Var;
        }

        @Override
        public final long e() {
            this.e.a(2, 0, false);
            return -1L;
        }
    }

    public static final class h extends h42 {
        final hh0 e;
        final long f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(String str, hh0 hh0Var, long j) {
            super(str);
            this.e = hh0Var;
            this.f = j;
        }

        @Override
        public final long e() {
            boolean z;
            synchronized (this.e) {
                if (this.e.n < this.e.m) {
                    z = true;
                } else {
                    this.e.m++;
                    z = false;
                }
            }
            if (z) {
                hh0.a(this.e, (IOException) null);
                return -1L;
            }
            this.e.a(1, 0, false);
            return this.f;
        }
    }

    public static final class i extends h42 {
        final hh0 e;
        final int f;
        final t50 g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public i(String str, hh0 hh0Var, int i, t50 t50Var) {
            super(str, true);
            this.e = hh0Var;
            this.f = i;
            this.g = t50Var;
        }

        @Override
        public final long e() {
            try {
                this.e.b(this.f, this.g);
                return -1L;
            } catch (IOException e) {
                hh0.a(this.e, e);
                return -1L;
            }
        }
    }

    public static final class j extends h42 {
        final hh0 e;
        final int f;
        final long g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public j(String str, hh0 hh0Var, int i, long j) {
            super(str, true);
            this.e = hh0Var;
            this.f = i;
            this.g = j;
        }

        @Override
        public final long e() {
            try {
                this.e.k().a(this.f, this.g);
                return -1L;
            } catch (IOException e) {
                hh0.a(this.e, e);
                return -1L;
            }
        }
    }

    static {
        zx1 zx1Var = new zx1();
        zx1Var.a(7, 65535);
        zx1Var.a(5, 16384);
        C = zx1Var;
    }

    public hh0(a aVar) {
        y45.j(aVar, "builder");
        boolean zA = aVar.a();
        this.a = zA;
        this.b = aVar.c();
        this.c = new LinkedHashMap();
        String strB = aVar.b();
        this.d = strB;
        this.f = aVar.a() ? 3 : 2;
        l42 l42VarI = aVar.i();
        this.h = l42VarI;
        k42 k42VarE = l42VarI.e();
        this.i = k42VarE;
        this.j = l42VarI.e();
        this.k = l42VarI.e();
        this.l = aVar.e();
        zx1 zx1Var = new zx1();
        if (aVar.a()) {
            zx1Var.a(7, 16777216);
        }
        this.s = zx1Var;
        zx1 zx1Var2 = C;
        this.t = zx1Var2;
        this.x = zx1Var2.b();
        this.y = aVar.g();
        this.z = new ph0(aVar.f(), zA);
        this.A = new c(this, new nh0(aVar.h(), zA));
        this.B = new LinkedHashSet();
        if (aVar.d() != 0) {
            long nanos = TimeUnit.MILLISECONDS.toNanos(aVar.d());
            k42VarE.a(new h(strB + " ping", this, nanos), nanos);
        }
    }

    public static final void a(hh0 hh0Var, IOException iOException) {
        hh0Var.getClass();
        t50 t50Var = t50.e;
        hh0Var.a(t50Var, t50Var, iOException);
    }

    public static boolean b(int i2) {
        return i2 != 0 && (i2 & 1) == 0;
    }

    @Override
    public final void close() {
        a(t50.d, t50.i, (IOException) null);
    }

    public final void flush() throws IOException {
        this.z.flush();
    }

    public final void l() {
        synchronized (this) {
            long j2 = this.p;
            long j3 = this.o;
            if (j2 < j3) {
                return;
            }
            this.o = j3 + 1;
            this.r = System.nanoTime() + ((long) Http2Connection.DEGRADED_PONG_TIMEOUT_NS);
            zfb zfbVar = zfb.a;
            this.i.a(new g(this.d + " ping", this), 0L);
        }
    }

    public final int f() {
        return this.f;
    }

    public final zx1 g() {
        return this.s;
    }

    public final zx1 h() {
        return this.t;
    }

    public final LinkedHashMap i() {
        return this.c;
    }

    public final long j() {
        return this.x;
    }

    public final ph0 k() {
        return this.z;
    }

    public final String c() {
        return this.d;
    }

    public final int d() {
        return this.e;
    }

    public final b e() {
        return this.b;
    }

    public final boolean b() {
        return this.a;
    }

    public final synchronized oh0 c(int i2) {
        oh0 oh0Var;
        oh0Var = (oh0) this.c.remove(Integer.valueOf(i2));
        y45.h(this, "null cannot be cast to non-null type java.lang.Object");
        notifyAll();
        return oh0Var;
    }

    public final void d(int i2) {
        this.e = i2;
    }

    public final void a(t50 t50Var, t50 t50Var2, IOException iOException) {
        int i2;
        Object[] array;
        y45.j(t50Var, "connectionCode");
        y45.j(t50Var2, "streamCode");
        if (g92.f && Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST NOT hold lock on " + this);
        }
        try {
            a(t50Var);
        } catch (IOException unused) {
        }
        synchronized (this) {
            try {
                if (this.c.isEmpty()) {
                    array = null;
                } else {
                    array = this.c.values().toArray(new oh0[0]);
                    this.c.clear();
                }
                zfb zfbVar = zfb.a;
            } catch (Throwable th) {
                throw th;
            }
        }
        oh0[] oh0VarArr = (oh0[]) array;
        if (oh0VarArr != null) {
            for (oh0 oh0Var : oh0VarArr) {
                try {
                    oh0Var.a(t50Var2, iOException);
                } catch (IOException unused2) {
                }
            }
        }
        try {
            this.z.close();
        } catch (IOException unused3) {
        }
        try {
            this.y.close();
        } catch (IOException unused4) {
        }
        this.i.j();
        this.j.j();
        this.k.j();
    }

    public final synchronized void b(long j2) {
        long j3 = this.u + j2;
        this.u = j3;
        long j4 = j3 - this.v;
        if (j4 >= this.s.b() / 2) {
            a(0, j4);
            this.v += j4;
        }
    }

    public final void c(int i2, t50 t50Var) {
        y45.j(t50Var, "errorCode");
        this.i.a(new i(this.d + "[" + i2 + "] writeSynReset", this, i2, t50Var), 0L);
    }

    public static void l(hh0 hh0Var) throws IOException {
        l42 l42Var = l42.h;
        y45.j(l42Var, "taskRunner");
        hh0Var.z.a();
        hh0Var.z.b(hh0Var.s);
        int iB = hh0Var.s.b();
        if (iB != 65535) {
            hh0Var.z.a(0, iB - 65535);
        }
        l42Var.e().a(new j42(hh0Var.d, hh0Var.A), 0L);
    }

    public final void b(int i2, t50 t50Var) throws IOException {
        y45.j(t50Var, "statusCode");
        this.z.a(i2, t50Var);
    }

    public final synchronized oh0 a(int i2) {
        return (oh0) this.c.get(Integer.valueOf(i2));
    }

    public final synchronized boolean a(long j2) {
        if (this.g) {
            return false;
        }
        return this.p >= this.o || j2 < this.r;
    }

    public final oh0 a(ArrayList arrayList, boolean z) throws IOException {
        int i2;
        oh0 oh0Var;
        y45.j(arrayList, "requestHeaders");
        boolean z2 = true;
        boolean z3 = !z;
        synchronized (this.z) {
            synchronized (this) {
                try {
                    if (this.f > 1073741823) {
                        a(t50.h);
                    }
                    if (!this.g) {
                        i2 = this.f;
                        this.f = i2 + 2;
                        oh0Var = new oh0(i2, this, z3, false, null);
                        if (z && this.w < this.x && oh0Var.n() < oh0Var.m()) {
                            z2 = false;
                        }
                        if (oh0Var.q()) {
                            this.c.put(Integer.valueOf(i2), oh0Var);
                        }
                        zfb zfbVar = zfb.a;
                    } else {
                        throw new qr();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            this.z.a(i2, arrayList, z3);
        }
        if (z2) {
            this.z.flush();
        }
        return oh0Var;
    }

    public final class c implements nh0.c, c74 {
        private final nh0 b;
        final hh0 c;

        public static final class a extends h42 {
            final hh0 e;
            final Ref$ObjectRef f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(String str, hh0 hh0Var, Ref$ObjectRef ref$ObjectRef) {
                super(str, true);
                this.e = hh0Var;
                this.f = ref$ObjectRef;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public final long e() {
                this.e.e().a(this.e, (zx1) this.f.element);
                return -1L;
            }
        }

        public c(hh0 hh0Var, nh0 nh0Var) {
            y45.j(nh0Var, "reader");
            this.c = hh0Var;
            this.b = nh0Var;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r11v1 */
        /* JADX WARN: Type inference failed for: r11v2, types: [T, com.yandex.mobile.ads.impl.zx1] */
        /* JADX WARN: Type inference failed for: r11v3 */
        public final void a(boolean z, zx1 zx1Var) {
            ?? r11;
            long jB;
            int i;
            oh0[] oh0VarArr;
            y45.j(zx1Var, "settings");
            Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
            ph0 ph0VarK = this.c.k();
            hh0 hh0Var = this.c;
            synchronized (ph0VarK) {
                synchronized (hh0Var) {
                    try {
                        zx1 zx1VarH = hh0Var.h();
                        if (z) {
                            r11 = zx1Var;
                        } else {
                            zx1 zx1Var2 = new zx1();
                            zx1Var2.a(zx1VarH);
                            zx1Var2.a(zx1Var);
                            r11 = zx1Var2;
                        }
                        ref$ObjectRef.element = r11;
                        jB = ((long) r11.b()) - ((long) zx1VarH.b());
                        oh0VarArr = (jB == 0 || hh0Var.i().isEmpty()) ? null : (oh0[]) hh0Var.i().values().toArray(new oh0[0]);
                        hh0Var.a((zx1) ref$ObjectRef.element);
                        hh0Var.k.a(new a(hh0Var.c() + " onSettings", hh0Var, ref$ObjectRef), 0L);
                        zfb zfbVar = zfb.a;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                try {
                    hh0Var.k().a((zx1) ref$ObjectRef.element);
                } catch (IOException e) {
                    hh0.a(hh0Var, e);
                }
                zfb zfbVar2 = zfb.a;
            }
            if (oh0VarArr != null) {
                for (oh0 oh0Var : oh0VarArr) {
                    synchronized (oh0Var) {
                        oh0Var.a(jB);
                        zfb zfbVar3 = zfb.a;
                    }
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r5v3 */
        /* JADX WARN: Type inference failed for: r5v5, types: [java.lang.Object, zfb] */
        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        @Override
        public final Object invoke() throws Throwable {
            Throwable th;
            t50 t50Var;
            t50 t50Var2 = t50.f;
            IOException e = null;
            try {
                try {
                    this.b.a(this);
                    while (this.b.a(false, this)) {
                    }
                    t50 t50Var3 = t50.d;
                    try {
                        t50Var2 = t50.i;
                        this.c.a(t50Var3, t50Var2, (IOException) null);
                        g92.a(this.b);
                        t50Var = t50Var3;
                    } catch (IOException e2) {
                        e = e2;
                        t50Var2 = t50.e;
                        hh0 hh0Var = this.c;
                        hh0Var.a(t50Var2, t50Var2, e);
                        g92.a(this.b);
                        t50Var = hh0Var;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    this.c.a(t50Var, t50Var2, e);
                    g92.a(this.b);
                    throw th;
                }
            } catch (IOException e3) {
                e = e3;
            } catch (Throwable th3) {
                th = th3;
                t50Var = t50Var2;
                this.c.a(t50Var, t50Var2, e);
                g92.a(this.b);
                throw th;
            }
            this = zfb.a;
            return this;
        }

        @Override
        public final void a(int i, int i2, BufferedSource bufferedSource, boolean z) throws IOException {
            y45.j(bufferedSource, "source");
            this.c.getClass();
            if (hh0.b(i)) {
                this.c.a(i, i2, bufferedSource, z);
                return;
            }
            oh0 oh0VarA = this.c.a(i);
            if (oh0VarA == null) {
                this.c.c(i, t50.e);
                long j = i2;
                this.c.b(j);
                bufferedSource.skip(j);
                return;
            }
            oh0VarA.a(bufferedSource, i2);
            if (z) {
                oh0VarA.a(g92.b, true);
            }
        }

        @Override
        public final void a(int i, t50 t50Var, ByteString byteString) {
            int i2;
            Object[] array;
            y45.j(t50Var, "errorCode");
            y45.j(byteString, "debugData");
            byteString.size();
            hh0 hh0Var = this.c;
            synchronized (hh0Var) {
                array = hh0Var.i().values().toArray(new oh0[0]);
                hh0Var.g = true;
                zfb zfbVar = zfb.a;
            }
            for (oh0 oh0Var : (oh0[]) array) {
                if (oh0Var.f() > i && oh0Var.p()) {
                    oh0Var.b(t50.h);
                    this.c.c(oh0Var.f());
                }
            }
        }

        @Override
        public final void a(boolean z, int i, List list) {
            y45.j(list, "headerBlock");
            this.c.getClass();
            if (hh0.b(i)) {
                this.c.a(i, (List<lf0>) list, z);
                return;
            }
            hh0 hh0Var = this.c;
            synchronized (hh0Var) {
                oh0 oh0VarA = hh0Var.a(i);
                if (oh0VarA == null) {
                    if (hh0Var.g) {
                        return;
                    }
                    if (i <= hh0Var.d()) {
                        return;
                    }
                    if (i % 2 == hh0Var.f() % 2) {
                        return;
                    }
                    oh0 oh0Var = new oh0(i, hh0Var, false, z, g92.a((List<lf0>) list));
                    hh0Var.d(i);
                    hh0Var.i().put(Integer.valueOf(i), oh0Var);
                    hh0Var.h.e().a(new ih0(hh0Var.c() + "[" + i + "] onStream", hh0Var, oh0Var), 0L);
                    return;
                }
                zfb zfbVar = zfb.a;
                oh0VarA.a(g92.a((List<lf0>) list), z);
            }
        }

        @Override
        public final void a(int i, int i2, boolean z) {
            if (!z) {
                this.c.i.a(new jh0(this.c.c() + " ping", this.c, i, i2), 0L);
                return;
            }
            hh0 hh0Var = this.c;
            synchronized (hh0Var) {
                try {
                    if (i == 1) {
                        hh0Var.n++;
                    } else if (i == 2) {
                        hh0Var.p++;
                    } else {
                        if (i == 3) {
                            hh0Var.q++;
                            y45.h(hh0Var, "null cannot be cast to non-null type java.lang.Object");
                            hh0Var.notifyAll();
                        }
                        zfb zfbVar = zfb.a;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override
        public final void a(int i, List list) {
            y45.j(list, "requestHeaders");
            this.c.a(i, (List<lf0>) list);
        }

        @Override
        public final void a(int i, t50 t50Var) {
            y45.j(t50Var, "errorCode");
            this.c.getClass();
            if (hh0.b(i)) {
                this.c.a(i, t50Var);
                return;
            }
            oh0 oh0VarC = this.c.c(i);
            if (oh0VarC != null) {
                oh0VarC.b(t50Var);
            }
        }

        @Override
        public final void a(zx1 zx1Var) {
            y45.j(zx1Var, "settings");
            this.c.i.a(new kh0(this.c.c() + " applyAndAckSettings", this, zx1Var), 0L);
        }

        @Override
        public final void a(int i, long j) {
            if (i == 0) {
                hh0 hh0Var = this.c;
                synchronized (hh0Var) {
                    hh0Var.x = hh0Var.j() + j;
                    y45.h(hh0Var, "null cannot be cast to non-null type java.lang.Object");
                    hh0Var.notifyAll();
                    zfb zfbVar = zfb.a;
                }
                return;
            }
            oh0 oh0VarA = this.c.a(i);
            if (oh0VarA != null) {
                synchronized (oh0VarA) {
                    oh0VarA.a(j);
                    zfb zfbVar2 = zfb.a;
                }
            }
        }
    }

    public final void a(int i2, int i3, BufferedSource bufferedSource, boolean z) throws IOException {
        y45.j(bufferedSource, "source");
        Buffer buffer = new Buffer();
        long j2 = i3;
        bufferedSource.require(j2);
        bufferedSource.read(buffer, j2);
        this.j.a(new lh0(this.d + "[" + i2 + "] onData", this, i2, buffer, i3, z), 0L);
    }

    public final void a(int i2, List<lf0> list, boolean z) {
        y45.j(list, "requestHeaders");
        this.j.a(new d(this.d + "[" + i2 + "] onHeaders", this, i2, list, z), 0L);
    }

    public final void a(int i2, List<lf0> list) {
        y45.j(list, "requestHeaders");
        synchronized (this) {
            if (this.B.contains(Integer.valueOf(i2))) {
                c(i2, t50.e);
                return;
            }
            this.B.add(Integer.valueOf(i2));
            this.j.a(new e(this.d + "[" + i2 + "] onRequest", this, i2, list), 0L);
        }
    }

    public final void a(int i2, t50 t50Var) {
        y45.j(t50Var, "errorCode");
        this.j.a(new f(this.d + "[" + i2 + "] onReset", this, i2, t50Var), 0L);
    }

    public final void a(zx1 zx1Var) {
        y45.j(zx1Var, "<set-?>");
        this.t = zx1Var;
    }

    public final void a(t50 t50Var) throws IOException {
        y45.j(t50Var, "statusCode");
        synchronized (this.z) {
            Ref$IntRef ref$IntRef = new Ref$IntRef();
            synchronized (this) {
                if (this.g) {
                    return;
                }
                this.g = true;
                int i2 = this.e;
                ref$IntRef.element = i2;
                zfb zfbVar = zfb.a;
                this.z.a(i2, t50Var, g92.a);
            }
        }
    }

    public final void a(int i2, boolean z, Buffer buffer, long j2) throws IOException {
        long j3;
        long j4;
        int iMin;
        long j5;
        if (j2 == 0) {
            this.z.a(z, i2, buffer, 0);
            return;
        }
        while (j2 > 0) {
            synchronized (this) {
                while (true) {
                    try {
                        try {
                            j3 = this.w;
                            j4 = this.x;
                            if (j3 >= j4) {
                                if (this.c.containsKey(Integer.valueOf(i2))) {
                                    y45.h(this, "null cannot be cast to non-null type java.lang.Object");
                                    wait();
                                } else {
                                    throw new IOException("stream closed");
                                }
                            }
                        } catch (InterruptedException unused) {
                            Thread.currentThread().interrupt();
                            throw new InterruptedIOException();
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                    throw th;
                }
                iMin = Math.min((int) Math.min(j2, j4 - j3), this.z.b());
                j5 = iMin;
                this.w += j5;
                zfb zfbVar = zfb.a;
            }
            j2 -= j5;
            this.z.a(z && j2 == 0, i2, buffer, iMin);
        }
    }

    public final void a(int i2, int i3, boolean z) {
        try {
            this.z.a(i2, i3, z);
        } catch (IOException e2) {
            t50 t50Var = t50.e;
            a(t50Var, t50Var, e2);
        }
    }

    public final void a(int i2, long j2) {
        this.i.a(new j(this.d + "[" + i2 + "] windowUpdate", this, i2, j2), 0L);
    }
}
