package androidx.work.impl.background.systemalarm;

import android.content.Context;
import android.content.Intent;
import android.os.Looper;
import android.os.PowerManager;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.work.impl.Processor;
import androidx.work.impl.d0;
import androidx.work.impl.utils.WorkTimer;
import androidx.work.impl.utils.s;
import androidx.work.impl.v;
import androidx.work.j;
import j4.m;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;

public class SystemAlarmDispatcher implements androidx.work.impl.e {

    static final String f15195k = j.i("SystemAlarmDispatcher");

    final Context f15196a;

    final k4.c f15197b;

    private final WorkTimer f15198c;

    private final Processor f15199d;

    private final d0 f15200e;

    final b f15201f;

    final List f15202g;

    Intent f15203h;

    private a f15204i;

    private v f15205j;

    static class AddRunnable implements Runnable {
        private final SystemAlarmDispatcher mDispatcher;
        private final Intent mIntent;
        private final int mStartId;

        AddRunnable(@NonNull SystemAlarmDispatcher systemAlarmDispatcher, @NonNull Intent intent, int i10) {
            this.mDispatcher = systemAlarmDispatcher;
            this.mIntent = intent;
            this.mStartId = i10;
        }

        @Override
        public void run() {
            this.mDispatcher.a(this.mIntent, this.mStartId);
        }
    }

    static class DequeueAndCheckForCompletion implements Runnable {
        private final SystemAlarmDispatcher mDispatcher;

        DequeueAndCheckForCompletion(@NonNull SystemAlarmDispatcher systemAlarmDispatcher) {
            this.mDispatcher = systemAlarmDispatcher;
        }

        @Override
        public void run() {
            this.mDispatcher.c();
        }
    }

    interface a {
        void b();
    }

    SystemAlarmDispatcher(Context context) {
        this(context, null, null);
    }

    private void b() {
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            throw new IllegalStateException("Needs to be invoked on the main thread.");
        }
    }

    private boolean i(String str) {
        b();
        synchronized (this.f15202g) {
            try {
                Iterator it = this.f15202g.iterator();
                while (it.hasNext()) {
                    if (str.equals(((Intent) it.next()).getAction())) {
                        return true;
                    }
                }
                return false;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private void k() {
        b();
        PowerManager.WakeLock wakeLockB = s.b(this.f15196a, "ProcessCommand");
        try {
            wakeLockB.acquire();
            this.f15200e.u().c(new Runnable() {
                @Override
                public void run() {
                    Executor executorA;
                    DequeueAndCheckForCompletion dequeueAndCheckForCompletion;
                    synchronized (SystemAlarmDispatcher.this.f15202g) {
                        SystemAlarmDispatcher systemAlarmDispatcher = SystemAlarmDispatcher.this;
                        systemAlarmDispatcher.f15203h = (Intent) systemAlarmDispatcher.f15202g.get(0);
                    }
                    Intent intent = SystemAlarmDispatcher.this.f15203h;
                    if (intent != null) {
                        String action = intent.getAction();
                        int intExtra = SystemAlarmDispatcher.this.f15203h.getIntExtra("KEY_START_ID", 0);
                        j jVarE = j.e();
                        String str = SystemAlarmDispatcher.f15195k;
                        jVarE.a(str, "Processing command " + SystemAlarmDispatcher.this.f15203h + ", " + intExtra);
                        PowerManager.WakeLock wakeLockB2 = s.b(SystemAlarmDispatcher.this.f15196a, action + " (" + intExtra + ")");
                        try {
                            j.e().a(str, "Acquiring operation wake lock (" + action + ") " + wakeLockB2);
                            wakeLockB2.acquire();
                            SystemAlarmDispatcher systemAlarmDispatcher2 = SystemAlarmDispatcher.this;
                            systemAlarmDispatcher2.f15201f.o(systemAlarmDispatcher2.f15203h, intExtra, systemAlarmDispatcher2);
                            j.e().a(str, "Releasing operation wake lock (" + action + ") " + wakeLockB2);
                            wakeLockB2.release();
                            executorA = SystemAlarmDispatcher.this.f15197b.a();
                            dequeueAndCheckForCompletion = new DequeueAndCheckForCompletion(SystemAlarmDispatcher.this);
                        } catch (Throwable th2) {
                            try {
                                j jVarE2 = j.e();
                                String str2 = SystemAlarmDispatcher.f15195k;
                                jVarE2.d(str2, "Unexpected error in onHandleIntent", th2);
                                j.e().a(str2, "Releasing operation wake lock (" + action + ") " + wakeLockB2);
                                wakeLockB2.release();
                                executorA = SystemAlarmDispatcher.this.f15197b.a();
                                dequeueAndCheckForCompletion = new DequeueAndCheckForCompletion(SystemAlarmDispatcher.this);
                            } catch (Throwable th3) {
                                j.e().a(SystemAlarmDispatcher.f15195k, "Releasing operation wake lock (" + action + ") " + wakeLockB2);
                                wakeLockB2.release();
                                SystemAlarmDispatcher.this.f15197b.a().execute(new DequeueAndCheckForCompletion(SystemAlarmDispatcher.this));
                                throw th3;
                            }
                        }
                        executorA.execute(dequeueAndCheckForCompletion);
                    }
                }
            });
        } finally {
            wakeLockB.release();
        }
    }

    public boolean a(Intent intent, int i10) {
        j jVarE = j.e();
        String str = f15195k;
        jVarE.a(str, "Adding command " + intent + " (" + i10 + ")");
        b();
        String action = intent.getAction();
        if (TextUtils.isEmpty(action)) {
            j.e().k(str, "Unknown command. Ignoring");
            return false;
        }
        if ("ACTION_CONSTRAINTS_CHANGED".equals(action) && i("ACTION_CONSTRAINTS_CHANGED")) {
            return false;
        }
        intent.putExtra("KEY_START_ID", i10);
        synchronized (this.f15202g) {
            try {
                boolean zIsEmpty = this.f15202g.isEmpty();
                this.f15202g.add(intent);
                if (zIsEmpty) {
                    k();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return true;
    }

    void c() {
        j jVarE = j.e();
        String str = f15195k;
        jVarE.a(str, "Checking if commands are complete.");
        b();
        synchronized (this.f15202g) {
            try {
                if (this.f15203h != null) {
                    j.e().a(str, "Removing command " + this.f15203h);
                    if (!((Intent) this.f15202g.remove(0)).equals(this.f15203h)) {
                        throw new IllegalStateException("Dequeue-d command is not the first.");
                    }
                    this.f15203h = null;
                }
                k4.a aVarB = this.f15197b.b();
                if (!this.f15201f.n() && this.f15202g.isEmpty() && !aVarB.n()) {
                    j.e().a(str, "No more commands & intents.");
                    a aVar = this.f15204i;
                    if (aVar != null) {
                        aVar.b();
                    }
                } else if (!this.f15202g.isEmpty()) {
                    k();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public void l(m mVar, boolean z10) {
        this.f15197b.a().execute(new AddRunnable(this, b.c(this.f15196a, mVar, z10), 0));
    }

    Processor e() {
        return this.f15199d;
    }

    k4.c f() {
        return this.f15197b;
    }

    d0 g() {
        return this.f15200e;
    }

    WorkTimer h() {
        return this.f15198c;
    }

    void j() {
        j.e().a(f15195k, "Destroying SystemAlarmDispatcher");
        this.f15199d.n(this);
        this.f15204i = null;
    }

    void l(a aVar) {
        if (this.f15204i != null) {
            j.e().c(f15195k, "A completion listener for SystemAlarmDispatcher already exists.");
        } else {
            this.f15204i = aVar;
        }
    }

    SystemAlarmDispatcher(Context context, Processor processor, d0 d0Var) {
        Context applicationContext = context.getApplicationContext();
        this.f15196a = applicationContext;
        this.f15205j = new v();
        this.f15201f = new b(applicationContext, this.f15205j);
        d0Var = d0Var == null ? d0.o(context) : d0Var;
        this.f15200e = d0Var;
        this.f15198c = new WorkTimer(d0Var.m().k());
        processor = processor == null ? d0Var.q() : processor;
        this.f15199d = processor;
        this.f15197b = d0Var.u();
        processor.g(this);
        this.f15202g = new ArrayList();
        this.f15203h = null;
    }
}
