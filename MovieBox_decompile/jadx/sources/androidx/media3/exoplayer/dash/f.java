package androidx.media3.exoplayer.dash;

import android.os.Handler;
import android.os.Message;
import androidx.media3.common.ParserException;
import androidx.media3.common.j;
import androidx.media3.common.r;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.j0;
import androidx.media3.common.x;
import androidx.media3.exoplayer.s2;
import androidx.media3.exoplayer.source.e0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
import k2.r0;
import k2.s0;

public final class f implements Handler.Callback {

    private final androidx.media3.exoplayer.upstream.b f11157a;

    private final b f11158b;

    private z1.c f11162f;

    private long f11163g;

    private boolean f11164h;

    private boolean f11165i;

    private boolean f11166j;

    private final TreeMap f11161e = new TreeMap();

    private final Handler f11160d = a1.B(this);

    private final v2.b f11159c = new v2.b();

    private static final class a {

        public final long f11167a;

        public final long f11168b;

        public a(long j10, long j11) {
            this.f11167a = j10;
            this.f11168b = j11;
        }
    }

    public interface b {
        void a(long j10);

        void b();
    }

    public final class c implements s0 {

        private final e0 f11169a;

        private final s2 f11170b = new s2();

        private final t2.b f11171c = new t2.b();

        private long f11172d = C.TIME_UNSET;

        c(androidx.media3.exoplayer.upstream.b bVar) {
            this.f11169a = e0.m(bVar);
        }

        private t2.b h() {
            this.f11171c.clear();
            if (this.f11169a.V(this.f11170b, this.f11171c, 0, false) != -4) {
                return null;
            }
            this.f11171c.d();
            return this.f11171c;
        }

        private void l(long j10, long j11) {
            f.this.f11160d.sendMessage(f.this.f11160d.obtainMessage(1, new a(j10, j11)));
        }

        private void m() {
            while (this.f11169a.N(false)) {
                t2.b bVarH = h();
                if (bVarH != null) {
                    long j10 = bVarH.f10608e;
                    x xVarA = f.this.f11159c.a(bVarH);
                    if (xVarA != null) {
                        v2.a aVar = (v2.a) xVarA.d(0);
                        if (f.h(aVar.f73439a, aVar.f73440b)) {
                            n(j10, aVar);
                        }
                    }
                }
            }
            this.f11169a.t();
        }

        private void n(long j10, v2.a aVar) {
            long jF = f.f(aVar);
            if (jF == C.TIME_UNSET) {
                return;
            }
            l(j10, jF);
        }

        @Override
        public void a(j0 j0Var, int i10, int i11) {
            this.f11169a.c(j0Var, i10);
        }

        @Override
        public void b(long j10, int i10, int i11, int i12, s0.a aVar) {
            this.f11169a.b(j10, i10, i11, i12, aVar);
            m();
        }

        @Override
        public void c(j0 j0Var, int i10) {
            r0.c(this, j0Var, i10);
        }

        @Override
        public void d(r rVar) {
            this.f11169a.d(rVar);
        }

        @Override
        public int e(j jVar, int i10, boolean z10) {
            return r0.b(this, jVar, i10, z10);
        }

        @Override
        public void f(long j10) {
            r0.a(this, j10);
        }

        @Override
        public int g(j jVar, int i10, boolean z10, int i11) {
            return this.f11169a.e(jVar, i10, z10);
        }

        public boolean i(long j10) {
            return f.this.j(j10);
        }

        public void j(g2.e eVar) {
            long j10 = this.f11172d;
            if (j10 == C.TIME_UNSET || eVar.f60602h > j10) {
                this.f11172d = eVar.f60602h;
            }
            f.this.m(eVar);
        }

        public boolean k(g2.e eVar) {
            long j10 = this.f11172d;
            return f.this.n(j10 != C.TIME_UNSET && j10 < eVar.f60601g);
        }

        public void o() {
            this.f11169a.W();
        }
    }

    public f(z1.c cVar, b bVar, androidx.media3.exoplayer.upstream.b bVar2) {
        this.f11162f = cVar;
        this.f11158b = bVar;
        this.f11157a = bVar2;
    }

    private Map.Entry e(long j10) {
        return this.f11161e.ceilingEntry(Long.valueOf(j10));
    }

    public static long f(v2.a aVar) {
        try {
            return a1.Z0(a1.H(aVar.f73443e));
        } catch (ParserException unused) {
            return C.TIME_UNSET;
        }
    }

    private void g(long j10, long j11) {
        Long l10 = (Long) this.f11161e.get(Long.valueOf(j11));
        if (l10 == null) {
            this.f11161e.put(Long.valueOf(j11), Long.valueOf(j10));
        } else if (l10.longValue() > j10) {
            this.f11161e.put(Long.valueOf(j11), Long.valueOf(j10));
        }
    }

    public static boolean h(String str, String str2) {
        return "urn:mpeg:dash:event:2012".equals(str) && ("1".equals(str2) || "2".equals(str2) || "3".equals(str2));
    }

    private void i() {
        if (this.f11164h) {
            this.f11165i = true;
            this.f11164h = false;
            this.f11158b.b();
        }
    }

    private void l() {
        this.f11158b.a(this.f11163g);
    }

    private void p() {
        Iterator it = this.f11161e.entrySet().iterator();
        while (it.hasNext()) {
            if (((Long) ((Map.Entry) it.next()).getKey()).longValue() < this.f11162f.f76512h) {
                it.remove();
            }
        }
    }

    @Override
    public boolean handleMessage(Message message) {
        if (this.f11166j) {
            return true;
        }
        if (message.what != 1) {
            return false;
        }
        a aVar = (a) message.obj;
        g(aVar.f11167a, aVar.f11168b);
        return true;
    }

    boolean j(long j10) {
        z1.c cVar = this.f11162f;
        boolean z10 = false;
        if (!cVar.f76508d) {
            return false;
        }
        if (this.f11165i) {
            return true;
        }
        Map.Entry entryE = e(cVar.f76512h);
        if (entryE != null && ((Long) entryE.getValue()).longValue() < j10) {
            this.f11163g = ((Long) entryE.getKey()).longValue();
            l();
            z10 = true;
        }
        if (z10) {
            i();
        }
        return z10;
    }

    public c k() {
        return new c(this.f11157a);
    }

    void m(g2.e eVar) {
        this.f11164h = true;
    }

    boolean n(boolean z10) {
        if (!this.f11162f.f76508d) {
            return false;
        }
        if (this.f11165i) {
            return true;
        }
        if (!z10) {
            return false;
        }
        i();
        return true;
    }

    public void o() {
        this.f11166j = true;
        this.f11160d.removeCallbacksAndMessages(null);
    }

    public void q(z1.c cVar) {
        this.f11165i = false;
        this.f11163g = C.TIME_UNSET;
        this.f11162f = cVar;
        p();
    }
}
