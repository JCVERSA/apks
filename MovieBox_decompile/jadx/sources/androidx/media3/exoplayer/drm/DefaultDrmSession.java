package androidx.media3.exoplayer.drm;

import android.media.NotProvisionedException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.media3.common.util.a1;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import x1.f4;

class DefaultDrmSession implements DrmSession {

    public final List f11175a;

    private final b0 f11176b;

    private final a f11177c;

    private final b f11178d;

    private final int f11179e;

    private final boolean f11180f;

    private final boolean f11181g;

    private final HashMap f11182h;

    private final androidx.media3.common.util.n f11183i;

    private final androidx.media3.exoplayer.upstream.m f11184j;

    private final f4 f11185k;

    private final m0 f11186l;

    private final UUID f11187m;

    private final Looper f11188n;

    private final e f11189o;

    private int f11190p;

    private int f11191q;

    private HandlerThread f11192r;

    private c f11193s;

    private androidx.media3.decoder.b f11194t;

    private DrmSession.DrmSessionException f11195u;

    private byte[] f11196v;

    private byte[] f11197w;

    private b0.a f11198x;

    private b0.d f11199y;

    public static final class UnexpectedDrmSessionException extends IOException {
        public UnexpectedDrmSessionException(@Nullable Throwable th2) {
            super(th2);
        }
    }

    public interface a {
        void a(Exception exc, boolean z10);

        void b(DefaultDrmSession defaultDrmSession);

        void onProvisionCompleted();
    }

    public interface b {
        void a(DefaultDrmSession defaultDrmSession, int i10);

        void b(DefaultDrmSession defaultDrmSession, int i10);
    }

    private class c extends Handler {

        private boolean f11200a;

        public c(Looper looper) {
            super(looper);
        }

        private boolean a(Message message, MediaDrmCallbackException mediaDrmCallbackException) {
            d dVar = (d) message.obj;
            if (!dVar.f11203b) {
                return false;
            }
            int i10 = dVar.f11206e + 1;
            dVar.f11206e = i10;
            if (i10 > DefaultDrmSession.this.f11184j.a(3)) {
                return false;
            }
            long jC = DefaultDrmSession.this.f11184j.c(new androidx.media3.exoplayer.upstream.m.c(new f2.i(dVar.f11202a, mediaDrmCallbackException.dataSpec, mediaDrmCallbackException.uriAfterRedirects, mediaDrmCallbackException.responseHeaders, SystemClock.elapsedRealtime(), SystemClock.elapsedRealtime() - dVar.f11204c, mediaDrmCallbackException.bytesLoaded), new f2.j(3), mediaDrmCallbackException.getCause() instanceof IOException ? (IOException) mediaDrmCallbackException.getCause() : new UnexpectedDrmSessionException(mediaDrmCallbackException.getCause()), dVar.f11206e));
            if (jC == C.TIME_UNSET) {
                return false;
            }
            synchronized (this) {
                try {
                    if (this.f11200a) {
                        return false;
                    }
                    sendMessageDelayed(Message.obtain(message), jC);
                    return true;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        void b(int i10, Object obj, boolean z10) {
            obtainMessage(i10, new d(f2.i.a(), z10, SystemClock.elapsedRealtime(), obj)).sendToTarget();
        }

        public synchronized void c() {
            removeCallbacksAndMessages(null);
            this.f11200a = true;
        }

        @Override
        public void handleMessage(Message message) {
            Object objB;
            d dVar = (d) message.obj;
            try {
                int i10 = message.what;
                if (i10 == 1) {
                    objB = DefaultDrmSession.this.f11186l.b(DefaultDrmSession.this.f11187m, (b0.d) dVar.f11205d);
                } else {
                    if (i10 != 2) {
                        throw new RuntimeException();
                    }
                    objB = DefaultDrmSession.this.f11186l.a(DefaultDrmSession.this.f11187m, (b0.a) dVar.f11205d);
                }
            } catch (MediaDrmCallbackException e10) {
                boolean zA = a(message, e10);
                objB = e10;
                if (zA) {
                    return;
                }
            } catch (Exception e11) {
                androidx.media3.common.util.u.i("DefaultDrmSession", "Key/provisioning request produced an unexpected exception. Not retrying.", e11);
                objB = e11;
            }
            DefaultDrmSession.this.f11184j.b(dVar.f11202a);
            synchronized (this) {
                try {
                    if (!this.f11200a) {
                        DefaultDrmSession.this.f11189o.obtainMessage(message.what, Pair.create(dVar.f11205d, objB)).sendToTarget();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    private static final class d {

        public final long f11202a;

        public final boolean f11203b;

        public final long f11204c;

        public final Object f11205d;

        public int f11206e;

        public d(long j10, boolean z10, long j11, Object obj) {
            this.f11202a = j10;
            this.f11203b = z10;
            this.f11204c = j11;
            this.f11205d = obj;
        }
    }

    private class e extends Handler {
        public e(Looper looper) {
            super(looper);
        }

        @Override
        public void handleMessage(Message message) {
            Pair pair = (Pair) message.obj;
            Object obj = pair.first;
            Object obj2 = pair.second;
            int i10 = message.what;
            if (i10 == 1) {
                DefaultDrmSession.this.C(obj, obj2);
            } else {
                if (i10 != 2) {
                    return;
                }
                DefaultDrmSession.this.w(obj, obj2);
            }
        }
    }

    public DefaultDrmSession(UUID uuid, b0 b0Var, a aVar, b bVar, List list, int i10, boolean z10, boolean z11, byte[] bArr, HashMap map, m0 m0Var, Looper looper, androidx.media3.exoplayer.upstream.m mVar, f4 f4Var) {
        if (i10 == 1 || i10 == 3) {
            androidx.media3.common.util.a.e(bArr);
        }
        this.f11187m = uuid;
        this.f11177c = aVar;
        this.f11178d = bVar;
        this.f11176b = b0Var;
        this.f11179e = i10;
        this.f11180f = z10;
        this.f11181g = z11;
        if (bArr != null) {
            this.f11197w = bArr;
            this.f11175a = null;
        } else {
            this.f11175a = Collections.unmodifiableList((List) androidx.media3.common.util.a.e(list));
        }
        this.f11182h = map;
        this.f11186l = m0Var;
        this.f11183i = new androidx.media3.common.util.n();
        this.f11184j = mVar;
        this.f11185k = f4Var;
        this.f11190p = 2;
        this.f11188n = looper;
        this.f11189o = new e(looper);
    }

    public void C(Object obj, Object obj2) {
        if (obj == this.f11199y) {
            if (this.f11190p == 2 || s()) {
                this.f11199y = null;
                if (obj2 instanceof Exception) {
                    this.f11177c.a((Exception) obj2, false);
                    return;
                }
                try {
                    this.f11176b.provideProvisionResponse((byte[]) obj2);
                    this.f11177c.onProvisionCompleted();
                } catch (Exception e10) {
                    this.f11177c.a(e10, true);
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:12:0x003b  */
    /* JADX WARN: Code duplicated, block: B:13:0x0041  */
    private boolean D() {
        if (s()) {
            return true;
        }
        try {
            byte[] bArrOpenSession = this.f11176b.openSession();
            this.f11196v = bArrOpenSession;
            this.f11176b.f(bArrOpenSession, this.f11185k);
            this.f11194t = this.f11176b.b(this.f11196v);
            final int i10 = 3;
            this.f11190p = 3;
            o(new androidx.media3.common.util.m() {
                @Override
                public final void accept(Object obj) {
                    ((r.a) obj).k(i10);
                }
            });
            androidx.media3.common.util.a.e(this.f11196v);
            return true;
        } catch (NotProvisionedException unused) {
            this.f11177c.b(this);
            return false;
        } catch (Exception e10) {
            e = e10;
            if (x.d(e)) {
                this.f11177c.b(this);
                return false;
            }
            v(e, 1);
            return false;
        } catch (NoSuchMethodError e11) {
            e = e11;
            if (x.d(e)) {
                this.f11177c.b(this);
                return false;
            }
            v(e, 1);
            return false;
        }
    }

    private void E(byte[] bArr, int i10, boolean z10) {
        try {
            this.f11198x = this.f11176b.d(bArr, this.f11175a, i10, this.f11182h);
            ((c) a1.i(this.f11193s)).b(2, androidx.media3.common.util.a.e(this.f11198x), z10);
        } catch (Exception | NoSuchMethodError e10) {
            x(e10, true);
        }
    }

    private boolean G() {
        try {
            this.f11176b.restoreKeys(this.f11196v, this.f11197w);
            return true;
        } catch (Exception | NoSuchMethodError e10) {
            v(e10, 1);
            return false;
        }
    }

    private void H() {
        if (Thread.currentThread() != this.f11188n.getThread()) {
            androidx.media3.common.util.u.i("DefaultDrmSession", "DefaultDrmSession accessed on the wrong thread.\nCurrent thread: " + Thread.currentThread().getName() + "\nExpected thread: " + this.f11188n.getThread().getName(), new IllegalStateException());
        }
    }

    private void o(androidx.media3.common.util.m mVar) {
        Iterator it = this.f11183i.elementSet().iterator();
        while (it.hasNext()) {
            mVar.accept((r.a) it.next());
        }
    }

    private void p(boolean z10) {
        if (this.f11181g) {
            return;
        }
        byte[] bArr = (byte[]) a1.i(this.f11196v);
        int i10 = this.f11179e;
        if (i10 != 0 && i10 != 1) {
            if (i10 == 2) {
                if (this.f11197w == null || G()) {
                    E(bArr, 2, z10);
                    return;
                }
                return;
            }
            if (i10 != 3) {
                return;
            }
            androidx.media3.common.util.a.e(this.f11197w);
            androidx.media3.common.util.a.e(this.f11196v);
            E(this.f11197w, 3, z10);
            return;
        }
        if (this.f11197w == null) {
            E(bArr, 1, z10);
            return;
        }
        if (this.f11190p == 4 || G()) {
            long jQ = q();
            if (this.f11179e != 0 || jQ > 60) {
                if (jQ <= 0) {
                    v(new KeysExpiredException(), 2);
                    return;
                } else {
                    this.f11190p = 4;
                    o(new androidx.media3.common.util.m() {
                        @Override
                        public final void accept(Object obj) {
                            ((r.a) obj).j();
                        }
                    });
                    return;
                }
            }
            androidx.media3.common.util.u.b("DefaultDrmSession", "Offline license has expired or will expire soon. Remaining seconds: " + jQ);
            E(bArr, 2, z10);
        }
    }

    private long q() {
        if (!androidx.media3.common.h.f9672d.equals(this.f11187m)) {
            return Long.MAX_VALUE;
        }
        Pair pair = (Pair) androidx.media3.common.util.a.e(n0.b(this));
        return Math.min(((Long) pair.first).longValue(), ((Long) pair.second).longValue());
    }

    private boolean s() {
        int i10 = this.f11190p;
        return i10 == 3 || i10 == 4;
    }

    public static void t(Throwable th2, r.a aVar) {
        aVar.l((Exception) th2);
    }

    private void v(final Throwable th2, int i10) {
        this.f11195u = new DrmSession.DrmSessionException(th2, x.b(th2, i10));
        androidx.media3.common.util.u.d("DefaultDrmSession", "DRM session error", th2);
        if (th2 instanceof Exception) {
            o(new androidx.media3.common.util.m() {
                @Override
                public final void accept(Object obj) {
                    DefaultDrmSession.t(th2, (r.a) obj);
                }
            });
        } else {
            if (!(th2 instanceof Error)) {
                throw new IllegalStateException("Unexpected Throwable subclass", th2);
            }
            if (!x.e(th2) && !x.d(th2)) {
                throw ((Error) th2);
            }
        }
        if (this.f11190p != 4) {
            this.f11190p = 1;
        }
    }

    public void w(Object obj, Object obj2) {
        if (obj == this.f11198x && s()) {
            this.f11198x = null;
            if ((obj2 instanceof Exception) || (obj2 instanceof NoSuchMethodError)) {
                x((Throwable) obj2, false);
                return;
            }
            try {
                byte[] bArr = (byte[]) obj2;
                if (this.f11179e == 3) {
                    this.f11176b.provideKeyResponse((byte[]) a1.i(this.f11197w), bArr);
                    o(new androidx.media3.common.util.m() {
                        @Override
                        public final void accept(Object obj3) {
                            ((r.a) obj3).i();
                        }
                    });
                    return;
                }
                byte[] bArrProvideKeyResponse = this.f11176b.provideKeyResponse(this.f11196v, bArr);
                int i10 = this.f11179e;
                if ((i10 == 2 || (i10 == 0 && this.f11197w != null)) && bArrProvideKeyResponse != null && bArrProvideKeyResponse.length != 0) {
                    this.f11197w = bArrProvideKeyResponse;
                }
                this.f11190p = 4;
                o(new androidx.media3.common.util.m() {
                    @Override
                    public final void accept(Object obj3) {
                        ((r.a) obj3).h();
                    }
                });
            } catch (Exception e10) {
                e = e10;
                x(e, true);
            } catch (NoSuchMethodError e11) {
                e = e11;
                x(e, true);
            }
        }
    }

    private void x(Throwable th2, boolean z10) {
        if ((th2 instanceof NotProvisionedException) || x.d(th2)) {
            this.f11177c.b(this);
        } else {
            v(th2, z10 ? 1 : 2);
        }
    }

    private void y() {
        if (this.f11179e == 0 && this.f11190p == 4) {
            a1.i(this.f11196v);
            p(false);
        }
    }

    void A() {
        if (D()) {
            p(true);
        }
    }

    void B(Exception exc, boolean z10) {
        v(exc, z10 ? 1 : 3);
    }

    void F() {
        this.f11199y = this.f11176b.getProvisionRequest();
        ((c) a1.i(this.f11193s)).b(1, androidx.media3.common.util.a.e(this.f11199y), true);
    }

    @Override
    public final UUID a() {
        H();
        return this.f11187m;
    }

    @Override
    public boolean b() {
        H();
        return this.f11180f;
    }

    @Override
    public final androidx.media3.decoder.b c() {
        H();
        return this.f11194t;
    }

    @Override
    public boolean d(String str) {
        H();
        return this.f11176b.c((byte[]) androidx.media3.common.util.a.i(this.f11196v), str);
    }

    @Override
    public void e(r.a aVar) {
        H();
        if (this.f11191q < 0) {
            androidx.media3.common.util.u.c("DefaultDrmSession", "Session reference count less than zero: " + this.f11191q);
            this.f11191q = 0;
        }
        if (aVar != null) {
            this.f11183i.a(aVar);
        }
        int i10 = this.f11191q + 1;
        this.f11191q = i10;
        if (i10 == 1) {
            androidx.media3.common.util.a.g(this.f11190p == 2);
            HandlerThread handlerThread = new HandlerThread("ExoPlayer:DrmRequestHandler");
            this.f11192r = handlerThread;
            handlerThread.start();
            this.f11193s = new c(this.f11192r.getLooper());
            if (D()) {
                p(true);
            }
        } else if (aVar != null && s() && this.f11183i.count(aVar) == 1) {
            aVar.k(this.f11190p);
        }
        this.f11178d.a(this, this.f11191q);
    }

    @Override
    public void f(r.a aVar) {
        H();
        int i10 = this.f11191q;
        if (i10 <= 0) {
            androidx.media3.common.util.u.c("DefaultDrmSession", "release() called on a session that's already fully released.");
            return;
        }
        int i11 = i10 - 1;
        this.f11191q = i11;
        if (i11 == 0) {
            this.f11190p = 0;
            ((e) a1.i(this.f11189o)).removeCallbacksAndMessages(null);
            ((c) a1.i(this.f11193s)).c();
            this.f11193s = null;
            ((HandlerThread) a1.i(this.f11192r)).quit();
            this.f11192r = null;
            this.f11194t = null;
            this.f11195u = null;
            this.f11198x = null;
            this.f11199y = null;
            byte[] bArr = this.f11196v;
            if (bArr != null) {
                this.f11176b.closeSession(bArr);
                this.f11196v = null;
            }
        }
        if (aVar != null) {
            this.f11183i.b(aVar);
            if (this.f11183i.count(aVar) == 0) {
                aVar.m();
            }
        }
        this.f11178d.b(this, this.f11191q);
    }

    @Override
    public final DrmSession.DrmSessionException getError() {
        H();
        if (this.f11190p == 1) {
            return this.f11195u;
        }
        return null;
    }

    @Override
    public final int getState() {
        H();
        return this.f11190p;
    }

    @Override
    public Map queryKeyStatus() {
        H();
        byte[] bArr = this.f11196v;
        if (bArr == null) {
            return null;
        }
        return this.f11176b.queryKeyStatus(bArr);
    }

    public boolean r(byte[] bArr) {
        H();
        return Arrays.equals(this.f11196v, bArr);
    }

    void z(int i10) {
        if (i10 != 2) {
            return;
        }
        y();
    }
}
