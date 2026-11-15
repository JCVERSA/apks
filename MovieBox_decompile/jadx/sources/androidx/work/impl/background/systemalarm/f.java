package androidx.work.impl.background.systemalarm;

import android.content.Context;
import android.os.PowerManager;
import androidx.work.impl.u;
import androidx.work.impl.utils.WorkTimer;
import androidx.work.impl.utils.s;
import androidx.work.j;
import i4.n;
import j4.m;
import j4.x;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;

public class f implements g4.c, WorkTimer.a {

    private static final String f15222m = j.i("DelayMetCommandHandler");

    private final Context f15223a;

    private final int f15224b;

    private final m f15225c;

    private final SystemAlarmDispatcher f15226d;

    private final g4.e f15227e;

    private final Object f15228f;

    private int f15229g;

    private final Executor f15230h;

    private final Executor f15231i;

    private PowerManager.WakeLock f15232j;

    private boolean f15233k;

    private final u f15234l;

    f(Context context, int i10, SystemAlarmDispatcher systemAlarmDispatcher, u uVar) {
        this.f15223a = context;
        this.f15224b = i10;
        this.f15226d = systemAlarmDispatcher;
        this.f15225c = uVar.a();
        this.f15234l = uVar;
        n nVarS = systemAlarmDispatcher.g().s();
        this.f15230h = systemAlarmDispatcher.f().b();
        this.f15231i = systemAlarmDispatcher.f().a();
        this.f15227e = new g4.e(nVarS, this);
        this.f15233k = false;
        this.f15229g = 0;
        this.f15228f = new Object();
    }

    private void e() {
        synchronized (this.f15228f) {
            try {
                this.f15227e.reset();
                this.f15226d.h().b(this.f15225c);
                PowerManager.WakeLock wakeLock = this.f15232j;
                if (wakeLock != null && wakeLock.isHeld()) {
                    j.e().a(f15222m, "Releasing wakelock " + this.f15232j + "for WorkSpec " + this.f15225c);
                    this.f15232j.release();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void i() {
        if (this.f15229g != 0) {
            j.e().a(f15222m, "Already started work for " + this.f15225c);
            return;
        }
        this.f15229g = 1;
        j.e().a(f15222m, "onAllConstraintsMet for " + this.f15225c);
        if (this.f15226d.e().p(this.f15234l)) {
            this.f15226d.h().a(this.f15225c, 600000L, this);
        } else {
            e();
        }
    }

    public void j() {
        String strB = this.f15225c.b();
        if (this.f15229g >= 2) {
            j.e().a(f15222m, "Already stopped work for " + strB);
            return;
        }
        this.f15229g = 2;
        j jVarE = j.e();
        String str = f15222m;
        jVarE.a(str, "Stopping work for WorkSpec " + strB);
        this.f15231i.execute(new SystemAlarmDispatcher.AddRunnable(this.f15226d, b.f(this.f15223a, this.f15225c), this.f15224b));
        if (!this.f15226d.e().k(this.f15225c.b())) {
            j.e().a(str, "Processor does not have WorkSpec " + strB + ". No need to reschedule");
            return;
        }
        j.e().a(str, "WorkSpec " + strB + " needs to be rescheduled");
        this.f15231i.execute(new SystemAlarmDispatcher.AddRunnable(this.f15226d, b.e(this.f15223a, this.f15225c), this.f15224b));
    }

    @Override
    public void a(List list) {
        this.f15230h.execute(new d(this));
    }

    @Override
    public void b(m mVar) {
        j.e().a(f15222m, "Exceeded time limits on execution for " + mVar);
        this.f15230h.execute(new d(this));
    }

    @Override
    public void f(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (x.a((j4.u) it.next()).equals(this.f15225c)) {
                this.f15230h.execute(new Runnable() {
                    @Override
                    public final void run() {
                        this.f15221a.i();
                    }
                });
                return;
            }
        }
    }

    void g() {
        String strB = this.f15225c.b();
        this.f15232j = s.b(this.f15223a, strB + " (" + this.f15224b + ")");
        j jVarE = j.e();
        String str = f15222m;
        jVarE.a(str, "Acquiring wakelock " + this.f15232j + "for WorkSpec " + strB);
        this.f15232j.acquire();
        j4.u uVarJ = this.f15226d.g().t().n0().j(strB);
        if (uVarJ == null) {
            this.f15230h.execute(new d(this));
            return;
        }
        boolean zH = uVarJ.h();
        this.f15233k = zH;
        if (zH) {
            this.f15227e.a(Collections.singletonList(uVarJ));
            return;
        }
        j.e().a(str, "No constraints for " + strB);
        f(Collections.singletonList(uVarJ));
    }

    void h(boolean z10) {
        j.e().a(f15222m, "onExecuted " + this.f15225c + ", " + z10);
        e();
        if (z10) {
            this.f15231i.execute(new SystemAlarmDispatcher.AddRunnable(this.f15226d, b.e(this.f15223a, this.f15225c), this.f15224b));
        }
        if (this.f15233k) {
            this.f15231i.execute(new SystemAlarmDispatcher.AddRunnable(this.f15226d, b.a(this.f15223a), this.f15224b));
        }
    }
}
