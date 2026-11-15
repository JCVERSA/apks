package defpackage;

import android.content.Context;
import android.util.Log;
import com.transsion.onlinevideo.tiktok.ad.AdSlotRemoveReason;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class dja implements zia.c, aja {
    public static final b k = new b(null);
    public final bja b;
    public a c;
    public final zia d;
    public final ConcurrentHashMap e;
    public final ConcurrentHashMap.KeySetView f;
    public int g;
    public int h;
    public int i;
    public Context j;

    public interface a {
        void a(c74 c74Var);

        void e(List list, AdSlotRemoveReason adSlotRemoveReason);

        void f(int i, AdSlotRemoveReason adSlotRemoveReason);

        void q(int i);
    }

    public static final class b {
        public b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public b() {
        }
    }

    public static final class c implements c74 {
        public final AdSlotRemoveReason c;

        public c(AdSlotRemoveReason adSlotRemoveReason) {
            this.c = adSlotRemoveReason;
        }

        public final void a() {
            List listS0 = i81.S0(dja.this.r().g());
            if (listS0.isEmpty()) {
                return;
            }
            Iterator it = listS0.iterator();
            while (it.hasNext()) {
                int iIntValue = ((Number) it.next()).intValue();
                Log.i("TiktokFeedAdController", "clearAllCommittedSlots release " + iIntValue);
                rka rkaVar = (rka) dja.this.e.remove(Integer.valueOf(iIntValue));
                if (rkaVar != null) {
                    rkaVar.g();
                }
                dja.this.f.remove(Integer.valueOf(iIntValue));
                dja.this.r().D(iIntValue);
            }
            a aVarQ = dja.this.q();
            if (aVarQ != null) {
                aVarQ.e(listS0, this.c);
            }
        }

        @Override
        public Object invoke() {
            a();
            return zfb.a;
        }
    }

    public static final class d implements c74 {
        public final int c;

        public d(int i) {
            this.c = i;
        }

        public final void a() {
            if (dja.this.r().t(this.c)) {
                dja.this.D(this.c, AdSlotRemoveReason.MILESTONE_PASSED);
            }
        }

        @Override
        public Object invoke() {
            a();
            return zfb.a;
        }
    }

    public static final class e implements c74 {
        public final int c;
        public final rka d;
        public final int e;

        public e(int i, rka rkaVar, int i2) {
            this.c = i;
            this.d = rkaVar;
            this.e = i2;
        }

        public final void a() {
            if (dja.this.r().E() && !dja.this.r().t(this.c) && dja.this.r().d(this.c, dja.this.g, dja.this.r().h(dja.this.g))) {
                if (!this.d.f()) {
                    Log.i("TiktokFeedAdController", "maybeInsertIfNear isNotValid release " + this.e);
                    this.d.g();
                    dja.this.d.h(this.d);
                    return;
                }
                if (!dja.this.r().f(this.c, Integer.valueOf(this.e))) {
                    Log.i("TiktokFeedAdController", "maybeInsertIfNear release " + this.e);
                    this.d.g();
                    return;
                }
                this.d.h(this.c);
                dja.this.e.put(Integer.valueOf(this.c), this.d);
                dja.this.d.h(this.d);
                a aVarQ = dja.this.q();
                if (aVarQ != null) {
                    aVarQ.q(this.c);
                }
                Log.d("TiktokFeedAdController", "maybeInsertIfNear insert global=" + this.c + " milestone=" + this.e);
            }
        }

        @Override
        public Object invoke() {
            a();
            return zfb.a;
        }
    }

    public static final class f implements c74 {
        public final int c;
        public final AdSlotRemoveReason d;

        public f(int i, AdSlotRemoveReason adSlotRemoveReason) {
            this.c = i;
            this.d = adSlotRemoveReason;
        }

        public final void a() {
            dja.this.D(this.c, this.d);
        }

        @Override
        public Object invoke() {
            a();
            return zfb.a;
        }
    }

    public dja(bja bjaVar) {
        y45.j(bjaVar, "resolver");
        this.b = bjaVar;
        this.d = new zia(bjaVar, this);
        this.e = new ConcurrentHashMap();
        this.f = ConcurrentHashMap.newKeySet();
    }

    public final void A(Context context, int i, int i2, int i3) {
        y45.j(context, "context");
        F(context, i, i2, i3);
        if (this.b.E() && !v(context, i, i2, i3)) {
            this.d.i(context, i, i2);
            w(context, i, i2, i3);
        }
    }

    public final void B() {
        C();
        this.f.clear();
        this.b.B();
    }

    public final void C() {
        Log.i("TiktokFeedAdController", "releaseAllPrefetched");
        this.d.f();
        Iterator it = this.e.entrySet().iterator();
        while (it.hasNext()) {
            ((rka) ((Map.Entry) it.next()).getValue()).g();
        }
        this.e.clear();
    }

    public final boolean D(int i, AdSlotRemoveReason adSlotRemoveReason) {
        Log.i("TiktokFeedAdController", "removeCommittedSlotInternal release " + i + " reason=" + adSlotRemoveReason);
        Integer numU = this.b.u(i);
        boolean zA = w7.a(adSlotRemoveReason);
        rka rkaVar = (rka) this.e.remove(Integer.valueOf(i));
        if (rkaVar != null) {
            rkaVar.g();
        }
        this.f.remove(Integer.valueOf(i));
        if (!this.b.D(i)) {
            return false;
        }
        a aVar = this.c;
        if (aVar != null) {
            aVar.f(i, adSlotRemoveReason);
        }
        Log.d("TiktokFeedAdController", "removeCommittedSlotInternal pos=" + i + " reason=" + adSlotRemoveReason);
        if (!zA || numU == null || !this.b.y(numU.intValue())) {
            return true;
        }
        G(i);
        return true;
    }

    public final rka E(int i) {
        rka rkaVarJ = this.d.j();
        if (rkaVarJ == null || rkaVarJ.c() != i) {
            return null;
        }
        return rkaVarJ;
    }

    public final void F(Context context, int i, int i2, int i3) {
        this.j = context.getApplicationContext();
        this.i = i;
        this.g = i2;
        this.h = i3;
    }

    public final void G(int i) {
        Context context = this.j;
        if (context != null && this.b.E()) {
            int iD = wn8.d(this.b.k(i) - 1, 0);
            F(context, iD, this.g, this.h);
            H(context, iD, this.g, this.h);
        }
    }

    public final void H(Context context, int i, int i2, int i3) {
        this.d.i(context, i, i2);
        w(context, i, i2, i3);
    }

    public final void I(a aVar) {
        this.c = aVar;
    }

    public final boolean J(int i, int i2) {
        rka rkaVarE = E(i2);
        if (rkaVarE == null) {
            return false;
        }
        if (!rkaVarE.f()) {
            Log.i("TiktokFeedAdController", "tryAttachPendingToBound release " + i);
            rkaVarE.g();
            this.d.h(rkaVarE);
            return false;
        }
        rkaVarE.h(i);
        this.e.put(Integer.valueOf(i), rkaVarE);
        this.d.h(rkaVarE);
        Log.d("TiktokFeedAdController", "tryAttachPendingToBound global=" + i + " milestone=" + i2);
        return true;
    }

    @Override
    public void a(int i) {
        Log.d("TiktokFeedAdController", "onPrefetchLoaded milestone=" + i + " cached, try insert if ready");
        Context context = this.j;
        if (context == null) {
            return;
        }
        w(context, this.i, this.g, this.b.h(this.g));
    }

    @Override
    public void b(int i, AdSlotRemoveReason adSlotRemoveReason) {
        y45.j(adSlotRemoveReason, "reason");
        Log.d("TiktokFeedAdController", "onPrefetchFailed milestone=" + i + " reason=" + adSlotRemoveReason + " (no slot insert)");
    }

    public final void c(Context context, int i, int i2, int i3, int i4) {
        this.d.g(i2);
        if (this.b.y(i2)) {
            H(context, i, i3, i4);
        }
    }

    public final void i(AdSlotRemoveReason adSlotRemoveReason) {
        y45.j(adSlotRemoveReason, "reason");
        a aVar = this.c;
        if (aVar != null) {
            aVar.a(new c(adSlotRemoveReason));
            return;
        }
        List listS0 = i81.S0(r().g());
        if (listS0.isEmpty()) {
            return;
        }
        Iterator it = listS0.iterator();
        while (it.hasNext()) {
            int iIntValue = ((Number) it.next()).intValue();
            Log.i("TiktokFeedAdController", "clearAllCommittedSlots release " + iIntValue);
            rka rkaVar = (rka) this.e.remove(Integer.valueOf(iIntValue));
            if (rkaVar != null) {
                rkaVar.g();
            }
            this.f.remove(Integer.valueOf(iIntValue));
            r().D(iIntValue);
        }
        a aVarQ = q();
        if (aVarQ != null) {
            aVarQ.e(listS0, adSlotRemoveReason);
        }
    }

    public final int j(int i) {
        return this.b.h(i);
    }

    public final int k(int i) {
        return this.b.i(i);
    }

    public final void l() {
        C();
        this.f.clear();
        this.d.k();
        this.b.e();
        this.j = null;
        this.c = null;
    }

    @Override
    public rka m(int i) {
        rka rkaVar = (rka) this.e.remove(Integer.valueOf(i));
        if (rkaVar == null) {
            return null;
        }
        if (rkaVar.f()) {
            rkaVar.h(i);
            rkaVar.i(true);
            return rkaVar;
        }
        Log.i("TiktokFeedAdController", "takePrefetchedAd release " + i);
        rkaVar.g();
        n(i, AdSlotRemoveReason.AD_EXPIRED);
        return null;
    }

    @Override
    public void n(int i, AdSlotRemoveReason adSlotRemoveReason) {
        y45.j(adSlotRemoveReason, "reason");
        a aVar = this.c;
        if (aVar != null) {
            aVar.a(new f(i, adSlotRemoveReason));
        } else {
            D(i, adSlotRemoveReason);
        }
    }

    @Override
    public boolean o(int i, rka rkaVar) {
        y45.j(rkaVar, "prefetched");
        if (!this.b.t(i)) {
            Log.i("TiktokFeedAdController", "stashPrefetchedAdOnViewDestroy isNotCommittedAdPosition release " + i);
            rkaVar.g();
            return false;
        }
        if (!rkaVar.f()) {
            Log.i("TiktokFeedAdController", "stashPrefetchedAdOnViewDestroy release " + i);
            rkaVar.g();
            n(i, AdSlotRemoveReason.AD_EXPIRED);
            return false;
        }
        rkaVar.h(i);
        rkaVar.i(false);
        this.e.put(Integer.valueOf(i), rkaVar);
        Log.d("TiktokFeedAdController", "stashPrefetchedAd pos=" + i + " milestone=" + rkaVar.c());
        return true;
    }

    @Override
    public void p(int i) {
        Integer numU;
        if (this.b.t(i) && this.f.add(Integer.valueOf(i)) && (numU = this.b.u(i)) != null) {
            this.b.x(numU.intValue());
            this.b.w();
            G(i);
            if (this.b.E()) {
                return;
            }
            i(AdSlotRemoveReason.DAILY_CAP_REACHED);
        }
    }

    public final a q() {
        return this.c;
    }

    public final bja r() {
        return this.b;
    }

    public final boolean s(int i) {
        return this.b.r(i);
    }

    public final boolean t(int i) {
        rka rkaVar = (rka) this.e.get(Integer.valueOf(i));
        if (rkaVar == null) {
            return false;
        }
        if (rkaVar.f()) {
            return true;
        }
        Log.i("TiktokFeedAdController", "hasReadyBoundAd release " + i);
        rka rkaVar2 = (rka) this.e.remove(Integer.valueOf(i));
        if (rkaVar2 != null) {
            rkaVar2.g();
        }
        return false;
    }

    public final boolean u(int i) {
        return this.b.t(i);
    }

    public final boolean v(Context context, int i, int i2, int i3) {
        boolean z = false;
        if (!this.b.E()) {
            return false;
        }
        int i4 = i + 1;
        while (true) {
            Integer numZ = this.b.z();
            if (numZ == null) {
                break;
            }
            int iIntValue = numZ.intValue();
            if (!this.b.s(i4, iIntValue)) {
                break;
            }
            int iO = this.b.o(iIntValue);
            this.d.g(iIntValue);
            if (!this.b.t(iO)) {
                if (!this.b.y(iIntValue)) {
                    break;
                }
                Log.d("TiktokFeedAdController", "maybeAbandonPassedMilestones skip uncommitted milestone=" + iIntValue);
                z = true;
            } else {
                Log.d("TiktokFeedAdController", "maybeAbandonPassedMilestones revoke committed pos=" + iO + " milestone=" + iIntValue);
                a aVar = this.c;
                if (aVar != null) {
                    aVar.a(new d(iO));
                } else if (r().t(iO)) {
                    D(iO, AdSlotRemoveReason.MILESTONE_PASSED);
                }
                return true;
            }
        }
        if (z) {
            H(context, i, i2, i3);
        }
        return z;
    }

    public final void w(Context context, int i, int i2, int i3) {
        Integer numZ;
        y45.j(context, "context");
        if (!this.b.E() || v(context, i, i2, i3) || (numZ = this.b.z()) == null) {
            return;
        }
        int iIntValue = numZ.intValue();
        int i4 = i + 1;
        if (i4 < iIntValue - 1) {
            Log.d("TiktokFeedAdController", "maybeInsertIfNear skip: not near enough effective=" + i4 + " milestone=" + iIntValue);
            return;
        }
        int iO = this.b.o(iIntValue);
        if (this.b.t(iO)) {
            Log.d("TiktokFeedAdController", "maybeInsertIfNear skip: already committed global=" + iO + " milestone=" + iIntValue);
            return;
        }
        rka rkaVarE = E(iIntValue);
        if (rkaVarE == null) {
            Log.d("TiktokFeedAdController", "maybeInsertIfNear skip: no pending milestone=" + iIntValue + ", retry prefetch");
            this.d.i(context, i, i2);
            return;
        }
        if (!rkaVarE.f()) {
            rkaVarE.g();
            this.d.h(rkaVarE);
            Log.d("TiktokFeedAdController", "maybeInsertIfNear skip: pending invalid milestone=" + iIntValue + ", retry prefetch");
            this.d.i(context, i, i2);
            return;
        }
        if (!this.b.d(iO, i2, i3)) {
            Log.d("TiktokFeedAdController", "maybeInsertIfNear skip: canInsertAt=false global=" + iO + " milestone=" + iIntValue + " videoCount=" + i2 + " itemCount=" + i3 + " effective=" + i4);
            return;
        }
        int iP = this.b.p(i);
        if (iO < iP) {
            Log.d("TiktokFeedAdController", "maybeInsertIfNear late insert: planned=" + iO + " current=" + iP + " milestone=" + iIntValue);
            rkaVarE.g();
            this.d.h(rkaVarE);
            c(context, i, iIntValue, i2, i3);
            return;
        }
        a aVar = this.c;
        if (aVar != null) {
            aVar.a(new e(iO, rkaVarE, iIntValue));
            return;
        }
        if (r().E() && !r().t(iO) && r().d(iO, this.g, r().h(this.g))) {
            if (!rkaVarE.f()) {
                Log.i("TiktokFeedAdController", "maybeInsertIfNear isNotValid release " + iIntValue);
                rkaVarE.g();
                this.d.h(rkaVarE);
                return;
            }
            if (!r().f(iO, numZ)) {
                Log.i("TiktokFeedAdController", "maybeInsertIfNear release " + iIntValue);
                rkaVarE.g();
                return;
            }
            rkaVarE.h(iO);
            this.e.put(Integer.valueOf(iO), rkaVarE);
            this.d.h(rkaVarE);
            a aVarQ = q();
            if (aVarQ != null) {
                aVarQ.q(iO);
            }
            Log.d("TiktokFeedAdController", "maybeInsertIfNear insert global=" + iO + " milestone=" + iIntValue);
        }
    }

    public final Integer x(int i) {
        return this.b.u(i);
    }

    public final boolean y(int i) {
        if (!this.b.t(i)) {
            return false;
        }
        if (t(i)) {
            return true;
        }
        if (this.f.contains(Integer.valueOf(i))) {
            Log.d("TiktokFeedAdController", "onAdPageSelected: displayed ad, keep slot for rebind pos=" + i);
            return true;
        }
        Integer numU = this.b.u(i);
        if (numU != null && J(i, numU.intValue())) {
            return true;
        }
        Log.w("TiktokFeedAdController", "onAdPageSelected: no ready ad, remove on arrival pos=" + i);
        n(i, AdSlotRemoveReason.LOAD_FAILED);
        return false;
    }

    public final void z(Context context, int i, int i2) {
        y45.j(context, "context");
        this.j = context.getApplicationContext();
        this.g = i;
        this.h = i2;
        if (i <= 0 || !this.b.E()) {
            return;
        }
        A(context, wn8.k(this.i, 0, i - 1), i, i2);
    }

    public dja(bja bjaVar, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new bja(null, 1, null) : bjaVar);
    }
}
