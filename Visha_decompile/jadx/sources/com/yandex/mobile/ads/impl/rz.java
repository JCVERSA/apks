package com.yandex.mobile.ads.impl;

import android.annotation.SuppressLint;
import android.media.NotProvisionedException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.Pair;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.media3.common.C;
import com.yandex.mobile.ads.impl.h40;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

@RequiresApi(18)
final class rz implements g40 {

    @Nullable
    public final List<f40.b> a;
    private final l60 b;
    private final a c;
    private final b d;
    private final int e;
    private final boolean f;
    private final boolean g;
    private final HashMap<String, String> h;
    private final rs<h40.a> i;
    private final ds0 j;
    private final mi1 k;
    final bw0 l;
    final UUID m;
    final e n;
    private int o;
    private int p;

    @Nullable
    private HandlerThread q;

    @Nullable
    private c r;

    @Nullable
    private fv s;

    @Nullable
    private g40.a t;

    @Nullable
    private byte[] u;
    private byte[] v;

    @Nullable
    private l60.a w;

    @Nullable
    private l60.d x;

    public interface a {
    }

    public interface b {
    }

    @SuppressLint({"HandlerLeak"})
    public class c extends Handler {

        @GuardedBy("this")
        private boolean a;

        public c(Looper looper) {
            super(looper);
        }

        @Override
        public final void handleMessage(Message message) {
            Object objA;
            d dVar = (d) message.obj;
            try {
                int i = message.what;
                if (i == 0) {
                    objA = ((zh0) rz.this.l).a((l60.d) dVar.c);
                } else {
                    if (i != 1) {
                        throw new RuntimeException();
                    }
                    rz rzVar = rz.this;
                    objA = ((zh0) rzVar.l).a(rzVar.m, (l60.a) dVar.c);
                }
            } catch (cw0 e) {
                boolean zA = a(message, e);
                objA = e;
                if (zA) {
                    return;
                }
            } catch (Exception e2) {
                et0.b("DefaultDrmSession", "Key/provisioning request produced an unexpected exception. Not retrying.", e2);
                objA = e2;
            }
            ds0 ds0Var = rz.this.j;
            long j = dVar.a;
            ds0Var.getClass();
            synchronized (this) {
                try {
                    if (!this.a) {
                        rz.this.n.obtainMessage(message.what, Pair.create(dVar.c, objA)).sendToTarget();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        private boolean a(Message message, cw0 cw0Var) {
            d dVar = (d) message.obj;
            if (!dVar.b) {
                return false;
            }
            int i = dVar.d + 1;
            dVar.d = i;
            if (i > rz.this.j.a(3)) {
                return false;
            }
            SystemClock.elapsedRealtime();
            SystemClock.elapsedRealtime();
            long jA = rz.this.j.a(new ds0.a(cw0Var.getCause() instanceof IOException ? (IOException) cw0Var.getCause() : new f(cw0Var.getCause()), dVar.d));
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
    }

    public static final class d {
        public final long a;
        public final boolean b;
        public final Object c;
        public int d;

        public d(long j, boolean z, long j2, Object obj) {
            this.a = j;
            this.b = z;
            this.c = obj;
        }
    }

    @SuppressLint({"HandlerLeak"})
    public class e extends Handler {
        public e(Looper looper) {
            super(looper);
        }

        @Override
        public final void handleMessage(Message message) {
            Pair pair = (Pair) message.obj;
            Object obj = pair.first;
            Object obj2 = pair.second;
            int i = message.what;
            if (i != 0) {
                if (i != 1) {
                    return;
                }
                rz.this.a(obj, obj2);
                return;
            }
            rz rzVar = rz.this;
            if (obj == rzVar.x) {
                if (rzVar.o == 2 || rzVar.a()) {
                    rzVar.x = null;
                    if (obj2 instanceof Exception) {
                        ((sz.f) rzVar.c).a((Exception) obj2, false);
                        return;
                    }
                    try {
                        rzVar.b.c((byte[]) obj2);
                        ((sz.f) rzVar.c).a();
                    } catch (Exception e) {
                        ((sz.f) rzVar.c).a(e, true);
                    }
                }
            }
        }
    }

    public static final class f extends IOException {
        public f(@Nullable Throwable th) {
            super(th);
        }
    }

    public rz(UUID uuid, l60 l60Var, a aVar, b bVar, @Nullable List<f40.b> list, int i, boolean z, boolean z2, @Nullable byte[] bArr, HashMap<String, String> map, bw0 bw0Var, Looper looper, ds0 ds0Var, mi1 mi1Var) {
        if (i == 1 || i == 3) {
            hg.a(bArr);
        }
        this.m = uuid;
        this.c = aVar;
        this.d = bVar;
        this.b = l60Var;
        this.e = i;
        this.f = z;
        this.g = z2;
        if (bArr != null) {
            this.v = bArr;
            this.a = null;
        } else {
            this.a = Collections.unmodifiableList((List) hg.a(list));
        }
        this.h = map;
        this.l = bw0Var;
        this.i = new rs<>();
        this.j = ds0Var;
        this.k = mi1Var;
        this.o = 2;
        this.n = new e(looper);
    }

    private void a(yr<h40.a> yrVar) {
        Iterator<h40.a> it = this.i.a().iterator();
        while (it.hasNext()) {
            yrVar.accept(it.next());
        }
    }

    @Override
    @Nullable
    public final fv getCryptoConfig() {
        return this.s;
    }

    @Override
    @Nullable
    public final g40.a getError() {
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

    @Override
    public final boolean playClearSamplesWithoutKeys() {
        return this.f;
    }

    @Override
    @Nullable
    public final Map<String, String> queryKeyStatus() {
        byte[] bArr = this.u;
        if (bArr == null) {
            return null;
        }
        return this.b.a(bArr);
    }

    @Override
    public final boolean requiresSecureDecoder(String str) {
        l60 l60Var = this.b;
        byte[] bArr = this.u;
        if (bArr != null) {
            return l60Var.a(str, bArr);
        }
        throw new IllegalStateException();
    }

    private boolean c() {
        if (a()) {
            return true;
        }
        try {
            byte[] bArrC = this.b.c();
            this.u = bArrC;
            this.b.a(bArrC, this.k);
            this.s = this.b.d(this.u);
            final int i = 3;
            this.o = 3;
            a(new yr() {
                @Override
                public final void accept(Object obj) {
                    ((h40.a) obj).a(i);
                }
            });
            this.u.getClass();
            return true;
        } catch (NotProvisionedException unused) {
            ((sz.f) this.c).a(this);
            return false;
        } catch (Exception e2) {
            a(1, e2);
            return false;
        }
    }

    @Override
    public final void b(@Nullable h40.a aVar) {
        if (this.p < 0) {
            et0.b("DefaultDrmSession", "Session reference count less than zero: " + this.p);
            this.p = 0;
        }
        if (aVar != null) {
            this.i.a(aVar);
        }
        int i = this.p + 1;
        this.p = i;
        if (i == 1) {
            if (this.o != 2) {
                throw new IllegalStateException();
            }
            HandlerThread handlerThread = new HandlerThread("ExoPlayer:DrmRequestHandler");
            this.q = handlerThread;
            handlerThread.start();
            this.r = new c(this.q.getLooper());
            if (c()) {
                a(true);
            }
        } else if (aVar != null && a() && this.i.b(aVar) == 1) {
            aVar.a(this.o);
        }
        ((sz.g) this.d).b(this);
    }

    public final void d() {
        l60.d dVarA = this.b.a();
        this.x = dVarA;
        c cVar = this.r;
        int i = f92.a;
        dVarA.getClass();
        cVar.getClass();
        cVar.obtainMessage(0, new d(es0.a(), true, SystemClock.elapsedRealtime(), dVarA)).sendToTarget();
    }

    private void a(boolean z) {
        long jMin;
        if (this.g) {
            return;
        }
        byte[] bArr = this.u;
        int i = f92.a;
        int i2 = this.e;
        if (i2 != 0 && i2 != 1) {
            if (i2 != 2) {
                if (i2 != 3) {
                    return;
                }
                this.v.getClass();
                this.u.getClass();
                a(this.v, 3, z);
                return;
            }
            byte[] bArr2 = this.v;
            if (bArr2 != null) {
                try {
                    this.b.a(bArr, bArr2);
                } catch (Exception e2) {
                    a(1, e2);
                    return;
                }
            }
            a(bArr, 2, z);
            return;
        }
        byte[] bArr3 = this.v;
        if (bArr3 == null) {
            a(bArr, 1, z);
            return;
        }
        if (this.o != 4) {
            try {
                this.b.a(bArr, bArr3);
            } catch (Exception e3) {
                a(1, e3);
                return;
            }
        }
        if (rm.d.equals(this.m)) {
            Pair<Long, Long> pairA = gk2.a(this);
            pairA.getClass();
            jMin = Math.min(((Long) pairA.first).longValue(), ((Long) pairA.second).longValue());
        } else {
            jMin = Long.MAX_VALUE;
        }
        if (this.e == 0 && jMin <= 60) {
            et0.a("DefaultDrmSession", "Offline license has expired or will expire soon. Remaining seconds: " + jMin);
            a(bArr, 2, z);
            return;
        }
        if (jMin <= 0) {
            a(2, new ar0());
        } else {
            this.o = 4;
            a(new yr() {
                @Override
                public final void accept(Object obj) {
                    ((h40.a) obj).c();
                }
            });
        }
    }

    public final void b() {
        if (c()) {
            a(true);
        }
    }

    public final boolean a(byte[] bArr) {
        return Arrays.equals(this.u, bArr);
    }

    public boolean a() {
        int i = this.o;
        return i == 3 || i == 4;
    }

    public void a(Object obj, Object obj2) {
        if (obj == this.w && a()) {
            this.w = null;
            if (obj2 instanceof Exception) {
                Exception exc = (Exception) obj2;
                if (exc instanceof NotProvisionedException) {
                    ((sz.f) this.c).a(this);
                    return;
                } else {
                    a(2, exc);
                    return;
                }
            }
            try {
                byte[] bArr = (byte[]) obj2;
                if (this.e == 3) {
                    l60 l60Var = this.b;
                    byte[] bArr2 = this.v;
                    int i = f92.a;
                    l60Var.b(bArr2, bArr);
                    a(new yr() {
                        @Override
                        public final void accept(Object obj3) {
                            ((h40.a) obj3).b();
                        }
                    });
                    return;
                }
                byte[] bArrB = this.b.b(this.u, bArr);
                int i2 = this.e;
                if ((i2 == 2 || (i2 == 0 && this.v != null)) && bArrB != null && bArrB.length != 0) {
                    this.v = bArrB;
                }
                this.o = 4;
                a(new yr() {
                    @Override
                    public final void accept(Object obj3) {
                        ((h40.a) obj3).a();
                    }
                });
            } catch (Exception e2) {
                if (e2 instanceof NotProvisionedException) {
                    ((sz.f) this.c).a(this);
                } else {
                    a(1, e2);
                }
            }
        }
    }

    public final void a(int i) {
        if (i == 2 && this.e == 0 && this.o == 4) {
            int i2 = f92.a;
            a(false);
        }
    }

    public final void a(Exception exc, boolean z) {
        a(z ? 1 : 3, exc);
    }

    private void a(byte[] bArr, int i, boolean z) {
        try {
            l60.a aVarA = this.b.a(bArr, this.a, i, this.h);
            this.w = aVarA;
            c cVar = this.r;
            int i2 = f92.a;
            aVarA.getClass();
            cVar.getClass();
            cVar.obtainMessage(1, new d(es0.a(), z, SystemClock.elapsedRealtime(), aVarA)).sendToTarget();
        } catch (Exception e2) {
            if (e2 instanceof NotProvisionedException) {
                ((sz.f) this.c).a(this);
            } else {
                a(1, e2);
            }
        }
    }

    @Override
    public final void a(@Nullable h40.a aVar) {
        int i = this.p;
        if (i <= 0) {
            et0.b("DefaultDrmSession", "release() called on a session that's already fully released.");
            return;
        }
        int i2 = i - 1;
        this.p = i2;
        if (i2 == 0) {
            this.o = 0;
            e eVar = this.n;
            int i3 = f92.a;
            eVar.removeCallbacksAndMessages(null);
            c cVar = this.r;
            synchronized (cVar) {
                cVar.removeCallbacksAndMessages(null);
                cVar.a = true;
            }
            this.r = null;
            this.q.quit();
            this.q = null;
            this.s = null;
            this.t = null;
            this.w = null;
            this.x = null;
            byte[] bArr = this.u;
            if (bArr != null) {
                this.b.b(bArr);
                this.u = null;
            }
        }
        if (aVar != null) {
            this.i.c(aVar);
            if (this.i.b(aVar) == 0) {
                aVar.d();
            }
        }
        ((sz.g) this.d).a(this, this.p);
    }

    /* JADX WARN: Code duplicated, block: B:31:0x004c  */
    private void a(int i, final Exception exc) {
        int iB;
        int i2 = f92.a;
        if (i2 >= 21 && l40.a(exc)) {
            iB = l40.b(exc);
        } else if (i2 >= 23 && m40.a(exc)) {
            iB = 6006;
        } else if (i2 >= 18 && k40.b(exc)) {
            iB = 6002;
        } else if (i2 >= 18 && k40.a(exc)) {
            iB = 6007;
        } else if (exc instanceof l82) {
            iB = 6001;
        } else if (exc instanceof sz.d) {
            iB = 6003;
        } else if (exc instanceof ar0) {
            iB = 6008;
        } else if (i == 1) {
            iB = 6006;
        } else if (i == 2) {
            iB = 6004;
        } else {
            if (i != 3) {
                throw new IllegalArgumentException();
            }
            iB = 6002;
        }
        this.t = new g40.a(exc, iB);
        et0.a("DefaultDrmSession", "DRM session error", exc);
        a(new yr() {
            @Override
            public final void accept(Object obj) {
                ((h40.a) obj).a(exc);
            }
        });
        if (this.o != 4) {
            this.o = 1;
        }
    }
}
