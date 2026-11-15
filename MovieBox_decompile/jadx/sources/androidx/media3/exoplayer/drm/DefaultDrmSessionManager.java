package androidx.media3.exoplayer.drm;

import android.media.ResourceBusyException;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.util.a1;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Sets;
import com.google.common.collect.r4;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.UUID;
import x1.f4;

public class DefaultDrmSessionManager implements t {

    private final UUID f11208b;

    private final b0.c f11209c;

    private final m0 f11210d;

    private final HashMap f11211e;

    private final boolean f11212f;

    private final int[] f11213g;

    private final boolean f11214h;

    private final f f11215i;

    private final androidx.media3.exoplayer.upstream.m f11216j;

    private final g f11217k;

    private final long f11218l;

    private final List f11219m;

    private final Set f11220n;

    private final Set f11221o;

    private int f11222p;

    private b0 f11223q;

    private DefaultDrmSession f11224r;

    private DefaultDrmSession f11225s;

    private Looper f11226t;

    private Handler f11227u;

    private int f11228v;

    private byte[] f11229w;

    private f4 f11230x;

    volatile d f11231y;

    public static final class MissingSchemeDataException extends Exception {
        private MissingSchemeDataException(UUID uuid) {
            super("Media does not support uuid: " + uuid);
        }
    }

    public static final class b {

        private boolean f11235d;

        private final HashMap f11232a = new HashMap();

        private UUID f11233b = androidx.media3.common.h.f9672d;

        private b0.c f11234c = k0.f11273d;

        private int[] f11236e = new int[0];

        private boolean f11237f = true;

        private androidx.media3.exoplayer.upstream.m f11238g = new androidx.media3.exoplayer.upstream.k();

        private long f11239h = 300000;

        public DefaultDrmSessionManager a(m0 m0Var) {
            return new DefaultDrmSessionManager(this.f11233b, this.f11234c, m0Var, this.f11232a, this.f11235d, this.f11236e, this.f11237f, this.f11238g, this.f11239h);
        }

        public b b(androidx.media3.exoplayer.upstream.m mVar) {
            this.f11238g = (androidx.media3.exoplayer.upstream.m) androidx.media3.common.util.a.e(mVar);
            return this;
        }

        public b c(boolean z10) {
            this.f11235d = z10;
            return this;
        }

        public b d(boolean z10) {
            this.f11237f = z10;
            return this;
        }

        public b e(int... iArr) {
            for (int i10 : iArr) {
                boolean z10 = true;
                if (i10 != 2 && i10 != 1) {
                    z10 = false;
                }
                androidx.media3.common.util.a.a(z10);
            }
            this.f11236e = (int[]) iArr.clone();
            return this;
        }

        public b f(UUID uuid, b0.c cVar) {
            this.f11233b = (UUID) androidx.media3.common.util.a.e(uuid);
            this.f11234c = (b0.c) androidx.media3.common.util.a.e(cVar);
            return this;
        }
    }

    private class c implements b0.b {
        private c() {
        }

        @Override
        public void a(b0 b0Var, byte[] bArr, int i10, int i11, byte[] bArr2) {
            ((d) androidx.media3.common.util.a.e(DefaultDrmSessionManager.this.f11231y)).obtainMessage(i10, bArr).sendToTarget();
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
            for (DefaultDrmSession defaultDrmSession : DefaultDrmSessionManager.this.f11219m) {
                if (defaultDrmSession.r(bArr)) {
                    defaultDrmSession.z(message.what);
                    return;
                }
            }
        }
    }

    class e implements t.b {

        private final r.a f11242b;

        private DrmSession f11243c;

        private boolean f11244d;

        public e(r.a aVar) {
            this.f11242b = aVar;
        }

        public void d(androidx.media3.common.r rVar) {
            if (DefaultDrmSessionManager.this.f11222p == 0 || this.f11244d) {
                return;
            }
            DefaultDrmSessionManager defaultDrmSessionManager = DefaultDrmSessionManager.this;
            this.f11243c = defaultDrmSessionManager.s((Looper) androidx.media3.common.util.a.e(defaultDrmSessionManager.f11226t), this.f11242b, rVar, false);
            DefaultDrmSessionManager.this.f11220n.add(this);
        }

        public void e() {
            if (this.f11244d) {
                return;
            }
            DrmSession drmSession = this.f11243c;
            if (drmSession != null) {
                drmSession.f(this.f11242b);
            }
            DefaultDrmSessionManager.this.f11220n.remove(this);
            this.f11244d = true;
        }

        public void c(final androidx.media3.common.r rVar) {
            ((Handler) androidx.media3.common.util.a.e(DefaultDrmSessionManager.this.f11227u)).post(new Runnable() {
                @Override
                public final void run() {
                    this.f11263a.d(rVar);
                }
            });
        }

        @Override
        public void release() {
            a1.b1((Handler) androidx.media3.common.util.a.e(DefaultDrmSessionManager.this.f11227u), new Runnable() {
                @Override
                public final void run() {
                    this.f11265a.e();
                }
            });
        }
    }

    private class f implements DefaultDrmSession.a {

        private final Set f11246a = new HashSet();

        private DefaultDrmSession f11247b;

        public f() {
        }

        @Override
        public void a(Exception exc, boolean z10) {
            this.f11247b = null;
            ImmutableList immutableListCopyOf = ImmutableList.copyOf((Collection) this.f11246a);
            this.f11246a.clear();
            r4 it = immutableListCopyOf.iterator();
            while (it.hasNext()) {
                ((DefaultDrmSession) it.next()).B(exc, z10);
            }
        }

        @Override
        public void b(DefaultDrmSession defaultDrmSession) {
            this.f11246a.add(defaultDrmSession);
            if (this.f11247b != null) {
                return;
            }
            this.f11247b = defaultDrmSession;
            defaultDrmSession.F();
        }

        public void c(DefaultDrmSession defaultDrmSession) {
            this.f11246a.remove(defaultDrmSession);
            if (this.f11247b == defaultDrmSession) {
                this.f11247b = null;
                if (this.f11246a.isEmpty()) {
                    return;
                }
                DefaultDrmSession defaultDrmSession2 = (DefaultDrmSession) this.f11246a.iterator().next();
                this.f11247b = defaultDrmSession2;
                defaultDrmSession2.F();
            }
        }

        @Override
        public void onProvisionCompleted() {
            this.f11247b = null;
            ImmutableList immutableListCopyOf = ImmutableList.copyOf((Collection) this.f11246a);
            this.f11246a.clear();
            r4 it = immutableListCopyOf.iterator();
            while (it.hasNext()) {
                ((DefaultDrmSession) it.next()).A();
            }
        }
    }

    class g implements DefaultDrmSession.b {
        private g() {
        }

        @Override
        public void a(DefaultDrmSession defaultDrmSession, int i10) {
            if (DefaultDrmSessionManager.this.f11218l != C.TIME_UNSET) {
                DefaultDrmSessionManager.this.f11221o.remove(defaultDrmSession);
                ((Handler) androidx.media3.common.util.a.e(DefaultDrmSessionManager.this.f11227u)).removeCallbacksAndMessages(defaultDrmSession);
            }
        }

        @Override
        public void b(final DefaultDrmSession defaultDrmSession, int i10) {
            if (i10 == 1 && DefaultDrmSessionManager.this.f11222p > 0 && DefaultDrmSessionManager.this.f11218l != C.TIME_UNSET) {
                DefaultDrmSessionManager.this.f11221o.add(defaultDrmSession);
                ((Handler) androidx.media3.common.util.a.e(DefaultDrmSessionManager.this.f11227u)).postAtTime(new Runnable() {
                    @Override
                    public final void run() {
                        defaultDrmSession.f(null);
                    }
                }, defaultDrmSession, SystemClock.uptimeMillis() + DefaultDrmSessionManager.this.f11218l);
            } else if (i10 == 0) {
                DefaultDrmSessionManager.this.f11219m.remove(defaultDrmSession);
                if (DefaultDrmSessionManager.this.f11224r == defaultDrmSession) {
                    DefaultDrmSessionManager.this.f11224r = null;
                }
                if (DefaultDrmSessionManager.this.f11225s == defaultDrmSession) {
                    DefaultDrmSessionManager.this.f11225s = null;
                }
                DefaultDrmSessionManager.this.f11215i.c(defaultDrmSession);
                if (DefaultDrmSessionManager.this.f11218l != C.TIME_UNSET) {
                    ((Handler) androidx.media3.common.util.a.e(DefaultDrmSessionManager.this.f11227u)).removeCallbacksAndMessages(defaultDrmSession);
                    DefaultDrmSessionManager.this.f11221o.remove(defaultDrmSession);
                }
            }
            DefaultDrmSessionManager.this.B();
        }
    }

    private void A(Looper looper) {
        if (this.f11231y == null) {
            this.f11231y = new d(looper);
        }
    }

    public void B() {
        if (this.f11223q != null && this.f11222p == 0 && this.f11219m.isEmpty() && this.f11220n.isEmpty()) {
            ((b0) androidx.media3.common.util.a.e(this.f11223q)).release();
            this.f11223q = null;
        }
    }

    private void C() {
        r4 it = ImmutableSet.copyOf((Collection) this.f11221o).iterator();
        while (it.hasNext()) {
            ((DrmSession) it.next()).f(null);
        }
    }

    private void D() {
        r4 it = ImmutableSet.copyOf((Collection) this.f11220n).iterator();
        while (it.hasNext()) {
            ((e) it.next()).release();
        }
    }

    private void F(DrmSession drmSession, r.a aVar) {
        drmSession.f(aVar);
        if (this.f11218l != C.TIME_UNSET) {
            drmSession.f(null);
        }
    }

    private void G(boolean z10) {
        if (z10 && this.f11226t == null) {
            androidx.media3.common.util.u.i("DefaultDrmSessionMgr", "DefaultDrmSessionManager accessed before setPlayer(), possibly on the wrong thread.", new IllegalStateException());
            return;
        }
        if (Thread.currentThread() != ((Looper) androidx.media3.common.util.a.e(this.f11226t)).getThread()) {
            androidx.media3.common.util.u.i("DefaultDrmSessionMgr", "DefaultDrmSessionManager accessed on the wrong thread.\nCurrent thread: " + Thread.currentThread().getName() + "\nExpected thread: " + this.f11226t.getThread().getName(), new IllegalStateException());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public DrmSession s(Looper looper, r.a aVar, androidx.media3.common.r rVar, boolean z10) {
        List listX;
        A(looper);
        DrmInitData drmInitData = rVar.f9853s;
        if (drmInitData == null) {
            return z(androidx.media3.common.y.k(rVar.f9849o), z10);
        }
        DefaultDrmSession defaultDrmSessionW = null;
        Object[] objArr = 0;
        if (this.f11229w == null) {
            listX = x((DrmInitData) androidx.media3.common.util.a.e(drmInitData), this.f11208b, false);
            if (listX.isEmpty()) {
                MissingSchemeDataException missingSchemeDataException = new MissingSchemeDataException(this.f11208b);
                androidx.media3.common.util.u.d("DefaultDrmSessionMgr", "DRM error", missingSchemeDataException);
                if (aVar != null) {
                    aVar.l(missingSchemeDataException);
                }
                return new z(new DrmSession.DrmSessionException(missingSchemeDataException, 6003));
            }
        } else {
            listX = null;
        }
        if (this.f11212f) {
            for (DefaultDrmSession defaultDrmSession : this.f11219m) {
                if (Objects.equals(defaultDrmSession.f11175a, listX)) {
                    defaultDrmSessionW = defaultDrmSession;
                    break;
                }
            }
        } else {
            defaultDrmSessionW = this.f11225s;
        }
        if (defaultDrmSessionW == null) {
            defaultDrmSessionW = w(listX, false, aVar, z10);
            if (!this.f11212f) {
                this.f11225s = defaultDrmSessionW;
            }
            this.f11219m.add(defaultDrmSessionW);
        } else {
            defaultDrmSessionW.e(aVar);
        }
        return defaultDrmSessionW;
    }

    private static boolean t(DrmSession drmSession) {
        if (drmSession.getState() != 1) {
            return false;
        }
        Throwable cause = ((DrmSession.DrmSessionException) androidx.media3.common.util.a.e(drmSession.getError())).getCause();
        return (cause instanceof ResourceBusyException) || x.e(cause);
    }

    private boolean u(DrmInitData drmInitData) {
        if (this.f11229w != null) {
            return true;
        }
        if (x(drmInitData, this.f11208b, true).isEmpty()) {
            if (drmInitData.schemeDataCount != 1 || !drmInitData.get(0).matches(androidx.media3.common.h.f9670b)) {
                return false;
            }
            androidx.media3.common.util.u.h("DefaultDrmSessionMgr", "DrmInitData only contains common PSSH SchemeData. Assuming support for: " + this.f11208b);
        }
        String str = drmInitData.schemeType;
        if (str == null || C.CENC_TYPE_cenc.equals(str)) {
            return true;
        }
        if (C.CENC_TYPE_cbcs.equals(str)) {
            return a1.f10038a >= 25;
        }
        return (C.CENC_TYPE_cbc1.equals(str) || C.CENC_TYPE_cens.equals(str)) ? false : true;
    }

    private DefaultDrmSession v(List list, boolean z10, r.a aVar) {
        androidx.media3.common.util.a.e(this.f11223q);
        DefaultDrmSession defaultDrmSession = new DefaultDrmSession(this.f11208b, this.f11223q, this.f11215i, this.f11217k, list, this.f11228v, this.f11214h | z10, z10, this.f11229w, this.f11211e, this.f11210d, (Looper) androidx.media3.common.util.a.e(this.f11226t), this.f11216j, (f4) androidx.media3.common.util.a.e(this.f11230x));
        defaultDrmSession.e(aVar);
        if (this.f11218l != C.TIME_UNSET) {
            defaultDrmSession.e(null);
        }
        return defaultDrmSession;
    }

    private DefaultDrmSession w(List list, boolean z10, r.a aVar, boolean z11) {
        DefaultDrmSession defaultDrmSessionV = v(list, z10, aVar);
        if (t(defaultDrmSessionV) && !this.f11221o.isEmpty()) {
            C();
            F(defaultDrmSessionV, aVar);
            defaultDrmSessionV = v(list, z10, aVar);
        }
        if (!t(defaultDrmSessionV) || !z11 || this.f11220n.isEmpty()) {
            return defaultDrmSessionV;
        }
        D();
        if (!this.f11221o.isEmpty()) {
            C();
        }
        F(defaultDrmSessionV, aVar);
        return v(list, z10, aVar);
    }

    private static List x(DrmInitData drmInitData, UUID uuid, boolean z10) {
        ArrayList arrayList = new ArrayList(drmInitData.schemeDataCount);
        for (int i10 = 0; i10 < drmInitData.schemeDataCount; i10++) {
            DrmInitData.SchemeData schemeData = drmInitData.get(i10);
            if ((schemeData.matches(uuid) || (androidx.media3.common.h.f9671c.equals(uuid) && schemeData.matches(androidx.media3.common.h.f9670b))) && (schemeData.data != null || z10)) {
                arrayList.add(schemeData);
            }
        }
        return arrayList;
    }

    private synchronized void y(Looper looper) {
        try {
            Looper looper2 = this.f11226t;
            if (looper2 == null) {
                this.f11226t = looper;
                this.f11227u = new Handler(looper);
            } else {
                androidx.media3.common.util.a.g(looper2 == looper);
                androidx.media3.common.util.a.e(this.f11227u);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private DrmSession z(int i10, boolean z10) {
        b0 b0Var = (b0) androidx.media3.common.util.a.e(this.f11223q);
        if ((b0Var.a() == 2 && c0.f11256d) || a1.O0(this.f11213g, i10) == -1 || b0Var.a() == 1) {
            return null;
        }
        DefaultDrmSession defaultDrmSession = this.f11224r;
        if (defaultDrmSession == null) {
            DefaultDrmSession defaultDrmSessionW = w(ImmutableList.of(), true, null, z10);
            this.f11219m.add(defaultDrmSessionW);
            this.f11224r = defaultDrmSessionW;
        } else {
            defaultDrmSession.e(null);
        }
        return this.f11224r;
    }

    public void E(int i10, byte[] bArr) {
        androidx.media3.common.util.a.g(this.f11219m.isEmpty());
        if (i10 == 1 || i10 == 3) {
            androidx.media3.common.util.a.e(bArr);
        }
        this.f11228v = i10;
        this.f11229w = bArr;
    }

    @Override
    public DrmSession a(r.a aVar, androidx.media3.common.r rVar) {
        G(false);
        androidx.media3.common.util.a.g(this.f11222p > 0);
        androidx.media3.common.util.a.i(this.f11226t);
        return s(this.f11226t, aVar, rVar, true);
    }

    @Override
    public int b(androidx.media3.common.r rVar) {
        G(false);
        int iA = ((b0) androidx.media3.common.util.a.e(this.f11223q)).a();
        DrmInitData drmInitData = rVar.f9853s;
        if (drmInitData != null) {
            if (u(drmInitData)) {
                return iA;
            }
            return 1;
        }
        if (a1.O0(this.f11213g, androidx.media3.common.y.k(rVar.f9849o)) != -1) {
            return iA;
        }
        return 0;
    }

    @Override
    public t.b c(r.a aVar, androidx.media3.common.r rVar) {
        androidx.media3.common.util.a.g(this.f11222p > 0);
        androidx.media3.common.util.a.i(this.f11226t);
        e eVar = new e(aVar);
        eVar.c(rVar);
        return eVar;
    }

    @Override
    public void d(Looper looper, f4 f4Var) {
        y(looper);
        this.f11230x = f4Var;
    }

    @Override
    public final void prepare() {
        G(true);
        int i10 = this.f11222p;
        this.f11222p = i10 + 1;
        if (i10 != 0) {
            return;
        }
        if (this.f11223q == null) {
            b0 b0VarA = this.f11209c.a(this.f11208b);
            this.f11223q = b0VarA;
            b0VarA.e(new c());
        } else if (this.f11218l != C.TIME_UNSET) {
            for (int i11 = 0; i11 < this.f11219m.size(); i11++) {
                ((DefaultDrmSession) this.f11219m.get(i11)).e(null);
            }
        }
    }

    @Override
    public final void release() {
        G(true);
        int i10 = this.f11222p - 1;
        this.f11222p = i10;
        if (i10 != 0) {
            return;
        }
        if (this.f11218l != C.TIME_UNSET) {
            ArrayList arrayList = new ArrayList(this.f11219m);
            for (int i11 = 0; i11 < arrayList.size(); i11++) {
                ((DefaultDrmSession) arrayList.get(i11)).f(null);
            }
        }
        D();
        B();
    }

    private DefaultDrmSessionManager(UUID uuid, b0.c cVar, m0 m0Var, HashMap map, boolean z10, int[] iArr, boolean z11, androidx.media3.exoplayer.upstream.m mVar, long j10) {
        androidx.media3.common.util.a.e(uuid);
        androidx.media3.common.util.a.b(!androidx.media3.common.h.f9670b.equals(uuid), "Use C.CLEARKEY_UUID instead");
        this.f11208b = uuid;
        this.f11209c = cVar;
        this.f11210d = m0Var;
        this.f11211e = map;
        this.f11212f = z10;
        this.f11213g = iArr;
        this.f11214h = z11;
        this.f11216j = mVar;
        this.f11215i = new f();
        this.f11217k = new g();
        this.f11228v = 0;
        this.f11219m = new ArrayList();
        this.f11220n = Sets.h();
        this.f11221o = Sets.h();
        this.f11218l = j10;
    }
}
