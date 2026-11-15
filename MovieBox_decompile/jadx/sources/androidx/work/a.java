package androidx.work;

import android.os.Build;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

public final class a {

    final Executor f15079a;

    final Executor f15080b;

    final s f15081c;

    final h f15082d;

    final o f15083e;

    final androidx.core.util.a f15084f;

    final androidx.core.util.a f15085g;

    final String f15086h;

    final int f15087i;

    final int f15088j;

    final int f15089k;

    final int f15090l;

    private final boolean f15091m;

    class ThreadFactoryC0125a implements ThreadFactory {

        private final AtomicInteger f15092a = new AtomicInteger(0);

        final boolean f15093b;

        ThreadFactoryC0125a(boolean z10) {
            this.f15093b = z10;
        }

        @Override
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, (this.f15093b ? "WM.task-" : "androidx.work-") + this.f15092a.incrementAndGet());
        }
    }

    public static final class b {

        Executor f15095a;

        s f15096b;

        h f15097c;

        Executor f15098d;

        o f15099e;

        androidx.core.util.a f15100f;

        androidx.core.util.a f15101g;

        String f15102h;

        int f15103i = 4;

        int f15104j = 0;

        int f15105k = Integer.MAX_VALUE;

        int f15106l = 20;

        public a a() {
            return new a(this);
        }

        public b b(int i10) {
            this.f15103i = i10;
            return this;
        }
    }

    public interface c {
        a a();
    }

    a(b bVar) {
        Executor executor = bVar.f15095a;
        if (executor == null) {
            this.f15079a = a(false);
        } else {
            this.f15079a = executor;
        }
        Executor executor2 = bVar.f15098d;
        if (executor2 == null) {
            this.f15091m = true;
            this.f15080b = a(true);
        } else {
            this.f15091m = false;
            this.f15080b = executor2;
        }
        s sVar = bVar.f15096b;
        if (sVar == null) {
            this.f15081c = s.c();
        } else {
            this.f15081c = sVar;
        }
        h hVar = bVar.f15097c;
        if (hVar == null) {
            this.f15082d = h.c();
        } else {
            this.f15082d = hVar;
        }
        o oVar = bVar.f15099e;
        if (oVar == null) {
            this.f15083e = new androidx.work.impl.d();
        } else {
            this.f15083e = oVar;
        }
        this.f15087i = bVar.f15103i;
        this.f15088j = bVar.f15104j;
        this.f15089k = bVar.f15105k;
        this.f15090l = bVar.f15106l;
        this.f15084f = bVar.f15100f;
        this.f15085g = bVar.f15101g;
        this.f15086h = bVar.f15102h;
    }

    private Executor a(boolean z10) {
        return Executors.newFixedThreadPool(Math.max(2, Math.min(Runtime.getRuntime().availableProcessors() - 1, 4)), b(z10));
    }

    private ThreadFactory b(boolean z10) {
        return new ThreadFactoryC0125a(z10);
    }

    public String c() {
        return this.f15086h;
    }

    public Executor d() {
        return this.f15079a;
    }

    public androidx.core.util.a e() {
        return this.f15084f;
    }

    public h f() {
        return this.f15082d;
    }

    public int g() {
        return this.f15089k;
    }

    public int h() {
        return Build.VERSION.SDK_INT == 23 ? this.f15090l / 2 : this.f15090l;
    }

    public int i() {
        return this.f15088j;
    }

    public int j() {
        return this.f15087i;
    }

    public o k() {
        return this.f15083e;
    }

    public androidx.core.util.a l() {
        return this.f15085g;
    }

    public Executor m() {
        return this.f15080b;
    }

    public s n() {
        return this.f15081c;
    }
}
