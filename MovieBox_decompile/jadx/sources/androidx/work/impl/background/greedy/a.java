package androidx.work.impl.background.greedy;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import androidx.work.WorkInfo;
import androidx.work.impl.d0;
import androidx.work.impl.e;
import androidx.work.impl.s;
import androidx.work.impl.utils.p;
import androidx.work.impl.v;
import androidx.work.j;
import g4.c;
import g4.d;
import i4.n;
import j4.m;
import j4.u;
import j4.x;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class a implements s, c, e {

    private static final String f15182j = j.i("GreedyScheduler");

    private final Context f15183a;

    private final d0 f15184b;

    private final d f15185c;

    private DelayedWorkTracker f15187e;

    private boolean f15188f;

    Boolean f15191i;

    private final Set f15186d = new HashSet();

    private final v f15190h = new v();

    private final Object f15189g = new Object();

    public a(Context context, androidx.work.a aVar, n nVar, d0 d0Var) {
        this.f15183a = context;
        this.f15184b = d0Var;
        this.f15185c = new g4.e(nVar, this);
        this.f15187e = new DelayedWorkTracker(this, aVar.k());
    }

    private void g() {
        this.f15191i = Boolean.valueOf(p.b(this.f15183a, this.f15184b.m()));
    }

    private void h() {
        if (this.f15188f) {
            return;
        }
        this.f15184b.q().g(this);
        this.f15188f = true;
    }

    private void i(m mVar) {
        synchronized (this.f15189g) {
            try {
                for (u uVar : this.f15186d) {
                    if (x.a(uVar).equals(mVar)) {
                        j.e().a(f15182j, "Stopping tracking for " + mVar);
                        this.f15186d.remove(uVar);
                        this.f15185c.a(this.f15186d);
                        break;
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public void a(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            m mVarA = x.a((u) it.next());
            j.e().a(f15182j, "Constraints not met: Cancelling work ID " + mVarA);
            androidx.work.impl.u uVarB = this.f15190h.b(mVarA);
            if (uVarB != null) {
                this.f15184b.C(uVarB);
            }
        }
    }

    @Override
    public void b(String str) {
        if (this.f15191i == null) {
            g();
        }
        if (!this.f15191i.booleanValue()) {
            j.e().f(f15182j, "Ignoring schedule request in non-main process");
            return;
        }
        h();
        j.e().a(f15182j, "Cancelling work ID " + str);
        DelayedWorkTracker delayedWorkTracker = this.f15187e;
        if (delayedWorkTracker != null) {
            delayedWorkTracker.b(str);
        }
        Iterator it = this.f15190h.c(str).iterator();
        while (it.hasNext()) {
            this.f15184b.C((androidx.work.impl.u) it.next());
        }
    }

    @Override
    public void c(u... uVarArr) {
        if (this.f15191i == null) {
            g();
        }
        if (!this.f15191i.booleanValue()) {
            j.e().f(f15182j, "Ignoring schedule request in a secondary process");
            return;
        }
        h();
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        for (u uVar : uVarArr) {
            if (!this.f15190h.a(x.a(uVar))) {
                long jC = uVar.c();
                long jCurrentTimeMillis = System.currentTimeMillis();
                if (uVar.f62988b == WorkInfo.State.ENQUEUED) {
                    if (jCurrentTimeMillis < jC) {
                        DelayedWorkTracker delayedWorkTracker = this.f15187e;
                        if (delayedWorkTracker != null) {
                            delayedWorkTracker.a(uVar);
                        }
                    } else if (uVar.h()) {
                        int i10 = Build.VERSION.SDK_INT;
                        if (uVar.f62996j.h()) {
                            j.e().a(f15182j, "Ignoring " + uVar + ". Requires device idle.");
                        } else if (i10 < 24 || !uVar.f62996j.e()) {
                            hashSet.add(uVar);
                            hashSet2.add(uVar.f62987a);
                        } else {
                            j.e().a(f15182j, "Ignoring " + uVar + ". Requires ContentUri triggers.");
                        }
                    } else if (!this.f15190h.a(x.a(uVar))) {
                        j.e().a(f15182j, "Starting work for " + uVar.f62987a);
                        this.f15184b.z(this.f15190h.e(uVar));
                    }
                }
            }
        }
        synchronized (this.f15189g) {
            try {
                if (!hashSet.isEmpty()) {
                    j.e().a(f15182j, "Starting tracking for " + TextUtils.join(",", hashSet2));
                    this.f15186d.addAll(hashSet);
                    this.f15185c.a(this.f15186d);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public void l(m mVar, boolean z10) {
        this.f15190h.b(mVar);
        i(mVar);
    }

    @Override
    public boolean e() {
        return false;
    }

    @Override
    public void f(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            m mVarA = x.a((u) it.next());
            if (!this.f15190h.a(mVarA)) {
                j.e().a(f15182j, "Constraints met: Scheduling work ID " + mVarA);
                this.f15184b.z(this.f15190h.d(mVarA));
            }
        }
    }
}
