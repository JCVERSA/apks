package androidx.work.impl.background.systemalarm;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.v;
import androidx.work.j;
import j4.m;
import j4.u;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class b implements androidx.work.impl.e {

    private static final String f15210e = j.i("CommandHandler");

    private final Context f15211a;

    private final Map f15212b = new HashMap();

    private final Object f15213c = new Object();

    private final v f15214d;

    b(Context context, v vVar) {
        this.f15211a = context;
        this.f15214d = vVar;
    }

    static Intent a(Context context) {
        Intent intent = new Intent(context, (Class<?>) SystemAlarmService.class);
        intent.setAction("ACTION_CONSTRAINTS_CHANGED");
        return intent;
    }

    static Intent b(Context context, m mVar) {
        Intent intent = new Intent(context, (Class<?>) SystemAlarmService.class);
        intent.setAction("ACTION_DELAY_MET");
        return q(intent, mVar);
    }

    static Intent c(Context context, m mVar, boolean z10) {
        Intent intent = new Intent(context, (Class<?>) SystemAlarmService.class);
        intent.setAction("ACTION_EXECUTION_COMPLETED");
        intent.putExtra("KEY_NEEDS_RESCHEDULE", z10);
        return q(intent, mVar);
    }

    static Intent e(Context context, m mVar) {
        Intent intent = new Intent(context, (Class<?>) SystemAlarmService.class);
        intent.setAction("ACTION_SCHEDULE_WORK");
        return q(intent, mVar);
    }

    static Intent f(Context context, m mVar) {
        Intent intent = new Intent(context, (Class<?>) SystemAlarmService.class);
        intent.setAction("ACTION_STOP_WORK");
        return q(intent, mVar);
    }

    private void g(Intent intent, int i10, SystemAlarmDispatcher systemAlarmDispatcher) {
        j.e().a(f15210e, "Handling constraints changed " + intent);
        new c(this.f15211a, i10, systemAlarmDispatcher).a();
    }

    private void h(Intent intent, int i10, SystemAlarmDispatcher systemAlarmDispatcher) {
        synchronized (this.f15213c) {
            try {
                m mVarP = p(intent);
                j jVarE = j.e();
                String str = f15210e;
                jVarE.a(str, "Handing delay met for " + mVarP);
                if (this.f15212b.containsKey(mVarP)) {
                    j.e().a(str, "WorkSpec " + mVarP + " is is already being handled for ACTION_DELAY_MET");
                } else {
                    f fVar = new f(this.f15211a, i10, systemAlarmDispatcher, this.f15214d.d(mVarP));
                    this.f15212b.put(mVarP, fVar);
                    fVar.g();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private void i(Intent intent, int i10) {
        m mVarP = p(intent);
        boolean z10 = intent.getExtras().getBoolean("KEY_NEEDS_RESCHEDULE");
        j.e().a(f15210e, "Handling onExecutionCompleted " + intent + ", " + i10);
        l(mVarP, z10);
    }

    private void j(Intent intent, int i10, SystemAlarmDispatcher systemAlarmDispatcher) {
        j.e().a(f15210e, "Handling reschedule " + intent + ", " + i10);
        systemAlarmDispatcher.g().x();
    }

    private void k(Intent intent, int i10, SystemAlarmDispatcher systemAlarmDispatcher) {
        m mVarP = p(intent);
        j jVarE = j.e();
        String str = f15210e;
        jVarE.a(str, "Handling schedule work for " + mVarP);
        WorkDatabase workDatabaseT = systemAlarmDispatcher.g().t();
        workDatabaseT.k();
        try {
            u uVarJ = workDatabaseT.n0().j(mVarP.b());
            if (uVarJ == null) {
                j.e().k(str, "Skipping scheduling " + mVarP + " because it's no longer in the DB");
                return;
            }
            if (uVarJ.f62988b.isFinished()) {
                j.e().k(str, "Skipping scheduling " + mVarP + "because it is finished.");
                return;
            }
            long jC = uVarJ.c();
            if (uVarJ.h()) {
                j.e().a(str, "Opportunistically setting an alarm for " + mVarP + "at " + jC);
                a.c(this.f15211a, workDatabaseT, mVarP, jC);
                systemAlarmDispatcher.f().a().execute(new SystemAlarmDispatcher.AddRunnable(systemAlarmDispatcher, a(this.f15211a), i10));
            } else {
                j.e().a(str, "Setting up Alarms for " + mVarP + "at " + jC);
                a.c(this.f15211a, workDatabaseT, mVarP, jC);
            }
            workDatabaseT.e0();
        } finally {
            workDatabaseT.t();
        }
    }

    private void l(Intent intent, SystemAlarmDispatcher systemAlarmDispatcher) {
        List<androidx.work.impl.u> listC;
        Bundle extras = intent.getExtras();
        String string = extras.getString("KEY_WORKSPEC_ID");
        if (extras.containsKey("KEY_WORKSPEC_GENERATION")) {
            int i10 = extras.getInt("KEY_WORKSPEC_GENERATION");
            listC = new ArrayList(1);
            androidx.work.impl.u uVarB = this.f15214d.b(new m(string, i10));
            if (uVarB != null) {
                listC.add(uVarB);
            }
        } else {
            listC = this.f15214d.c(string);
        }
        for (androidx.work.impl.u uVar : listC) {
            j.e().a(f15210e, "Handing stopWork work for " + string);
            systemAlarmDispatcher.g().C(uVar);
            a.a(this.f15211a, systemAlarmDispatcher.g().t(), uVar.a());
            systemAlarmDispatcher.l(uVar.a(), false);
        }
    }

    private static boolean m(Bundle bundle, String... strArr) {
        if (bundle == null || bundle.isEmpty()) {
            return false;
        }
        for (String str : strArr) {
            if (bundle.get(str) == null) {
                return false;
            }
        }
        return true;
    }

    static m p(Intent intent) {
        return new m(intent.getStringExtra("KEY_WORKSPEC_ID"), intent.getIntExtra("KEY_WORKSPEC_GENERATION", 0));
    }

    private static Intent q(Intent intent, m mVar) {
        intent.putExtra("KEY_WORKSPEC_ID", mVar.b());
        intent.putExtra("KEY_WORKSPEC_GENERATION", mVar.a());
        return intent;
    }

    @Override
    public void l(m mVar, boolean z10) {
        synchronized (this.f15213c) {
            try {
                f fVar = (f) this.f15212b.remove(mVar);
                this.f15214d.b(mVar);
                if (fVar != null) {
                    fVar.h(z10);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    boolean n() {
        boolean z10;
        synchronized (this.f15213c) {
            z10 = !this.f15212b.isEmpty();
        }
        return z10;
    }

    void o(Intent intent, int i10, SystemAlarmDispatcher systemAlarmDispatcher) {
        String action = intent.getAction();
        if ("ACTION_CONSTRAINTS_CHANGED".equals(action)) {
            g(intent, i10, systemAlarmDispatcher);
            return;
        }
        if ("ACTION_RESCHEDULE".equals(action)) {
            j(intent, i10, systemAlarmDispatcher);
            return;
        }
        if (!m(intent.getExtras(), "KEY_WORKSPEC_ID")) {
            j.e().c(f15210e, "Invalid request for " + action + " , requires KEY_WORKSPEC_ID .");
            return;
        }
        if ("ACTION_SCHEDULE_WORK".equals(action)) {
            k(intent, i10, systemAlarmDispatcher);
            return;
        }
        if ("ACTION_DELAY_MET".equals(action)) {
            h(intent, i10, systemAlarmDispatcher);
            return;
        }
        if ("ACTION_STOP_WORK".equals(action)) {
            l(intent, systemAlarmDispatcher);
            return;
        }
        if ("ACTION_EXECUTION_COMPLETED".equals(action)) {
            i(intent, i10);
            return;
        }
        j.e().k(f15210e, "Ignoring intent " + intent);
    }
}
