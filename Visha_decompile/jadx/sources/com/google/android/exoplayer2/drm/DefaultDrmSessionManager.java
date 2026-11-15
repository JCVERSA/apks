package com.google.android.exoplayer2.drm;

import android.media.ResourceBusyException;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import androidx.media3.common.C;
import com.google.android.exoplayer2.k;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Sets;
import defpackage.blb;
import defpackage.c64;
import defpackage.dgb;
import defpackage.op5;
import defpackage.qp6;
import defpackage.ta8;
import defpackage.to0;
import defpackage.zi;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.UUID;

public class DefaultDrmSessionManager implements com.google.android.exoplayer2.drm.c {
    public final UUID c;
    public final com.google.android.exoplayer2.drm.g.f d;
    public final j e;
    public final HashMap f;
    public final boolean g;
    public final int[] h;
    public final boolean i;
    public final f j;
    public final com.google.android.exoplayer2.upstream.f k;
    public final g l;
    public final long m;
    public final List n;
    public final Set o;
    public final Set p;
    public int q;
    public com.google.android.exoplayer2.drm.g r;
    public DefaultDrmSession s;
    public DefaultDrmSession t;
    public Looper u;
    public Handler v;
    public int w;
    public byte[] x;
    public ta8 y;
    public volatile d z;

    public static final class MissingSchemeDataException extends Exception {
        private MissingSchemeDataException(UUID uuid) {
            super("Media does not support uuid: " + uuid);
        }
    }

    public static final class b {
        public boolean d;
        public boolean f;
        public final HashMap a = new HashMap();
        public UUID b = to0.d;
        public com.google.android.exoplayer2.drm.g.f c = h.d;
        public com.google.android.exoplayer2.upstream.f g = new com.google.android.exoplayer2.upstream.e();
        public int[] e = new int[0];
        public long h = 300000;

        public DefaultDrmSessionManager a(j jVar) {
            return new DefaultDrmSessionManager(this.b, this.c, jVar, this.a, this.d, this.e, this.f, this.g, this.h);
        }

        public b b(boolean z) {
            this.d = z;
            return this;
        }

        public b c(boolean z) {
            this.f = z;
            return this;
        }

        public b d(int... iArr) {
            for (int i : iArr) {
                boolean z = true;
                if (i != 2 && i != 1) {
                    z = false;
                }
                zi.a(z);
            }
            this.e = (int[]) iArr.clone();
            return this;
        }

        public b e(UUID uuid, com.google.android.exoplayer2.drm.g.f fVar) {
            this.b = (UUID) zi.e(uuid);
            this.c = (com.google.android.exoplayer2.drm.g.f) zi.e(fVar);
            return this;
        }
    }

    public class c implements com.google.android.exoplayer2.drm.g.c {
        public c() {
        }

        @Override
        public void a(com.google.android.exoplayer2.drm.g gVar, byte[] bArr, int i, int i2, byte[] bArr2) {
            ((d) zi.e(DefaultDrmSessionManager.this.z)).obtainMessage(i, bArr).sendToTarget();
        }
    }

    public class d extends Handler {
        public d(Looper looper) {
            super(looper);
        }

        @Override
        public void handleMessage(Message message) {
            byte[] bArr = (byte[]) message.obj;
            if (bArr == null) {
                return;
            }
            for (DefaultDrmSession defaultDrmSession : DefaultDrmSessionManager.this.n) {
                if (defaultDrmSession.l(bArr)) {
                    defaultDrmSession.t(message.what);
                    return;
                }
            }
        }
    }

    public class e implements com.google.android.exoplayer2.drm.c.b {
        public final com.google.android.exoplayer2.drm.b.a b;
        public DrmSession c;
        public boolean d;

        public e(com.google.android.exoplayer2.drm.b.a aVar) {
            this.b = aVar;
        }

        public void d(final k kVar) {
            ((Handler) zi.e(DefaultDrmSessionManager.this.v)).post(new Runnable() {
                @Override
                public final void run() {
                    this.b.e(kVar);
                }
            });
        }

        public final void e(k kVar) {
            if (DefaultDrmSessionManager.this.q == 0 || this.d) {
                return;
            }
            DefaultDrmSessionManager defaultDrmSessionManager = DefaultDrmSessionManager.this;
            this.c = defaultDrmSessionManager.s((Looper) zi.e(defaultDrmSessionManager.u), this.b, kVar, false);
            DefaultDrmSessionManager.this.o.add(this);
        }

        public final void f() {
            if (this.d) {
                return;
            }
            DrmSession drmSession = this.c;
            if (drmSession != null) {
                drmSession.a(this.b);
            }
            DefaultDrmSessionManager.this.o.remove(this);
            this.d = true;
        }

        @Override
        public void release() {
            blb.z0((Handler) zi.e(DefaultDrmSessionManager.this.v), new Runnable() {
                @Override
                public final void run() {
                    this.b.f();
                }
            });
        }
    }

    public class f implements DefaultDrmSession.a {
        public final Set a = new HashSet();
        public DefaultDrmSession b;

        public f(DefaultDrmSessionManager defaultDrmSessionManager) {
        }

        @Override
        public void a(DefaultDrmSession defaultDrmSession) {
            this.a.add(defaultDrmSession);
            if (this.b != null) {
                return;
            }
            this.b = defaultDrmSession;
            defaultDrmSession.z();
        }

        public void b(DefaultDrmSession defaultDrmSession) {
            this.a.remove(defaultDrmSession);
            if (this.b == defaultDrmSession) {
                this.b = null;
                if (this.a.isEmpty()) {
                    return;
                }
                DefaultDrmSession defaultDrmSession2 = (DefaultDrmSession) this.a.iterator().next();
                this.b = defaultDrmSession2;
                defaultDrmSession2.z();
            }
        }

        @Override
        public void onProvisionCompleted() {
            this.b = null;
            ImmutableList immutableListCopyOf = ImmutableList.copyOf((Collection) this.a);
            this.a.clear();
            dgb it = immutableListCopyOf.iterator();
            while (it.hasNext()) {
                ((DefaultDrmSession) it.next()).u();
            }
        }

        @Override
        public void onProvisionError(Exception exc, boolean z) {
            this.b = null;
            ImmutableList immutableListCopyOf = ImmutableList.copyOf((Collection) this.a);
            this.a.clear();
            dgb it = immutableListCopyOf.iterator();
            while (it.hasNext()) {
                ((DefaultDrmSession) it.next()).v(exc, z);
            }
        }
    }

    public class g implements DefaultDrmSession.b {
        public g() {
        }

        @Override
        public void a(final DefaultDrmSession defaultDrmSession, int i) {
            if (i == 1 && DefaultDrmSessionManager.this.q > 0 && DefaultDrmSessionManager.this.m != C.TIME_UNSET) {
                DefaultDrmSessionManager.this.p.add(defaultDrmSession);
                ((Handler) zi.e(DefaultDrmSessionManager.this.v)).postAtTime(new Runnable() {
                    @Override
                    public final void run() {
                        defaultDrmSession.a(null);
                    }
                }, defaultDrmSession, SystemClock.uptimeMillis() + DefaultDrmSessionManager.this.m);
            } else if (i == 0) {
                DefaultDrmSessionManager.this.n.remove(defaultDrmSession);
                if (DefaultDrmSessionManager.this.s == defaultDrmSession) {
                    DefaultDrmSessionManager.this.s = null;
                }
                if (DefaultDrmSessionManager.this.t == defaultDrmSession) {
                    DefaultDrmSessionManager.this.t = null;
                }
                DefaultDrmSessionManager.this.j.b(defaultDrmSession);
                if (DefaultDrmSessionManager.this.m != C.TIME_UNSET) {
                    ((Handler) zi.e(DefaultDrmSessionManager.this.v)).removeCallbacksAndMessages(defaultDrmSession);
                    DefaultDrmSessionManager.this.p.remove(defaultDrmSession);
                }
            }
            DefaultDrmSessionManager.this.B();
        }

        @Override
        public void b(DefaultDrmSession defaultDrmSession, int i) {
            if (DefaultDrmSessionManager.this.m != C.TIME_UNSET) {
                DefaultDrmSessionManager.this.p.remove(defaultDrmSession);
                ((Handler) zi.e(DefaultDrmSessionManager.this.v)).removeCallbacksAndMessages(defaultDrmSession);
            }
        }
    }

    public static boolean t(DrmSession drmSession) {
        return drmSession.getState() == 1 && (blb.a < 19 || (((DrmSession.DrmSessionException) zi.e(drmSession.getError())).getCause() instanceof ResourceBusyException));
    }

    public static List x(DrmInitData drmInitData, UUID uuid, boolean z) {
        ArrayList arrayList = new ArrayList(drmInitData.schemeDataCount);
        for (int i = 0; i < drmInitData.schemeDataCount; i++) {
            DrmInitData.SchemeData schemeData = drmInitData.get(i);
            if ((schemeData.matches(uuid) || (to0.c.equals(uuid) && schemeData.matches(to0.b))) && (schemeData.data != null || z)) {
                arrayList.add(schemeData);
            }
        }
        return arrayList;
    }

    public final void A(Looper looper) {
        if (this.z == null) {
            this.z = new d(looper);
        }
    }

    public final void B() {
        if (this.r != null && this.q == 0 && this.n.isEmpty() && this.o.isEmpty()) {
            ((com.google.android.exoplayer2.drm.g) zi.e(this.r)).release();
            this.r = null;
        }
    }

    public final void C() {
        dgb it = ImmutableSet.copyOf((Collection) this.p).iterator();
        while (it.hasNext()) {
            ((DrmSession) it.next()).a(null);
        }
    }

    public final void D() {
        dgb it = ImmutableSet.copyOf((Collection) this.o).iterator();
        while (it.hasNext()) {
            ((e) it.next()).release();
        }
    }

    public void E(int i, byte[] bArr) {
        zi.g(this.n.isEmpty());
        if (i == 1 || i == 3) {
            zi.e(bArr);
        }
        this.w = i;
        this.x = bArr;
    }

    public final void F(DrmSession drmSession, com.google.android.exoplayer2.drm.b.a aVar) {
        drmSession.a(aVar);
        if (this.m != C.TIME_UNSET) {
            drmSession.a(null);
        }
    }

    @Override
    public void a(Looper looper, ta8 ta8Var) {
        y(looper);
        this.y = ta8Var;
    }

    @Override
    public DrmSession b(com.google.android.exoplayer2.drm.b.a aVar, k kVar) {
        zi.g(this.q > 0);
        zi.i(this.u);
        return s(this.u, aVar, kVar, true);
    }

    @Override
    public com.google.android.exoplayer2.drm.c.b c(com.google.android.exoplayer2.drm.b.a aVar, k kVar) {
        zi.g(this.q > 0);
        zi.i(this.u);
        e eVar = new e(aVar);
        eVar.d(kVar);
        return eVar;
    }

    @Override
    public int d(k kVar) {
        int cryptoType = ((com.google.android.exoplayer2.drm.g) zi.e(this.r)).getCryptoType();
        DrmInitData drmInitData = kVar.p;
        if (drmInitData != null) {
            if (u(drmInitData)) {
                return cryptoType;
            }
            return 1;
        }
        if (blb.r0(this.h, qp6.f(kVar.m)) != -1) {
            return cryptoType;
        }
        return 0;
    }

    @Override
    public final void prepare() {
        int i = this.q;
        this.q = i + 1;
        if (i != 0) {
            return;
        }
        if (this.r == null) {
            com.google.android.exoplayer2.drm.g gVarAcquireExoMediaDrm = this.d.acquireExoMediaDrm(this.c);
            this.r = gVarAcquireExoMediaDrm;
            gVarAcquireExoMediaDrm.setOnEventListener(new c());
        } else if (this.m != C.TIME_UNSET) {
            for (int i2 = 0; i2 < this.n.size(); i2++) {
                ((DefaultDrmSession) this.n.get(i2)).c(null);
            }
        }
    }

    @Override
    public final void release() {
        int i = this.q - 1;
        this.q = i;
        if (i != 0) {
            return;
        }
        if (this.m != C.TIME_UNSET) {
            ArrayList arrayList = new ArrayList(this.n);
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                ((DefaultDrmSession) arrayList.get(i2)).a(null);
            }
        }
        D();
        B();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final DrmSession s(Looper looper, com.google.android.exoplayer2.drm.b.a aVar, k kVar, boolean z) {
        List listX;
        A(looper);
        DrmInitData drmInitData = kVar.p;
        if (drmInitData == null) {
            return z(qp6.f(kVar.m), z);
        }
        DefaultDrmSession defaultDrmSessionW = null;
        Object[] objArr = 0;
        if (this.x == null) {
            listX = x((DrmInitData) zi.e(drmInitData), this.c, false);
            if (listX.isEmpty()) {
                MissingSchemeDataException missingSchemeDataException = new MissingSchemeDataException(this.c);
                op5.d("DefaultDrmSessionMgr", "DRM error", missingSchemeDataException);
                if (aVar != null) {
                    aVar.l(missingSchemeDataException);
                }
                return new com.google.android.exoplayer2.drm.f(new DrmSession.DrmSessionException(missingSchemeDataException, 6003));
            }
        } else {
            listX = null;
        }
        if (this.g) {
            for (DefaultDrmSession defaultDrmSession : this.n) {
                if (blb.c(defaultDrmSession.a, listX)) {
                    defaultDrmSessionW = defaultDrmSession;
                    break;
                }
            }
        } else {
            defaultDrmSessionW = this.t;
        }
        if (defaultDrmSessionW == null) {
            defaultDrmSessionW = w(listX, false, aVar, z);
            if (!this.g) {
                this.t = defaultDrmSessionW;
            }
            this.n.add(defaultDrmSessionW);
        } else {
            defaultDrmSessionW.c(aVar);
        }
        return defaultDrmSessionW;
    }

    public final boolean u(DrmInitData drmInitData) {
        if (this.x != null) {
            return true;
        }
        if (x(drmInitData, this.c, true).isEmpty()) {
            if (drmInitData.schemeDataCount != 1 || !drmInitData.get(0).matches(to0.b)) {
                return false;
            }
            op5.i("DefaultDrmSessionMgr", "DrmInitData only contains common PSSH SchemeData. Assuming support for: " + this.c);
        }
        String str = drmInitData.schemeType;
        if (str == null || C.CENC_TYPE_cenc.equals(str)) {
            return true;
        }
        if (C.CENC_TYPE_cbcs.equals(str)) {
            return blb.a >= 25;
        }
        return (C.CENC_TYPE_cbc1.equals(str) || C.CENC_TYPE_cens.equals(str)) ? false : true;
    }

    public final DefaultDrmSession v(List list, boolean z, com.google.android.exoplayer2.drm.b.a aVar) {
        zi.e(this.r);
        DefaultDrmSession defaultDrmSession = new DefaultDrmSession(this.c, this.r, this.j, this.l, list, this.w, this.i | z, z, this.x, this.f, this.e, (Looper) zi.e(this.u), this.k, (ta8) zi.e(this.y));
        defaultDrmSession.c(aVar);
        if (this.m != C.TIME_UNSET) {
            defaultDrmSession.c(null);
        }
        return defaultDrmSession;
    }

    public final DefaultDrmSession w(List list, boolean z, com.google.android.exoplayer2.drm.b.a aVar, boolean z2) {
        DefaultDrmSession defaultDrmSessionV = v(list, z, aVar);
        if (t(defaultDrmSessionV) && !this.p.isEmpty()) {
            C();
            F(defaultDrmSessionV, aVar);
            defaultDrmSessionV = v(list, z, aVar);
        }
        if (!t(defaultDrmSessionV) || !z2 || this.o.isEmpty()) {
            return defaultDrmSessionV;
        }
        D();
        if (!this.p.isEmpty()) {
            C();
        }
        F(defaultDrmSessionV, aVar);
        return v(list, z, aVar);
    }

    public final synchronized void y(Looper looper) {
        try {
            Looper looper2 = this.u;
            if (looper2 == null) {
                this.u = looper;
                this.v = new Handler(looper);
            } else {
                zi.g(looper2 == looper);
                zi.e(this.v);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final DrmSession z(int i, boolean z) {
        com.google.android.exoplayer2.drm.g gVar = (com.google.android.exoplayer2.drm.g) zi.e(this.r);
        if ((gVar.getCryptoType() == 2 && c64.d) || blb.r0(this.h, i) == -1 || gVar.getCryptoType() == 1) {
            return null;
        }
        DefaultDrmSession defaultDrmSession = this.s;
        if (defaultDrmSession == null) {
            DefaultDrmSession defaultDrmSessionW = w(ImmutableList.of(), true, null, z);
            this.n.add(defaultDrmSessionW);
            this.s = defaultDrmSessionW;
        } else {
            defaultDrmSession.c(null);
        }
        return this.s;
    }

    public DefaultDrmSessionManager(UUID uuid, com.google.android.exoplayer2.drm.g.f fVar, j jVar, HashMap map, boolean z, int[] iArr, boolean z2, com.google.android.exoplayer2.upstream.f fVar2, long j) {
        zi.e(uuid);
        zi.b(!to0.b.equals(uuid), "Use C.CLEARKEY_UUID instead");
        this.c = uuid;
        this.d = fVar;
        this.e = jVar;
        this.f = map;
        this.g = z;
        this.h = iArr;
        this.i = z2;
        this.k = fVar2;
        this.j = new f(this);
        this.l = new g();
        this.w = 0;
        this.n = new ArrayList();
        this.o = Sets.i();
        this.p = Sets.i();
        this.m = j;
    }
}
