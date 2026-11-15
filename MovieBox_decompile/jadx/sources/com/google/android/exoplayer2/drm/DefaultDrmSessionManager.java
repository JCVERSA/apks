package com.google.android.exoplayer2.drm;

import android.media.ResourceBusyException;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.util.p0;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Sets;
import com.google.common.collect.r4;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import g9.u1;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.UUID;

public class DefaultDrmSessionManager implements u {

    private final UUID f24285c;

    private final c0.c f24286d;

    private final j0 f24287e;

    private final HashMap f24288f;

    private final boolean f24289g;

    private final int[] f24290h;

    private final boolean f24291i;

    private final f f24292j;

    private final com.google.android.exoplayer2.upstream.z f24293k;

    private final g f24294l;

    private final long f24295m;

    private final List f24296n;

    private final Set f24297o;

    private final Set f24298p;

    private int f24299q;

    private c0 f24300r;

    private DefaultDrmSession f24301s;

    private DefaultDrmSession f24302t;

    private Looper f24303u;

    private Handler f24304v;

    private int f24305w;

    private byte[] f24306x;

    private u1 f24307y;

    volatile d f24308z;

    public static final class MissingSchemeDataException extends Exception {
        private MissingSchemeDataException(UUID uuid) {
            super("Media does not support uuid: " + uuid);
        }
    }

    public static final class b {

        private boolean f24312d;

        private boolean f24314f;

        private final HashMap f24309a = new HashMap();

        private UUID f24310b = com.google.android.exoplayer2.l.f24515d;

        private c0.c f24311c = h0.f24343d;

        private com.google.android.exoplayer2.upstream.z f24315g = new com.google.android.exoplayer2.upstream.v();

        private int[] f24313e = new int[0];

        private long f24316h = 300000;

        public DefaultDrmSessionManager a(j0 j0Var) {
            return new DefaultDrmSessionManager(this.f24310b, this.f24311c, j0Var, this.f24309a, this.f24312d, this.f24313e, this.f24314f, this.f24315g, this.f24316h);
        }

        public b b(boolean z10) {
            this.f24312d = z10;
            return this;
        }

        public b c(boolean z10) {
            this.f24314f = z10;
            return this;
        }

        public b d(int... iArr) {
            for (int i10 : iArr) {
                boolean z10 = true;
                if (i10 != 2 && i10 != 1) {
                    z10 = false;
                }
                com.google.android.exoplayer2.util.a.a(z10);
            }
            this.f24313e = (int[]) iArr.clone();
            return this;
        }

        public b e(UUID uuid, c0.c cVar) {
            this.f24310b = (UUID) com.google.android.exoplayer2.util.a.e(uuid);
            this.f24311c = (c0.c) com.google.android.exoplayer2.util.a.e(cVar);
            return this;
        }
    }

    private class c implements c0.b {
        private c() {
        }

        @Override
        public void a(c0 c0Var, byte[] bArr, int i10, int i11, byte[] bArr2) {
            ((d) com.google.android.exoplayer2.util.a.e(DefaultDrmSessionManager.this.f24308z)).obtainMessage(i10, bArr).sendToTarget();
        }
    }

    private class d extends Handler {
        public d(Looper looper) {
            super(looper);
        }

        @Override
        public void handleMessage(Message message) {
            byte[] bArr = (byte[]) message.obj;
            if (bArr == null) {
                return;
            }
            for (DefaultDrmSession defaultDrmSession : DefaultDrmSessionManager.this.f24296n) {
                if (defaultDrmSession.o(bArr)) {
                    defaultDrmSession.w(message.what);
                    return;
                }
            }
        }
    }

    class e implements u.b {

        private final s.a f24319b;

        private DrmSession f24320c;

        private boolean f24321d;

        public e(s.a aVar) {
            this.f24319b = aVar;
        }

        public void d(p1 p1Var) {
            if (DefaultDrmSessionManager.this.f24299q == 0 || this.f24321d) {
                return;
            }
            DefaultDrmSessionManager defaultDrmSessionManager = DefaultDrmSessionManager.this;
            this.f24320c = defaultDrmSessionManager.s((Looper) com.google.android.exoplayer2.util.a.e(defaultDrmSessionManager.f24303u), this.f24319b, p1Var, false);
            DefaultDrmSessionManager.this.f24297o.add(this);
        }

        public void e() {
            if (this.f24321d) {
                return;
            }
            DrmSession drmSession = this.f24320c;
            if (drmSession != null) {
                drmSession.f(this.f24319b);
            }
            DefaultDrmSessionManager.this.f24297o.remove(this);
            this.f24321d = true;
        }

        public void c(final p1 p1Var) {
            ((Handler) com.google.android.exoplayer2.util.a.e(DefaultDrmSessionManager.this.f24304v)).post(new Runnable() {
                @Override
                public final void run() {
                    this.f24340a.d(p1Var);
                }
            });
        }

        @Override
        public void release() {
            p0.K0((Handler) com.google.android.exoplayer2.util.a.e(DefaultDrmSessionManager.this.f24304v), new Runnable() {
                @Override
                public final void run() {
                    this.f24342a.e();
                }
            });
        }
    }

    private class f implements DefaultDrmSession.a {

        private final Set f24323a = new HashSet();

        private DefaultDrmSession f24324b;

        public f(DefaultDrmSessionManager defaultDrmSessionManager) {
        }

        @Override
        public void a(Exception exc, boolean z10) {
            this.f24324b = null;
            ImmutableList immutableListCopyOf = ImmutableList.copyOf((Collection) this.f24323a);
            this.f24323a.clear();
            r4 it = immutableListCopyOf.iterator();
            while (it.hasNext()) {
                ((DefaultDrmSession) it.next()).y(exc, z10);
            }
        }

        @Override
        public void b(DefaultDrmSession defaultDrmSession) {
            this.f24323a.add(defaultDrmSession);
            if (this.f24324b != null) {
                return;
            }
            this.f24324b = defaultDrmSession;
            defaultDrmSession.C();
        }

        public void c(DefaultDrmSession defaultDrmSession) {
            this.f24323a.remove(defaultDrmSession);
            if (this.f24324b == defaultDrmSession) {
                this.f24324b = null;
                if (this.f24323a.isEmpty()) {
                    return;
                }
                DefaultDrmSession defaultDrmSession2 = (DefaultDrmSession) this.f24323a.iterator().next();
                this.f24324b = defaultDrmSession2;
                defaultDrmSession2.C();
            }
        }

        @Override
        public void onProvisionCompleted() {
            this.f24324b = null;
            ImmutableList immutableListCopyOf = ImmutableList.copyOf((Collection) this.f24323a);
            this.f24323a.clear();
            r4 it = immutableListCopyOf.iterator();
            while (it.hasNext()) {
                ((DefaultDrmSession) it.next()).x();
            }
        }
    }

    class g implements DefaultDrmSession.b {
        private g() {
        }

        @Override
        public void a(DefaultDrmSession defaultDrmSession, int i10) {
            if (DefaultDrmSessionManager.this.f24295m != C.TIME_UNSET) {
                DefaultDrmSessionManager.this.f24298p.remove(defaultDrmSession);
                ((Handler) com.google.android.exoplayer2.util.a.e(DefaultDrmSessionManager.this.f24304v)).removeCallbacksAndMessages(defaultDrmSession);
            }
        }

        @Override
        public void b(final DefaultDrmSession defaultDrmSession, int i10) {
            if (i10 == 1 && DefaultDrmSessionManager.this.f24299q > 0 && DefaultDrmSessionManager.this.f24295m != C.TIME_UNSET) {
                DefaultDrmSessionManager.this.f24298p.add(defaultDrmSession);
                ((Handler) com.google.android.exoplayer2.util.a.e(DefaultDrmSessionManager.this.f24304v)).postAtTime(new Runnable() {
                    @Override
                    public final void run() {
                        defaultDrmSession.f(null);
                    }
                }, defaultDrmSession, SystemClock.uptimeMillis() + DefaultDrmSessionManager.this.f24295m);
            } else if (i10 == 0) {
                DefaultDrmSessionManager.this.f24296n.remove(defaultDrmSession);
                if (DefaultDrmSessionManager.this.f24301s == defaultDrmSession) {
                    DefaultDrmSessionManager.this.f24301s = null;
                }
                if (DefaultDrmSessionManager.this.f24302t == defaultDrmSession) {
                    DefaultDrmSessionManager.this.f24302t = null;
                }
                DefaultDrmSessionManager.this.f24292j.c(defaultDrmSession);
                if (DefaultDrmSessionManager.this.f24295m != C.TIME_UNSET) {
                    ((Handler) com.google.android.exoplayer2.util.a.e(DefaultDrmSessionManager.this.f24304v)).removeCallbacksAndMessages(defaultDrmSession);
                    DefaultDrmSessionManager.this.f24298p.remove(defaultDrmSession);
                }
            }
            DefaultDrmSessionManager.this.B();
        }
    }

    private void A(Looper looper) {
        if (this.f24308z == null) {
            this.f24308z = new d(looper);
        }
    }

    public void B() {
        if (this.f24300r != null && this.f24299q == 0 && this.f24296n.isEmpty() && this.f24297o.isEmpty()) {
            ((c0) com.google.android.exoplayer2.util.a.e(this.f24300r)).release();
            this.f24300r = null;
        }
    }

    private void C() {
        r4 it = ImmutableSet.copyOf((Collection) this.f24298p).iterator();
        while (it.hasNext()) {
            ((DrmSession) it.next()).f(null);
        }
    }

    private void D() {
        r4 it = ImmutableSet.copyOf((Collection) this.f24297o).iterator();
        while (it.hasNext()) {
            ((e) it.next()).release();
        }
    }

    private void F(DrmSession drmSession, s.a aVar) {
        drmSession.f(aVar);
        if (this.f24295m != C.TIME_UNSET) {
            drmSession.f(null);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public DrmSession s(Looper looper, s.a aVar, p1 p1Var, boolean z10) {
        List listX;
        A(looper);
        DrmInitData drmInitData = p1Var.f24904o;
        if (drmInitData == null) {
            return z(com.google.android.exoplayer2.util.w.k(p1Var.f24901l), z10);
        }
        DefaultDrmSession defaultDrmSessionW = null;
        Object[] objArr = 0;
        if (this.f24306x == null) {
            listX = x((DrmInitData) com.google.android.exoplayer2.util.a.e(drmInitData), this.f24285c, false);
            if (listX.isEmpty()) {
                MissingSchemeDataException missingSchemeDataException = new MissingSchemeDataException(this.f24285c);
                com.google.android.exoplayer2.util.s.d("DefaultDrmSessionMgr", "DRM error", missingSchemeDataException);
                if (aVar != null) {
                    aVar.l(missingSchemeDataException);
                }
                return new a0(new DrmSession.DrmSessionException(missingSchemeDataException, 6003));
            }
        } else {
            listX = null;
        }
        if (this.f24289g) {
            for (DefaultDrmSession defaultDrmSession : this.f24296n) {
                if (p0.c(defaultDrmSession.f24253a, listX)) {
                    defaultDrmSessionW = defaultDrmSession;
                    break;
                }
            }
        } else {
            defaultDrmSessionW = this.f24302t;
        }
        if (defaultDrmSessionW == null) {
            defaultDrmSessionW = w(listX, false, aVar, z10);
            if (!this.f24289g) {
                this.f24302t = defaultDrmSessionW;
            }
            this.f24296n.add(defaultDrmSessionW);
        } else {
            defaultDrmSessionW.e(aVar);
        }
        return defaultDrmSessionW;
    }

    private static boolean t(DrmSession drmSession) {
        return drmSession.getState() == 1 && (p0.f26854a < 19 || (((DrmSession.DrmSessionException) com.google.android.exoplayer2.util.a.e(drmSession.getError())).getCause() instanceof ResourceBusyException));
    }

    private boolean u(DrmInitData drmInitData) {
        if (this.f24306x != null) {
            return true;
        }
        if (x(drmInitData, this.f24285c, true).isEmpty()) {
            if (drmInitData.schemeDataCount != 1 || !drmInitData.get(0).matches(com.google.android.exoplayer2.l.f24513b)) {
                return false;
            }
            com.google.android.exoplayer2.util.s.i("DefaultDrmSessionMgr", "DrmInitData only contains common PSSH SchemeData. Assuming support for: " + this.f24285c);
        }
        String str = drmInitData.schemeType;
        if (str == null || C.CENC_TYPE_cenc.equals(str)) {
            return true;
        }
        if (C.CENC_TYPE_cbcs.equals(str)) {
            return p0.f26854a >= 25;
        }
        return (C.CENC_TYPE_cbc1.equals(str) || C.CENC_TYPE_cens.equals(str)) ? false : true;
    }

    private DefaultDrmSession v(List list, boolean z10, s.a aVar) {
        com.google.android.exoplayer2.util.a.e(this.f24300r);
        DefaultDrmSession defaultDrmSession = new DefaultDrmSession(this.f24285c, this.f24300r, this.f24292j, this.f24294l, list, this.f24305w, this.f24291i | z10, z10, this.f24306x, this.f24288f, this.f24287e, (Looper) com.google.android.exoplayer2.util.a.e(this.f24303u), this.f24293k, (u1) com.google.android.exoplayer2.util.a.e(this.f24307y));
        defaultDrmSession.e(aVar);
        if (this.f24295m != C.TIME_UNSET) {
            defaultDrmSession.e(null);
        }
        return defaultDrmSession;
    }

    private DefaultDrmSession w(List list, boolean z10, s.a aVar, boolean z11) {
        DefaultDrmSession defaultDrmSessionV = v(list, z10, aVar);
        if (t(defaultDrmSessionV) && !this.f24298p.isEmpty()) {
            C();
            F(defaultDrmSessionV, aVar);
            defaultDrmSessionV = v(list, z10, aVar);
        }
        if (!t(defaultDrmSessionV) || !z11 || this.f24297o.isEmpty()) {
            return defaultDrmSessionV;
        }
        D();
        if (!this.f24298p.isEmpty()) {
            C();
        }
        F(defaultDrmSessionV, aVar);
        return v(list, z10, aVar);
    }

    private static List x(DrmInitData drmInitData, UUID uuid, boolean z10) {
        ArrayList arrayList = new ArrayList(drmInitData.schemeDataCount);
        for (int i10 = 0; i10 < drmInitData.schemeDataCount; i10++) {
            DrmInitData.SchemeData schemeData = drmInitData.get(i10);
            if ((schemeData.matches(uuid) || (com.google.android.exoplayer2.l.f24514c.equals(uuid) && schemeData.matches(com.google.android.exoplayer2.l.f24513b))) && (schemeData.data != null || z10)) {
                arrayList.add(schemeData);
            }
        }
        return arrayList;
    }

    private synchronized void y(Looper looper) {
        try {
            Looper looper2 = this.f24303u;
            if (looper2 == null) {
                this.f24303u = looper;
                this.f24304v = new Handler(looper);
            } else {
                com.google.android.exoplayer2.util.a.g(looper2 == looper);
                com.google.android.exoplayer2.util.a.e(this.f24304v);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private DrmSession z(int i10, boolean z10) {
        c0 c0Var = (c0) com.google.android.exoplayer2.util.a.e(this.f24300r);
        if ((c0Var.a() == 2 && d0.f24334d) || p0.z0(this.f24290h, i10) == -1 || c0Var.a() == 1) {
            return null;
        }
        DefaultDrmSession defaultDrmSession = this.f24301s;
        if (defaultDrmSession == null) {
            DefaultDrmSession defaultDrmSessionW = w(ImmutableList.of(), true, null, z10);
            this.f24296n.add(defaultDrmSessionW);
            this.f24301s = defaultDrmSessionW;
        } else {
            defaultDrmSession.e(null);
        }
        return this.f24301s;
    }

    public void E(int i10, byte[] bArr) {
        com.google.android.exoplayer2.util.a.g(this.f24296n.isEmpty());
        if (i10 == 1 || i10 == 3) {
            com.google.android.exoplayer2.util.a.e(bArr);
        }
        this.f24305w = i10;
        this.f24306x = bArr;
    }

    @Override
    public int a(p1 p1Var) {
        int iA = ((c0) com.google.android.exoplayer2.util.a.e(this.f24300r)).a();
        DrmInitData drmInitData = p1Var.f24904o;
        if (drmInitData != null) {
            if (u(drmInitData)) {
                return iA;
            }
            return 1;
        }
        if (p0.z0(this.f24290h, com.google.android.exoplayer2.util.w.k(p1Var.f24901l)) != -1) {
            return iA;
        }
        return 0;
    }

    @Override
    public void b(Looper looper, u1 u1Var) {
        y(looper);
        this.f24307y = u1Var;
    }

    @Override
    public DrmSession c(s.a aVar, p1 p1Var) {
        com.google.android.exoplayer2.util.a.g(this.f24299q > 0);
        com.google.android.exoplayer2.util.a.i(this.f24303u);
        return s(this.f24303u, aVar, p1Var, true);
    }

    @Override
    public u.b d(s.a aVar, p1 p1Var) {
        com.google.android.exoplayer2.util.a.g(this.f24299q > 0);
        com.google.android.exoplayer2.util.a.i(this.f24303u);
        e eVar = new e(aVar);
        eVar.c(p1Var);
        return eVar;
    }

    @Override
    public final void prepare() {
        int i10 = this.f24299q;
        this.f24299q = i10 + 1;
        if (i10 != 0) {
            return;
        }
        if (this.f24300r == null) {
            c0 c0VarA = this.f24286d.a(this.f24285c);
            this.f24300r = c0VarA;
            c0VarA.e(new c());
        } else if (this.f24295m != C.TIME_UNSET) {
            for (int i11 = 0; i11 < this.f24296n.size(); i11++) {
                ((DefaultDrmSession) this.f24296n.get(i11)).e(null);
            }
        }
    }

    @Override
    public final void release() {
        int i10 = this.f24299q - 1;
        this.f24299q = i10;
        if (i10 != 0) {
            return;
        }
        if (this.f24295m != C.TIME_UNSET) {
            ArrayList arrayList = new ArrayList(this.f24296n);
            for (int i11 = 0; i11 < arrayList.size(); i11++) {
                ((DefaultDrmSession) arrayList.get(i11)).f(null);
            }
        }
        D();
        B();
    }

    private DefaultDrmSessionManager(UUID uuid, c0.c cVar, j0 j0Var, HashMap map, boolean z10, int[] iArr, boolean z11, com.google.android.exoplayer2.upstream.z zVar, long j10) {
        com.google.android.exoplayer2.util.a.e(uuid);
        com.google.android.exoplayer2.util.a.b(!com.google.android.exoplayer2.l.f24513b.equals(uuid), "Use C.CLEARKEY_UUID instead");
        this.f24285c = uuid;
        this.f24286d = cVar;
        this.f24287e = j0Var;
        this.f24288f = map;
        this.f24289g = z10;
        this.f24290h = iArr;
        this.f24291i = z11;
        this.f24293k = zVar;
        this.f24292j = new f(this);
        this.f24294l = new g();
        this.f24305w = 0;
        this.f24296n = new ArrayList();
        this.f24297o = Sets.h();
        this.f24298p = Sets.h();
        this.f24295m = j10;
    }
}
