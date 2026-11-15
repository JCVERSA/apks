package com.google.android.exoplayer2.drm;

import android.media.NotProvisionedException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.Pair;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import g9.u1;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

class DefaultDrmSession implements DrmSession {

    public final List f24253a;

    private final c0 f24254b;

    private final a f24255c;

    private final b f24256d;

    private final int f24257e;

    private final boolean f24258f;

    private final boolean f24259g;

    private final HashMap f24260h;

    private final com.google.android.exoplayer2.util.j f24261i;

    private final com.google.android.exoplayer2.upstream.z f24262j;

    private final u1 f24263k;

    final j0 f24264l;

    final UUID f24265m;

    final e f24266n;

    private int f24267o;

    private int f24268p;

    private HandlerThread f24269q;

    private c f24270r;

    private com.google.android.exoplayer2.decoder.b f24271s;

    private DrmSession.DrmSessionException f24272t;

    private byte[] f24273u;

    private byte[] f24274v;

    private c0.a f24275w;

    private c0.d f24276x;

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

        private boolean f24277a;

        public c(Looper looper) {
            super(looper);
        }

        private boolean a(Message message, MediaDrmCallbackException mediaDrmCallbackException) {
            d dVar = (d) message.obj;
            if (!dVar.f24280b) {
                return false;
            }
            int i10 = dVar.f24283e + 1;
            dVar.f24283e = i10;
            if (i10 > DefaultDrmSession.this.f24262j.a(3)) {
                return false;
            }
            long jC = DefaultDrmSession.this.f24262j.c(new com.google.android.exoplayer2.upstream.z.c(new v9.h(dVar.f24279a, mediaDrmCallbackException.dataSpec, mediaDrmCallbackException.uriAfterRedirects, mediaDrmCallbackException.responseHeaders, SystemClock.elapsedRealtime(), SystemClock.elapsedRealtime() - dVar.f24281c, mediaDrmCallbackException.bytesLoaded), new v9.i(3), mediaDrmCallbackException.getCause() instanceof IOException ? (IOException) mediaDrmCallbackException.getCause() : new UnexpectedDrmSessionException(mediaDrmCallbackException.getCause()), dVar.f24283e));
            if (jC == C.TIME_UNSET) {
                return false;
            }
            synchronized (this) {
                try {
                    if (this.f24277a) {
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
            obtainMessage(i10, new d(v9.h.a(), z10, SystemClock.elapsedRealtime(), obj)).sendToTarget();
        }

        public synchronized void c() {
            removeCallbacksAndMessages(null);
            this.f24277a = true;
        }

        @Override
        public void handleMessage(Message message) {
            Object objA;
            d dVar = (d) message.obj;
            try {
                int i10 = message.what;
                if (i10 == 0) {
                    DefaultDrmSession defaultDrmSession = DefaultDrmSession.this;
                    objA = defaultDrmSession.f24264l.a(defaultDrmSession.f24265m, (c0.d) dVar.f24282d);
                } else {
                    if (i10 != 1) {
                        throw new RuntimeException();
                    }
                    DefaultDrmSession defaultDrmSession2 = DefaultDrmSession.this;
                    objA = defaultDrmSession2.f24264l.b(defaultDrmSession2.f24265m, (c0.a) dVar.f24282d);
                }
            } catch (MediaDrmCallbackException e10) {
                boolean zA = a(message, e10);
                objA = e10;
                if (zA) {
                    return;
                }
            } catch (Exception e11) {
                com.google.android.exoplayer2.util.s.j("DefaultDrmSession", "Key/provisioning request produced an unexpected exception. Not retrying.", e11);
                objA = e11;
            }
            DefaultDrmSession.this.f24262j.b(dVar.f24279a);
            synchronized (this) {
                try {
                    if (!this.f24277a) {
                        DefaultDrmSession.this.f24266n.obtainMessage(message.what, Pair.create(dVar.f24282d, objA)).sendToTarget();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    private static final class d {

        public final long f24279a;

        public final boolean f24280b;

        public final long f24281c;

        public final Object f24282d;

        public int f24283e;

        public d(long j10, boolean z10, long j11, Object obj) {
            this.f24279a = j10;
            this.f24280b = z10;
            this.f24281c = j11;
            this.f24282d = obj;
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
            if (i10 == 0) {
                DefaultDrmSession.this.z(obj, obj2);
            } else {
                if (i10 != 1) {
                    return;
                }
                DefaultDrmSession.this.t(obj, obj2);
            }
        }
    }

    public DefaultDrmSession(UUID uuid, c0 c0Var, a aVar, b bVar, List list, int i10, boolean z10, boolean z11, byte[] bArr, HashMap map, j0 j0Var, Looper looper, com.google.android.exoplayer2.upstream.z zVar, u1 u1Var) {
        if (i10 == 1 || i10 == 3) {
            com.google.android.exoplayer2.util.a.e(bArr);
        }
        this.f24265m = uuid;
        this.f24255c = aVar;
        this.f24256d = bVar;
        this.f24254b = c0Var;
        this.f24257e = i10;
        this.f24258f = z10;
        this.f24259g = z11;
        if (bArr != null) {
            this.f24274v = bArr;
            this.f24253a = null;
        } else {
            this.f24253a = Collections.unmodifiableList((List) com.google.android.exoplayer2.util.a.e(list));
        }
        this.f24260h = map;
        this.f24264l = j0Var;
        this.f24261i = new com.google.android.exoplayer2.util.j();
        this.f24262j = zVar;
        this.f24263k = u1Var;
        this.f24267o = 2;
        this.f24266n = new e(looper);
    }

    private boolean A() {
        if (p()) {
            return true;
        }
        try {
            byte[] bArrOpenSession = this.f24254b.openSession();
            this.f24273u = bArrOpenSession;
            this.f24254b.f(bArrOpenSession, this.f24263k);
            this.f24271s = this.f24254b.b(this.f24273u);
            final int i10 = 3;
            this.f24267o = 3;
            l(new com.google.android.exoplayer2.util.i() {
                @Override
                public final void accept(Object obj) {
                    ((s.a) obj).k(i10);
                }
            });
            com.google.android.exoplayer2.util.a.e(this.f24273u);
            return true;
        } catch (NotProvisionedException unused) {
            this.f24255c.b(this);
            return false;
        } catch (Exception e10) {
            s(e10, 1);
            return false;
        }
    }

    private void B(byte[] bArr, int i10, boolean z10) {
        try {
            this.f24275w = this.f24254b.d(bArr, this.f24253a, i10, this.f24260h);
            ((c) p0.j(this.f24270r)).b(1, com.google.android.exoplayer2.util.a.e(this.f24275w), z10);
        } catch (Exception e10) {
            u(e10, true);
        }
    }

    private boolean D() {
        try {
            this.f24254b.restoreKeys(this.f24273u, this.f24274v);
            return true;
        } catch (Exception e10) {
            s(e10, 1);
            return false;
        }
    }

    private void l(com.google.android.exoplayer2.util.i iVar) {
        Iterator it = this.f24261i.elementSet().iterator();
        while (it.hasNext()) {
            iVar.accept((s.a) it.next());
        }
    }

    private void m(boolean z10) {
        if (this.f24259g) {
            return;
        }
        byte[] bArr = (byte[]) p0.j(this.f24273u);
        int i10 = this.f24257e;
        if (i10 != 0 && i10 != 1) {
            if (i10 == 2) {
                if (this.f24274v == null || D()) {
                    B(bArr, 2, z10);
                    return;
                }
                return;
            }
            if (i10 != 3) {
                return;
            }
            com.google.android.exoplayer2.util.a.e(this.f24274v);
            com.google.android.exoplayer2.util.a.e(this.f24273u);
            B(this.f24274v, 3, z10);
            return;
        }
        if (this.f24274v == null) {
            B(bArr, 1, z10);
            return;
        }
        if (this.f24267o == 4 || D()) {
            long jN = n();
            if (this.f24257e != 0 || jN > 60) {
                if (jN <= 0) {
                    s(new KeysExpiredException(), 2);
                    return;
                } else {
                    this.f24267o = 4;
                    l(new com.google.android.exoplayer2.util.i() {
                        @Override
                        public final void accept(Object obj) {
                            ((s.a) obj).j();
                        }
                    });
                    return;
                }
            }
            com.google.android.exoplayer2.util.s.b("DefaultDrmSession", "Offline license has expired or will expire soon. Remaining seconds: " + jN);
            B(bArr, 2, z10);
        }
    }

    private long n() {
        if (!com.google.android.exoplayer2.l.f24515d.equals(this.f24265m)) {
            return Long.MAX_VALUE;
        }
        Pair pair = (Pair) com.google.android.exoplayer2.util.a.e(k0.b(this));
        return Math.min(((Long) pair.first).longValue(), ((Long) pair.second).longValue());
    }

    private boolean p() {
        int i10 = this.f24267o;
        return i10 == 3 || i10 == 4;
    }

    private void s(final Exception exc, int i10) {
        this.f24272t = new DrmSession.DrmSessionException(exc, y.a(exc, i10));
        com.google.android.exoplayer2.util.s.d("DefaultDrmSession", "DRM session error", exc);
        l(new com.google.android.exoplayer2.util.i() {
            @Override
            public final void accept(Object obj) {
                ((s.a) obj).l(exc);
            }
        });
        if (this.f24267o != 4) {
            this.f24267o = 1;
        }
    }

    public void t(Object obj, Object obj2) {
        if (obj == this.f24275w && p()) {
            this.f24275w = null;
            if (obj2 instanceof Exception) {
                u((Exception) obj2, false);
                return;
            }
            try {
                byte[] bArr = (byte[]) obj2;
                if (this.f24257e == 3) {
                    this.f24254b.provideKeyResponse((byte[]) p0.j(this.f24274v), bArr);
                    l(new com.google.android.exoplayer2.util.i() {
                        @Override
                        public final void accept(Object obj3) {
                            ((s.a) obj3).i();
                        }
                    });
                    return;
                }
                byte[] bArrProvideKeyResponse = this.f24254b.provideKeyResponse(this.f24273u, bArr);
                int i10 = this.f24257e;
                if ((i10 == 2 || (i10 == 0 && this.f24274v != null)) && bArrProvideKeyResponse != null && bArrProvideKeyResponse.length != 0) {
                    this.f24274v = bArrProvideKeyResponse;
                }
                this.f24267o = 4;
                l(new com.google.android.exoplayer2.util.i() {
                    @Override
                    public final void accept(Object obj3) {
                        ((s.a) obj3).h();
                    }
                });
            } catch (Exception e10) {
                u(e10, true);
            }
        }
    }

    private void u(Exception exc, boolean z10) {
        if (exc instanceof NotProvisionedException) {
            this.f24255c.b(this);
        } else {
            s(exc, z10 ? 1 : 2);
        }
    }

    private void v() {
        if (this.f24257e == 0 && this.f24267o == 4) {
            p0.j(this.f24273u);
            m(false);
        }
    }

    public void z(Object obj, Object obj2) {
        if (obj == this.f24276x) {
            if (this.f24267o == 2 || p()) {
                this.f24276x = null;
                if (obj2 instanceof Exception) {
                    this.f24255c.a((Exception) obj2, false);
                    return;
                }
                try {
                    this.f24254b.provideProvisionResponse((byte[]) obj2);
                    this.f24255c.onProvisionCompleted();
                } catch (Exception e10) {
                    this.f24255c.a(e10, true);
                }
            }
        }
    }

    public void C() {
        this.f24276x = this.f24254b.getProvisionRequest();
        ((c) p0.j(this.f24270r)).b(0, com.google.android.exoplayer2.util.a.e(this.f24276x), true);
    }

    @Override
    public final UUID a() {
        return this.f24265m;
    }

    @Override
    public boolean b() {
        return this.f24258f;
    }

    @Override
    public final com.google.android.exoplayer2.decoder.b c() {
        return this.f24271s;
    }

    @Override
    public boolean d(String str) {
        return this.f24254b.c((byte[]) com.google.android.exoplayer2.util.a.i(this.f24273u), str);
    }

    @Override
    public void e(s.a aVar) {
        if (this.f24268p < 0) {
            com.google.android.exoplayer2.util.s.c("DefaultDrmSession", "Session reference count less than zero: " + this.f24268p);
            this.f24268p = 0;
        }
        if (aVar != null) {
            this.f24261i.a(aVar);
        }
        int i10 = this.f24268p + 1;
        this.f24268p = i10;
        if (i10 == 1) {
            com.google.android.exoplayer2.util.a.g(this.f24267o == 2);
            HandlerThread handlerThread = new HandlerThread("ExoPlayer:DrmRequestHandler");
            this.f24269q = handlerThread;
            handlerThread.start();
            this.f24270r = new c(this.f24269q.getLooper());
            if (A()) {
                m(true);
            }
        } else if (aVar != null && p() && this.f24261i.count(aVar) == 1) {
            aVar.k(this.f24267o);
        }
        this.f24256d.a(this, this.f24268p);
    }

    @Override
    public void f(s.a aVar) {
        int i10 = this.f24268p;
        if (i10 <= 0) {
            com.google.android.exoplayer2.util.s.c("DefaultDrmSession", "release() called on a session that's already fully released.");
            return;
        }
        int i11 = i10 - 1;
        this.f24268p = i11;
        if (i11 == 0) {
            this.f24267o = 0;
            ((e) p0.j(this.f24266n)).removeCallbacksAndMessages(null);
            ((c) p0.j(this.f24270r)).c();
            this.f24270r = null;
            ((HandlerThread) p0.j(this.f24269q)).quit();
            this.f24269q = null;
            this.f24271s = null;
            this.f24272t = null;
            this.f24275w = null;
            this.f24276x = null;
            byte[] bArr = this.f24273u;
            if (bArr != null) {
                this.f24254b.closeSession(bArr);
                this.f24273u = null;
            }
        }
        if (aVar != null) {
            this.f24261i.b(aVar);
            if (this.f24261i.count(aVar) == 0) {
                aVar.m();
            }
        }
        this.f24256d.b(this, this.f24268p);
    }

    @Override
    public final DrmSession.DrmSessionException getError() {
        if (this.f24267o == 1) {
            return this.f24272t;
        }
        return null;
    }

    @Override
    public final int getState() {
        return this.f24267o;
    }

    public boolean o(byte[] bArr) {
        return Arrays.equals(this.f24273u, bArr);
    }

    @Override
    public Map queryKeyStatus() {
        byte[] bArr = this.f24273u;
        if (bArr == null) {
            return null;
        }
        return this.f24254b.queryKeyStatus(bArr);
    }

    public void w(int i10) {
        if (i10 != 2) {
            return;
        }
        v();
    }

    public void x() {
        if (A()) {
            m(true);
        }
    }

    public void y(Exception exc, boolean z10) {
        s(exc, z10 ? 1 : 3);
    }
}
