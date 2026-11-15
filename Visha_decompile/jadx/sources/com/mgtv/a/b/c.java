package com.mgtv.a.b;

import android.content.Context;
import com.mgmi.model.VASTFloatAd;
import com.mgmi.model.r;
import java.lang.ref.WeakReference;
import java.util.List;

public class c extends com.mgtv.a.b.a.a<VASTFloatAd> {
    protected int a;
    protected b b;
    private int o;
    private com.mgmi.g.a p;
    private com.mgmi.platform.view.a q;
    private a r;

    public interface a {
        void b(com.mgmi.platform.view.a aVar);

        void c(com.mgmi.platform.view.a aVar);

        void n();
    }

    public enum b {
        Idle,
        showing,
        Closed,
        Dead,
        hided
    }

    public c() {
        this("Corner");
    }

    private long B() {
        com.mgmi.platform.view.a aVar = this.q;
        if (aVar != null) {
            return aVar.s() == 9 ? this.q.u() : (long) this.q.t();
        }
        return 0L;
    }

    private void c(VASTFloatAd vASTFloatAd) {
        if (vASTFloatAd == null || !vASTFloatAd.isWaitRollDuration()) {
            return;
        }
        vASTFloatAd.setWaitRollDuration(false);
        com.mgtv.a.d.b.b bVar = this.k;
        if (bVar != null) {
            bVar.d();
        }
    }

    private boolean o() {
        com.mgmi.platform.view.a aVar = this.q;
        return aVar != null && 9 == aVar.a;
    }

    @Override
    public void d() {
        com.mgmi.platform.view.a aVar;
        if (this.k != null && (aVar = this.q) != null && !aVar.w() && !o() && !d(((com.mgtv.a.d.d.a) this.k).p())) {
            this.b = b.Dead;
            VASTFloatAd vASTFloatAdP = ((com.mgtv.a.d.d.a) this.k).p();
            if (vASTFloatAdP != null) {
                vASTFloatAdP.setWaitRollDuration(true);
                return;
            }
            return;
        }
        this.b = b.showing;
        super.d();
        a aVar2 = this.r;
        if (aVar2 != null) {
            aVar2.n();
        }
    }

    @Override
    public void f() {
        this.b = b.hided;
    }

    @Override
    public void f_() {
        b bVar = this.b;
        if (bVar == b.Closed || bVar == b.Dead) {
            return;
        }
        this.b = b.hided;
        super.f_();
    }

    @Override
    public void g() {
        VASTFloatAd vASTFloatAd;
        try {
            com.mgtv.a.d.b.b bVar = this.k;
            if (bVar != null && bVar.p() != null && (this.k.p() instanceof VASTFloatAd) && (vASTFloatAd = (VASTFloatAd) this.k.p()) != null && vASTFloatAd.getLoopStyle() && vASTFloatAd.getRolltime() > 0) {
                return;
            }
        } catch (Throwable unused) {
        }
        this.b = b.Dead;
    }

    @Override
    public void g_() {
        b bVar = this.b;
        if (bVar == b.Closed || bVar == b.Dead) {
            return;
        }
        this.b = b.showing;
        super.g_();
    }

    @Override
    public void k() {
        this.b = b.showing;
    }

    @Override
    public void l() {
        super.l();
        com.mgtv.a.a.a aVar = this.l;
        if (aVar != null) {
            com.mgtv.a.d.b.b bVar = this.k;
            if (bVar != null) {
                aVar.a(bVar.p());
            }
            this.l.b();
        }
    }

    @Override
    public boolean m() {
        com.mgtv.a.d.b.b bVar = this.k;
        return (bVar == null || !bVar.k() || this.b == b.Closed) ? false : true;
    }

    public boolean n() {
        com.mgtv.a.d.b.b bVar = this.k;
        if (bVar == null || !bVar.k()) {
            return false;
        }
        b bVar2 = this.b;
        return bVar2 == b.Dead || bVar2 == b.showing || bVar2 == b.hided;
    }

    public c(String str) {
        super(str);
        this.a = 0;
        this.o = 0;
    }

    @Override
    public void a(VASTFloatAd vASTFloatAd) {
        com.mgtv.a.d.b.b bVar;
        if (this.l == null || (bVar = this.k) == null || !(bVar.p() instanceof VASTFloatAd)) {
            return;
        }
        VASTFloatAd vASTFloatAd2 = (VASTFloatAd) this.k.p();
        if (vASTFloatAd2.getAdStyle() == 3) {
            this.l.a((Object) vASTFloatAd2);
            this.l.b();
        }
    }

    public void a(com.mgmi.g.a aVar) {
        this.p = aVar;
    }

    public void a(com.mgmi.platform.view.a aVar) {
        this.q = aVar;
    }

    @Override
    public boolean b(VASTFloatAd vASTFloatAd) {
        if (this.k == null) {
            return false;
        }
        this.b = b.Idle;
        if (vASTFloatAd != null) {
            this.c = vASTFloatAd.show_type;
        }
        com.mgtv.a.a.a aVar = this.l;
        if (aVar != null) {
            aVar.a((Object) vASTFloatAd);
        }
        q();
        return this.k.a(vASTFloatAd);
    }

    private boolean b(VASTFloatAd vASTFloatAd, long j) {
        boolean z = false;
        if (this.q == null || vASTFloatAd == null) {
            return false;
        }
        int duration = vASTFloatAd.getDuration();
        int i = duration / 2;
        if (i <= 2) {
            i = 1;
        }
        if (i >= 5) {
            i = duration - 3;
        }
        long jB = B();
        if (j >= jB && j <= ((long) i) + jB) {
            return true;
        }
        long rolltime = vASTFloatAd.getRolltime() + duration;
        if (rolltime == 0) {
            return false;
        }
        long j2 = j - jB;
        long j3 = j2 / rolltime;
        long j4 = j2 % rolltime;
        long j5 = jB + (j3 * rolltime);
        long j6 = i;
        boolean z2 = j <= j5 + j6 && j >= j5 - ((long) 0);
        if (z2 || j4 <= duration) {
            return z2;
        }
        long j7 = j5 + rolltime;
        if (j <= j6 + j7 && j >= j7 - ((long) 0)) {
            z = true;
        }
        return z;
    }

    private boolean d(VASTFloatAd vASTFloatAd) {
        com.mgmi.ads.api.a aVar;
        return (vASTFloatAd == null || vASTFloatAd.getRolltime() <= 0 || (aVar = this.n) == null || aVar == null || !a(vASTFloatAd, (long) (aVar.getContentCurrentPosition() / 1000))) ? false : true;
    }

    public void a(long j) {
        com.mgtv.a.d.b.b bVar = this.k;
        if (bVar == null || !(bVar.p() instanceof VASTFloatAd)) {
            return;
        }
        VASTFloatAd vASTFloatAd = (VASTFloatAd) this.k.p();
        com.mgmi.platform.view.a aVar = this.q;
        if (aVar != null && aVar.w() && !this.q.n()) {
            b bVar2 = this.b;
            b bVar3 = b.Closed;
            if (bVar2 != bVar3) {
                if ((j < B() || j > B() + ((long) vASTFloatAd.getDuration())) && this.q.p()) {
                    s();
                    this.b = bVar3;
                    a aVar2 = this.r;
                    if (aVar2 != null) {
                        aVar2.c(this.q);
                        return;
                    }
                    return;
                }
                return;
            }
        }
        if (vASTFloatAd == null || !vASTFloatAd.getLoopStyle()) {
            return;
        }
        b bVar4 = this.b;
        b bVar5 = b.showing;
        if (bVar4 == bVar5 && vASTFloatAd.getRolltime() > 0 && !a(vASTFloatAd, j)) {
            if (vASTFloatAd.getLoopStyle()) {
                this.a = (int) j;
                com.mgmi.platform.view.a aVar3 = this.q;
                if (aVar3 != null) {
                    aVar3.c += vASTFloatAd.getDuration();
                }
                this.b = b.Dead;
                com.mgtv.a.d.b.b bVar6 = this.k;
                if (bVar6 == null || !(bVar6 instanceof com.mgtv.a.d.d.a)) {
                    return;
                }
                ((com.mgtv.a.d.d.a) bVar6).i();
                return;
            }
            return;
        }
        if (this.b == b.Dead && vASTFloatAd.getRolltime() > 0 && b(vASTFloatAd, j)) {
            this.b = b.Idle;
            this.a = 0;
            if (vASTFloatAd.isWaitRollDuration()) {
                c(vASTFloatAd);
                return;
            } else {
                b();
                return;
            }
        }
        if (this.b != bVar5 || vASTFloatAd.getRolltime() > 0) {
            return;
        }
        if (j < B() || j > B() + ((long) vASTFloatAd.getDuration())) {
            s();
            this.b = b.Closed;
            a aVar4 = this.r;
            if (aVar4 != null) {
                aVar4.c(this.q);
            }
        }
    }

    public void b() {
        WeakReference<Context> weakReference = this.j;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        Context context = this.j.get();
        if (this.p == null) {
            this.p = new com.mgmi.g.a();
        }
        com.mgmi.ads.api.a.d dVarA = new com.mgmi.ads.api.a.c().b(this.p).b("ADS_ONLINE_VIDEO").a(this.q);
        this.o++;
        new com.mgmi.ads.api.a.e(context).a(dVarA, new com.mgmi.ads.api.a.e.a() {
            @Override
            public void a() {
            }

            @Override
            public void a(r rVar) {
                c.this.a(rVar);
            }
        }, "Conner");
    }

    private boolean a(VASTFloatAd vASTFloatAd, long j) {
        if (this.q == null || vASTFloatAd == null) {
            return false;
        }
        long jB = B();
        if (j < jB) {
            return false;
        }
        long duration = vASTFloatAd.getDuration() + vASTFloatAd.getRolltime();
        if (duration == 0) {
            return false;
        }
        long j2 = jB + (((j - jB) / duration) * duration);
        return j <= ((long) vASTFloatAd.getDuration()) + j2 && j >= j2;
    }

    public void a(r rVar) {
        List<VASTFloatAd> listD = rVar.d();
        if (listD == null || listD.isEmpty()) {
            return;
        }
        this.b = b.Idle;
        b(listD.get(0));
        d();
    }
}
