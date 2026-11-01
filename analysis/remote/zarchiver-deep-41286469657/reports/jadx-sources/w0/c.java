package w0;

import android.content.Context;
import java.util.concurrent.Callable;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import v0.d;

public abstract class c implements Callable<a.b>, d {

    public static final ThreadPoolExecutor f2212d = new ThreadPoolExecutor(0, 5, 3, TimeUnit.SECONDS, new SynchronousQueue());

    public a f2213a;

    public b f2214b;

    public final AtomicBoolean f2215c = new AtomicBoolean();

    public static void h(Runnable runnable) {
        try {
            f2212d.execute(runnable);
        } catch (RejectedExecutionException unused) {
            runnable.run();
        }
    }

    @Override
    public final a.b call() {
        Thread threadCurrentThread = Thread.currentThread();
        String name = threadCurrentThread.getName();
        try {
            threadCurrentThread.setName("ZAsyncTask[" + j() + "]");
            a.b bVarF = f();
            threadCurrentThread.setName(name);
            a aVar = this.f2213a;
            if (aVar != null) {
                aVar.g(this);
            }
            return bVarF;
        } catch (Throwable th) {
            threadCurrentThread.setName(name);
            a aVar2 = this.f2213a;
            if (aVar2 != null) {
                synchronized (aVar2.f2208d) {
                    aVar2.f2208d.remove(this);
                }
            }
            throw th;
        }
    }

    public void e() {
        this.f2215c.set(true);
        b bVar = this.f2214b;
        if (bVar != null) {
            bVar.cancel(true);
        }
        a aVar = this.f2213a;
        if (aVar != null) {
            synchronized (aVar.f2208d) {
                aVar.f2208d.remove(this);
            }
        }
    }

    public abstract a.b f();

    public final void g(Context context, a aVar) {
        try {
            this.f2213a = aVar;
            this.f2214b = new b(this, this);
            l(context);
            f2212d.execute(this.f2214b);
            a aVar2 = this.f2213a;
            if (aVar2 != null) {
                aVar2.e(this);
            }
        } catch (RejectedExecutionException unused) {
            k();
        } catch (Exception unused2) {
        }
    }

    public int i() {
        return -1;
    }

    @Override
    public final boolean isCancelled() {
        return this.f2215c.get();
    }

    public int j() {
        return -1;
    }

    public void k() {
    }

    public void l(Context context) {
    }
}
