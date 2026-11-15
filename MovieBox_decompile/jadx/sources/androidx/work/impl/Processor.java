package androidx.work.impl;

import android.content.Context;
import android.os.PowerManager;
import androidx.annotation.NonNull;
import androidx.work.WorkerParameters;
import androidx.work.impl.foreground.SystemForegroundDispatcher;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;

public class Processor implements e, androidx.work.impl.foreground.a {

    private static final String f15142m = androidx.work.j.i("Processor");

    private Context f15144b;

    private androidx.work.a f15145c;

    private k4.c f15146d;

    private WorkDatabase f15147e;

    private List f15151i;

    private Map f15149g = new HashMap();

    private Map f15148f = new HashMap();

    private Set f15152j = new HashSet();

    private final List f15153k = new ArrayList();

    private PowerManager.WakeLock f15143a = null;

    private final Object f15154l = new Object();

    private Map f15150h = new HashMap();

    private static class FutureListener implements Runnable {

        @NonNull
        private e mExecutionListener;

        @NonNull
        private com.google.common.util.concurrent.r mFuture;

        @NonNull
        private final j4.m mWorkGenerationalId;

        FutureListener(@NonNull e eVar, @NonNull j4.m mVar, @NonNull com.google.common.util.concurrent.r rVar) {
            this.mExecutionListener = eVar;
            this.mWorkGenerationalId = mVar;
            this.mFuture = rVar;
        }

        @Override
        public void run() {
            boolean zBooleanValue;
            try {
                zBooleanValue = ((Boolean) this.mFuture.get()).booleanValue();
            } catch (InterruptedException | ExecutionException unused) {
                zBooleanValue = true;
            }
            this.mExecutionListener.l(this.mWorkGenerationalId, zBooleanValue);
        }
    }

    public Processor(Context context, androidx.work.a aVar, k4.c cVar, WorkDatabase workDatabase, List list) {
        this.f15144b = context;
        this.f15145c = aVar;
        this.f15146d = cVar;
        this.f15147e = workDatabase;
        this.f15151i = list;
    }

    private static boolean i(String str, WorkerWrapper workerWrapper) {
        if (workerWrapper == null) {
            androidx.work.j.e().a(f15142m, "WorkerWrapper could not be found for " + str);
            return false;
        }
        workerWrapper.interrupt();
        androidx.work.j.e().a(f15142m, "WorkerWrapper interrupted for " + str);
        return true;
    }

    public j4.u m(ArrayList arrayList, String str) {
        arrayList.addAll(this.f15147e.o0().b(str));
        return this.f15147e.n0().j(str);
    }

    private void o(final j4.m mVar, final boolean z10) {
        this.f15146d.a().execute(new Runnable() {
            @Override
            public final void run() {
                this.f15314a.l(mVar, z10);
            }
        });
    }

    private void s() {
        synchronized (this.f15154l) {
            try {
                if (this.f15148f.isEmpty()) {
                    try {
                        this.f15144b.startService(SystemForegroundDispatcher.g(this.f15144b));
                    } catch (Throwable th2) {
                        androidx.work.j.e().d(f15142m, "Unable to stop foreground service", th2);
                    }
                    PowerManager.WakeLock wakeLock = this.f15143a;
                    if (wakeLock != null) {
                        wakeLock.release();
                        this.f15143a = null;
                    }
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }

    @Override
    public void a(String str) {
        synchronized (this.f15154l) {
            this.f15148f.remove(str);
            s();
        }
    }

    @Override
    public boolean b(String str) {
        boolean zContainsKey;
        synchronized (this.f15154l) {
            zContainsKey = this.f15148f.containsKey(str);
        }
        return zContainsKey;
    }

    @Override
    public void c(String str, androidx.work.e eVar) {
        synchronized (this.f15154l) {
            try {
                androidx.work.j.e().f(f15142m, "Moving WorkSpec (" + str + ") to the foreground");
                WorkerWrapper workerWrapper = (WorkerWrapper) this.f15149g.remove(str);
                if (workerWrapper != null) {
                    if (this.f15143a == null) {
                        PowerManager.WakeLock wakeLockB = androidx.work.impl.utils.s.b(this.f15144b, "ProcessorForegroundLck");
                        this.f15143a = wakeLockB;
                        wakeLockB.acquire();
                    }
                    this.f15148f.put(str, workerWrapper);
                    androidx.core.content.b.startForegroundService(this.f15144b, SystemForegroundDispatcher.e(this.f15144b, workerWrapper.getWorkGenerationalId(), eVar));
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public void l(j4.m mVar, boolean z10) {
        synchronized (this.f15154l) {
            try {
                WorkerWrapper workerWrapper = (WorkerWrapper) this.f15149g.get(mVar.b());
                if (workerWrapper != null && mVar.equals(workerWrapper.getWorkGenerationalId())) {
                    this.f15149g.remove(mVar.b());
                }
                androidx.work.j.e().a(f15142m, getClass().getSimpleName() + " " + mVar.b() + " executed; reschedule = " + z10);
                Iterator it = this.f15153k.iterator();
                while (it.hasNext()) {
                    ((e) it.next()).l(mVar, z10);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void g(e eVar) {
        synchronized (this.f15154l) {
            this.f15153k.add(eVar);
        }
    }

    public j4.u h(String str) {
        synchronized (this.f15154l) {
            try {
                WorkerWrapper workerWrapper = (WorkerWrapper) this.f15148f.get(str);
                if (workerWrapper == null) {
                    workerWrapper = (WorkerWrapper) this.f15149g.get(str);
                }
                if (workerWrapper == null) {
                    return null;
                }
                return workerWrapper.getWorkSpec();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public boolean j(String str) {
        boolean zContains;
        synchronized (this.f15154l) {
            zContains = this.f15152j.contains(str);
        }
        return zContains;
    }

    public boolean k(String str) {
        boolean z10;
        synchronized (this.f15154l) {
            try {
                z10 = this.f15149g.containsKey(str) || this.f15148f.containsKey(str);
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return z10;
    }

    public void n(e eVar) {
        synchronized (this.f15154l) {
            this.f15153k.remove(eVar);
        }
    }

    public boolean p(u uVar) {
        return q(uVar, null);
    }

    public boolean q(u uVar, WorkerParameters.a aVar) {
        j4.m mVarA = uVar.a();
        final String strB = mVarA.b();
        final ArrayList arrayList = new ArrayList();
        j4.u uVar2 = (j4.u) this.f15147e.Y(new Callable() {
            @Override
            public final Object call() {
                return this.f15311a.m(arrayList, strB);
            }
        });
        if (uVar2 == null) {
            androidx.work.j.e().k(f15142m, "Didn't find WorkSpec for id " + mVarA);
            o(mVarA, false);
            return false;
        }
        synchronized (this.f15154l) {
            try {
                if (k(strB)) {
                    Set set = (Set) this.f15150h.get(strB);
                    if (((u) set.iterator().next()).a().a() == mVarA.a()) {
                        set.add(uVar);
                        androidx.work.j.e().a(f15142m, "Work " + mVarA + " is already enqueued for processing");
                    } else {
                        o(mVarA, false);
                    }
                    return false;
                }
                if (uVar2.f() != mVarA.a()) {
                    o(mVarA, false);
                    return false;
                }
                WorkerWrapper workerWrapperB = new WorkerWrapper.a(this.f15144b, this.f15145c, this.f15146d, this, this.f15147e, uVar2, arrayList).d(this.f15151i).c(aVar).b();
                com.google.common.util.concurrent.r future = workerWrapperB.getFuture();
                future.addListener(new FutureListener(this, uVar.a(), future), this.f15146d.a());
                this.f15149g.put(strB, workerWrapperB);
                HashSet hashSet = new HashSet();
                hashSet.add(uVar);
                this.f15150h.put(strB, hashSet);
                this.f15146d.b().execute(workerWrapperB);
                androidx.work.j.e().a(f15142m, getClass().getSimpleName() + ": processing " + mVarA);
                return true;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public boolean r(String str) {
        WorkerWrapper workerWrapper;
        boolean z10;
        synchronized (this.f15154l) {
            try {
                androidx.work.j.e().a(f15142m, "Processor cancelling " + str);
                this.f15152j.add(str);
                workerWrapper = (WorkerWrapper) this.f15148f.remove(str);
                z10 = workerWrapper != null;
                if (workerWrapper == null) {
                    workerWrapper = (WorkerWrapper) this.f15149g.remove(str);
                }
                if (workerWrapper != null) {
                    this.f15150h.remove(str);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        boolean zI = i(str, workerWrapper);
        if (z10) {
            s();
        }
        return zI;
    }

    public boolean t(u uVar) {
        WorkerWrapper workerWrapper;
        String strB = uVar.a().b();
        synchronized (this.f15154l) {
            try {
                androidx.work.j.e().a(f15142m, "Processor stopping foreground work " + strB);
                workerWrapper = (WorkerWrapper) this.f15148f.remove(strB);
                if (workerWrapper != null) {
                    this.f15150h.remove(strB);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return i(strB, workerWrapper);
    }

    public boolean u(u uVar) {
        String strB = uVar.a().b();
        synchronized (this.f15154l) {
            try {
                WorkerWrapper workerWrapper = (WorkerWrapper) this.f15149g.remove(strB);
                if (workerWrapper == null) {
                    androidx.work.j.e().a(f15142m, "WorkerWrapper could not be found for " + strB);
                    return false;
                }
                Set set = (Set) this.f15150h.get(strB);
                if (set != null && set.contains(uVar)) {
                    androidx.work.j.e().a(f15142m, "Processor stopping background work " + strB);
                    this.f15150h.remove(strB);
                    return i(strB, workerWrapper);
                }
                return false;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
