package com.google.android.exoplayer2.source.dash;

import android.os.Handler;
import android.os.Message;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.emsg.EventMessage;
import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.q1;
import com.google.android.exoplayer2.source.a0;
import com.google.android.exoplayer2.upstream.g;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import i9.d0;
import i9.e0;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
import x9.f;

public final class e implements Handler.Callback {

    private final com.google.android.exoplayer2.upstream.b f25223a;

    private final b f25224b;

    private z9.c f25228f;

    private long f25229g;

    private boolean f25230h;

    private boolean f25231i;

    private boolean f25232j;

    private final TreeMap f25227e = new TreeMap();

    private final Handler f25226d = p0.x(this);

    private final com.google.android.exoplayer2.metadata.emsg.a f25225c = new com.google.android.exoplayer2.metadata.emsg.a();

    private static final class a {

        public final long f25233a;

        public final long f25234b;

        public a(long j10, long j11) {
            this.f25233a = j10;
            this.f25234b = j11;
        }
    }

    public interface b {
        void a(long j10);

        void b();
    }

    public final class c implements e0 {

        private final a0 f25235a;

        private final q1 f25236b = new q1();

        private final com.google.android.exoplayer2.metadata.d f25237c = new com.google.android.exoplayer2.metadata.d();

        private long f25238d = C.TIME_UNSET;

        c(com.google.android.exoplayer2.upstream.b bVar) {
            this.f25235a = a0.l(bVar);
        }

        private com.google.android.exoplayer2.metadata.d g() {
            this.f25237c.b();
            if (this.f25235a.S(this.f25236b, this.f25237c, 0, false) != -4) {
                return null;
            }
            this.f25237c.n();
            return this.f25237c;
        }

        private void k(long j10, long j11) {
            e.this.f25226d.sendMessage(e.this.f25226d.obtainMessage(1, new a(j10, j11)));
        }

        private void l() {
            while (this.f25235a.K(false)) {
                com.google.android.exoplayer2.metadata.d dVarG = g();
                if (dVarG != null) {
                    long j10 = dVarG.f24204e;
                    Metadata metadataA = e.this.f25225c.a(dVarG);
                    if (metadataA != null) {
                        EventMessage eventMessage = (EventMessage) metadataA.get(0);
                        if (e.h(eventMessage.schemeIdUri, eventMessage.value)) {
                            m(j10, eventMessage);
                        }
                    }
                }
            }
            this.f25235a.s();
        }

        private void m(long j10, EventMessage eventMessage) {
            long jF = e.f(eventMessage);
            if (jF == C.TIME_UNSET) {
                return;
            }
            k(j10, jF);
        }

        @Override
        public int a(g gVar, int i10, boolean z10, int i11) {
            return this.f25235a.b(gVar, i10, z10);
        }

        @Override
        public int b(g gVar, int i10, boolean z10) {
            return d0.a(this, gVar, i10, z10);
        }

        @Override
        public void c(com.google.android.exoplayer2.util.d0 d0Var, int i10) {
            d0.b(this, d0Var, i10);
        }

        @Override
        public void d(p1 p1Var) {
            this.f25235a.d(p1Var);
        }

        @Override
        public void e(long j10, int i10, int i11, int i12, e0.a aVar) {
            this.f25235a.e(j10, i10, i11, i12, aVar);
            l();
        }

        @Override
        public void f(com.google.android.exoplayer2.util.d0 d0Var, int i10, int i11) {
            this.f25235a.c(d0Var, i10);
        }

        public boolean h(long j10) {
            return e.this.j(j10);
        }

        public void i(f fVar) {
            long j10 = this.f25238d;
            if (j10 == C.TIME_UNSET || fVar.f75191h > j10) {
                this.f25238d = fVar.f75191h;
            }
            e.this.m(fVar);
        }

        public boolean j(f fVar) {
            long j10 = this.f25238d;
            return e.this.n(j10 != C.TIME_UNSET && j10 < fVar.f75190g);
        }

        public void n() {
            this.f25235a.T();
        }
    }

    public e(z9.c cVar, b bVar, com.google.android.exoplayer2.upstream.b bVar2) {
        this.f25228f = cVar;
        this.f25224b = bVar;
        this.f25223a = bVar2;
    }

    private Map.Entry e(long j10) {
        return this.f25227e.ceilingEntry(Long.valueOf(j10));
    }

    public static long f(EventMessage eventMessage) {
        try {
            return p0.I0(p0.D(eventMessage.messageData));
        } catch (ParserException unused) {
            return C.TIME_UNSET;
        }
    }

    private void g(long j10, long j11) {
        Long l10 = (Long) this.f25227e.get(Long.valueOf(j11));
        if (l10 == null) {
            this.f25227e.put(Long.valueOf(j11), Long.valueOf(j10));
        } else if (l10.longValue() > j10) {
            this.f25227e.put(Long.valueOf(j11), Long.valueOf(j10));
        }
    }

    public static boolean h(String str, String str2) {
        return "urn:mpeg:dash:event:2012".equals(str) && ("1".equals(str2) || "2".equals(str2) || "3".equals(str2));
    }

    private void i() {
        if (this.f25230h) {
            this.f25231i = true;
            this.f25230h = false;
            this.f25224b.b();
        }
    }

    private void l() {
        this.f25224b.a(this.f25229g);
    }

    private void p() {
        Iterator it = this.f25227e.entrySet().iterator();
        while (it.hasNext()) {
            if (((Long) ((Map.Entry) it.next()).getKey()).longValue() < this.f25228f.f76646h) {
                it.remove();
            }
        }
    }

    @Override
    public boolean handleMessage(Message message) {
        if (this.f25232j) {
            return true;
        }
        if (message.what != 1) {
            return false;
        }
        a aVar = (a) message.obj;
        g(aVar.f25233a, aVar.f25234b);
        return true;
    }

    boolean j(long j10) {
        z9.c cVar = this.f25228f;
        boolean z10 = false;
        if (!cVar.f76642d) {
            return false;
        }
        if (this.f25231i) {
            return true;
        }
        Map.Entry entryE = e(cVar.f76646h);
        if (entryE != null && ((Long) entryE.getValue()).longValue() < j10) {
            this.f25229g = ((Long) entryE.getKey()).longValue();
            l();
            z10 = true;
        }
        if (z10) {
            i();
        }
        return z10;
    }

    public c k() {
        return new c(this.f25223a);
    }

    void m(f fVar) {
        this.f25230h = true;
    }

    boolean n(boolean z10) {
        if (!this.f25228f.f76642d) {
            return false;
        }
        if (this.f25231i) {
            return true;
        }
        if (!z10) {
            return false;
        }
        i();
        return true;
    }

    public void o() {
        this.f25232j = true;
        this.f25226d.removeCallbacksAndMessages(null);
    }

    public void q(z9.c cVar) {
        this.f25231i = false;
        this.f25229g = C.TIME_UNSET;
        this.f25228f = cVar;
        p();
    }
}
