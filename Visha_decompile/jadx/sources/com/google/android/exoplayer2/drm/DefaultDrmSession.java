package com.google.android.exoplayer2.drm;

import android.media.NotProvisionedException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.media3.common.C;
import com.google.android.exoplayer2.drm.b;
import defpackage.ag1;
import defpackage.blb;
import defpackage.ih6;
import defpackage.in5;
import defpackage.op5;
import defpackage.ta8;
import defpackage.to0;
import defpackage.ul1;
import defpackage.wj1;
import defpackage.zi;
import defpackage.zlc;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

public class DefaultDrmSession implements DrmSession {
    public final List a;
    public final g b;
    public final a c;
    public final b d;
    public final int e;
    public final boolean f;
    public final boolean g;
    public final HashMap h;
    public final wj1 i;
    public final com.google.android.exoplayer2.upstream.f j;
    public final ta8 k;
    public final j l;
    public final UUID m;
    public final e n;
    public int o;
    public int p;
    public HandlerThread q;
    public c r;
    public ul1 s;
    public DrmSession.DrmSessionException t;
    public byte[] u;
    public byte[] v;
    public g.a w;
    public g.C0079g x;

    public static final class UnexpectedDrmSessionException extends IOException {
        public UnexpectedDrmSessionException(@Nullable Throwable th) {
            super(th);
        }
    }

    public interface a {
        void a(DefaultDrmSession defaultDrmSession);

        void onProvisionCompleted();

        void onProvisionError(Exception exc, boolean z);
    }

    public interface b {
        void a(DefaultDrmSession defaultDrmSession, int i);

        void b(DefaultDrmSession defaultDrmSession, int i);
    }

    public class c extends Handler {
        public boolean a;

        public c(Looper looper) {
            super(looper);
        }

        public final boolean a(Message message, MediaDrmCallbackException mediaDrmCallbackException) {
            d dVar = (d) message.obj;
            if (!dVar.b) {
                return false;
            }
            int i = dVar.e + 1;
            dVar.e = i;
            if (i > DefaultDrmSession.this.j.getMinimumLoadableRetryCount(3)) {
                return false;
            }
            long jA = DefaultDrmSession.this.j.a(new com.google.android.exoplayer2.upstream.f.a(new in5(dVar.a, mediaDrmCallbackException.dataSpec, mediaDrmCallbackException.uriAfterRedirects, mediaDrmCallbackException.responseHeaders, SystemClock.elapsedRealtime(), SystemClock.elapsedRealtime() - dVar.c, mediaDrmCallbackException.bytesLoaded), new ih6(3), mediaDrmCallbackException.getCause() instanceof IOException ? (IOException) mediaDrmCallbackException.getCause() : new UnexpectedDrmSessionException(mediaDrmCallbackException.getCause()), dVar.e));
            if (jA == C.TIME_UNSET) {
                return false;
            }
            synchronized (this) {
                try {
                    if (this.a) {
                        return false;
                    }
                    sendMessageDelayed(Message.obtain(message), jA);
                    return true;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public void b(int i, Object obj, boolean z) {
            obtainMessage(i, new d(in5.a(), z, SystemClock.elapsedRealtime(), obj)).sendToTarget();
        }

        public synchronized void c() {
            removeCallbacksAndMessages(null);
            this.a = true;
        }

        @Override
        public void handleMessage(Message message) {
            Object objB;
            d dVar = (d) message.obj;
            try {
                int i = message.what;
                if (i == 0) {
                    DefaultDrmSession defaultDrmSession = DefaultDrmSession.this;
                    objB = defaultDrmSession.l.b(defaultDrmSession.m, (g.C0079g) dVar.d);
                } else {
                    if (i != 1) {
                        throw new RuntimeException();
                    }
                    DefaultDrmSession defaultDrmSession2 = DefaultDrmSession.this;
                    objB = defaultDrmSession2.l.a(defaultDrmSession2.m, (g.a) dVar.d);
                }
            } catch (MediaDrmCallbackException e) {
                boolean zA = a(message, e);
                objB = e;
                if (zA) {
                    return;
                }
            } catch (Exception e2) {
                op5.j("DefaultDrmSession", "Key/provisioning request produced an unexpected exception. Not retrying.", e2);
                objB = e2;
            }
            DefaultDrmSession.this.j.onLoadTaskConcluded(dVar.a);
            synchronized (this) {
                try {
                    if (!this.a) {
                        DefaultDrmSession.this.n.obtainMessage(message.what, Pair.create(dVar.d, objB)).sendToTarget();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public static final class d {
        public final long a;
        public final boolean b;
        public final long c;
        public final Object d;
        public int e;

        public d(long j, boolean z, long j2, Object obj) {
            this.a = j;
            this.b = z;
            this.c = j2;
            this.d = obj;
        }
    }

    public class e extends Handler {
        public e(Looper looper) {
            super(looper);
        }

        @Override
        public void handleMessage(Message message) {
            Pair pair = (Pair) message.obj;
            Object obj = pair.first;
            Object obj2 = pair.second;
            int i = message.what;
            if (i == 0) {
                DefaultDrmSession.this.w(obj, obj2);
            } else {
                if (i != 1) {
                    return;
                }
                DefaultDrmSession.this.q(obj, obj2);
            }
        }
    }

    public DefaultDrmSession(UUID uuid, g gVar, a aVar, b bVar, List list, int i, boolean z, boolean z2, byte[] bArr, HashMap map, j jVar, Looper looper, com.google.android.exoplayer2.upstream.f fVar, ta8 ta8Var) {
        if (i == 1 || i == 3) {
            zi.e(bArr);
        }
        this.m = uuid;
        this.c = aVar;
        this.d = bVar;
        this.b = gVar;
        this.e = i;
        this.f = z;
        this.g = z2;
        if (bArr != null) {
            this.v = bArr;
            this.a = null;
        } else {
            this.a = Collections.unmodifiableList((List) zi.e(list));
        }
        this.h = map;
        this.l = jVar;
        this.i = new wj1();
        this.j = fVar;
        this.k = ta8Var;
        this.o = 2;
        this.n = new e(looper);
    }

    public final boolean A() {
        try {
            this.b.restoreKeys(this.u, this.v);
            return true;
        } catch (Exception e2) {
            p(e2, 1);
            return false;
        }
    }

    @Override
    public void a(com.google.android.exoplayer2.drm.b.a aVar) {
        int i = this.p;
        if (i <= 0) {
            op5.c("DefaultDrmSession", "release() called on a session that's already fully released.");
            return;
        }
        int i2 = i - 1;
        this.p = i2;
        if (i2 == 0) {
            this.o = 0;
            ((e) blb.j(this.n)).removeCallbacksAndMessages(null);
            ((c) blb.j(this.r)).c();
            this.r = null;
            ((HandlerThread) blb.j(this.q)).quit();
            this.q = null;
            this.s = null;
            this.t = null;
            this.w = null;
            this.x = null;
            byte[] bArr = this.u;
            if (bArr != null) {
                this.b.closeSession(bArr);
                this.u = null;
            }
        }
        if (aVar != null) {
            this.i.c(aVar);
            if (this.i.count(aVar) == 0) {
                aVar.m();
            }
        }
        this.d.a(this, this.p);
    }

    @Override
    public void c(com.google.android.exoplayer2.drm.b.a aVar) {
        if (this.p < 0) {
            op5.c("DefaultDrmSession", "Session reference count less than zero: " + this.p);
            this.p = 0;
        }
        if (aVar != null) {
            this.i.b(aVar);
        }
        int i = this.p + 1;
        this.p = i;
        if (i == 1) {
            zi.g(this.o == 2);
            HandlerThread handlerThread = new HandlerThread("ExoPlayer:DrmRequestHandler");
            this.q = handlerThread;
            handlerThread.start();
            this.r = new c(this.q.getLooper());
            if (x()) {
                j(true);
            }
        } else if (aVar != null && m() && this.i.count(aVar) == 1) {
            aVar.k(this.o);
        }
        this.d.b(this, this.p);
    }

    @Override
    public final ul1 getCryptoConfig() {
        return this.s;
    }

    @Override
    public final DrmSession.DrmSessionException getError() {
        if (this.o == 1) {
            return this.t;
        }
        return null;
    }

    @Override
    public final UUID getSchemeUuid() {
        return this.m;
    }

    @Override
    public final int getState() {
        return this.o;
    }

    public final void i(ag1 ag1Var) {
        Iterator it = this.i.elementSet().iterator();
        while (it.hasNext()) {
            ag1Var.accept((com.google.android.exoplayer2.drm.b.a) it.next());
        }
    }

    public final void j(boolean z) {
        if (this.g) {
            return;
        }
        byte[] bArr = (byte[]) blb.j(this.u);
        int i = this.e;
        if (i != 0 && i != 1) {
            if (i == 2) {
                if (this.v == null || A()) {
                    y(bArr, 2, z);
                    return;
                }
                return;
            }
            if (i != 3) {
                return;
            }
            zi.e(this.v);
            zi.e(this.u);
            y(this.v, 3, z);
            return;
        }
        if (this.v == null) {
            y(bArr, 1, z);
            return;
        }
        if (this.o == 4 || A()) {
            long jK = k();
            if (this.e != 0 || jK > 60) {
                if (jK <= 0) {
                    p(new KeysExpiredException(), 2);
                    return;
                } else {
                    this.o = 4;
                    i(new ag1() {
                        @Override
                        public final void accept(Object obj) {
                            ((b.a) obj).j();
                        }
                    });
                    return;
                }
            }
            op5.b("DefaultDrmSession", "Offline license has expired or will expire soon. Remaining seconds: " + jK);
            y(bArr, 2, z);
        }
    }

    public final long k() {
        if (!to0.d.equals(this.m)) {
            return Long.MAX_VALUE;
        }
        Pair pair = (Pair) zi.e(zlc.b(this));
        return Math.min(((Long) pair.first).longValue(), ((Long) pair.second).longValue());
    }

    public boolean l(byte[] bArr) {
        return Arrays.equals(this.u, bArr);
    }

    public final boolean m() {
        int i = this.o;
        return i == 3 || i == 4;
    }

    public final void p(final Exception exc, int i) {
        this.t = new DrmSession.DrmSessionException(exc, com.google.android.exoplayer2.drm.d.a(exc, i));
        op5.d("DefaultDrmSession", "DRM session error", exc);
        i(new ag1() {
            @Override
            public final void accept(Object obj) {
                ((b.a) obj).l(exc);
            }
        });
        if (this.o != 4) {
            this.o = 1;
        }
    }

    @Override
    public boolean playClearSamplesWithoutKeys() {
        return this.f;
    }

    public final void q(Object obj, Object obj2) {
        if (obj == this.w && m()) {
            this.w = null;
            if (obj2 instanceof Exception) {
                r((Exception) obj2, false);
                return;
            }
            try {
                byte[] bArr = (byte[]) obj2;
                if (this.e == 3) {
                    this.b.provideKeyResponse((byte[]) blb.j(this.v), bArr);
                    i(new ag1() {
                        @Override
                        public final void accept(Object obj3) {
                            ((b.a) obj3).i();
                        }
                    });
                    return;
                }
                byte[] bArrProvideKeyResponse = this.b.provideKeyResponse(this.u, bArr);
                int i = this.e;
                if ((i == 2 || (i == 0 && this.v != null)) && bArrProvideKeyResponse != null && bArrProvideKeyResponse.length != 0) {
                    this.v = bArrProvideKeyResponse;
                }
                this.o = 4;
                i(new ag1() {
                    @Override
                    public final void accept(Object obj3) {
                        ((b.a) obj3).h();
                    }
                });
            } catch (Exception e2) {
                r(e2, true);
            }
        }
    }

    @Override
    public Map queryKeyStatus() {
        byte[] bArr = this.u;
        if (bArr == null) {
            return null;
        }
        return this.b.queryKeyStatus(bArr);
    }

    public final void r(Exception exc, boolean z) {
        if (exc instanceof NotProvisionedException) {
            this.c.a(this);
        } else {
            p(exc, z ? 1 : 2);
        }
    }

    @Override
    public boolean requiresSecureDecoder(String str) {
        return this.b.requiresSecureDecoder((byte[]) zi.i(this.u), str);
    }

    public final void s() {
        if (this.e == 0 && this.o == 4) {
            blb.j(this.u);
            j(false);
        }
    }

    public void t(int i) {
        if (i != 2) {
            return;
        }
        s();
    }

    public void u() {
        if (x()) {
            j(true);
        }
    }

    public void v(Exception exc, boolean z) {
        p(exc, z ? 1 : 3);
    }

    public final void w(Object obj, Object obj2) {
        if (obj == this.x) {
            if (this.o == 2 || m()) {
                this.x = null;
                if (obj2 instanceof Exception) {
                    this.c.onProvisionError((Exception) obj2, false);
                    return;
                }
                try {
                    this.b.provideProvisionResponse((byte[]) obj2);
                    this.c.onProvisionCompleted();
                } catch (Exception e2) {
                    this.c.onProvisionError(e2, true);
                }
            }
        }
    }

    public final boolean x() {
        if (m()) {
            return true;
        }
        try {
            byte[] bArrOpenSession = this.b.openSession();
            this.u = bArrOpenSession;
            this.b.a(bArrOpenSession, this.k);
            this.s = this.b.createCryptoConfig(this.u);
            final int i = 3;
            this.o = 3;
            i(new ag1() {
                @Override
                public final void accept(Object obj) {
                    ((b.a) obj).k(i);
                }
            });
            zi.e(this.u);
            return true;
        } catch (NotProvisionedException unused) {
            this.c.a(this);
            return false;
        } catch (Exception e2) {
            p(e2, 1);
            return false;
        }
    }

    public final void y(byte[] bArr, int i, boolean z) {
        try {
            this.w = this.b.getKeyRequest(bArr, this.a, i, this.h);
            ((c) blb.j(this.r)).b(1, zi.e(this.w), z);
        } catch (Exception e2) {
            r(e2, true);
        }
    }

    public void z() {
        this.x = this.b.getProvisionRequest();
        ((c) blb.j(this.r)).b(0, zi.e(this.x), true);
    }
}
