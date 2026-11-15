package defpackage;

import android.content.Context;
import android.os.Looper;
import android.util.Log;
import com.transsion.launch.run.StartupRunnable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicInteger;

public class qw9 {
    public CountDownLatch a;
    public Context b;
    public List c;
    public cx9 d;
    public String e = "StartupManager";

    public static class a {
        public List a = new ArrayList();
        public String b = "Startup_Builder";

        public a a(pw9 pw9Var) {
            this.a.add(pw9Var);
            return this;
        }

        public qw9 b(Context context) {
            AtomicInteger atomicInteger = new AtomicInteger();
            for (pw9 pw9Var : this.a) {
                if (!pw9Var.b() && pw9Var.c()) {
                    atomicInteger.incrementAndGet();
                }
            }
            Log.e(this.b, "needAwaitCount_" + atomicInteger);
            return new qw9(context, this.a, new CountDownLatch(atomicInteger.get()));
        }
    }

    public qw9(Context context, List list, CountDownLatch countDownLatch) {
        this.b = context;
        this.c = list;
        this.a = countDownLatch;
    }

    public void a() {
        try {
            this.a.await();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    public void b(pw9 pw9Var) {
        if (!pw9Var.b() && pw9Var.c()) {
            Log.e(this.e, "notifyChildren_awaitCountDownLatch" + pw9Var.getClass().getSimpleName());
            this.a.countDown();
        }
        if (this.d.b().containsKey(pw9Var.getClass())) {
            Iterator it = ((List) this.d.b().get(pw9Var.getClass())).iterator();
            while (it.hasNext()) {
                ((pw9) this.d.c().get((Class) it.next())).a();
            }
        }
    }

    public qw9 c() {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            Log.e(this.e, "must call on main thread");
            return this;
        }
        cx9 cx9VarA = lra.a(this.c);
        this.d = cx9VarA;
        for (pw9 pw9Var : cx9VarA.a()) {
            StartupRunnable startupRunnable = new StartupRunnable(this.b, pw9Var, this);
            if (pw9Var.b()) {
                startupRunnable.run();
            } else {
                pw9Var.g().execute(startupRunnable);
            }
        }
        return this;
    }
}
