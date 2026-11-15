package j00;

import io.reactivex.rxjava3.core.BackpressureStrategy;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.core.j;
import java.lang.reflect.Type;

final class f implements retrofit2.e {

    private final Type f62862a;

    private final Scheduler f62863b;

    private final boolean f62864c;

    private final boolean f62865d;

    private final boolean f62866e;

    private final boolean f62867f;

    private final boolean f62868g;

    private final boolean f62869h;

    private final boolean f62870i;

    f(Type type, Scheduler scheduler, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15, boolean z16) {
        this.f62862a = type;
        this.f62863b = scheduler;
        this.f62864c = z10;
        this.f62865d = z11;
        this.f62866e = z12;
        this.f62867f = z13;
        this.f62868g = z14;
        this.f62869h = z15;
        this.f62870i = z16;
    }

    @Override
    public Type a() {
        return this.f62862a;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0028  */
    /* JADX WARN: Code duplicated, block: B:18:0x0030  */
    /* JADX WARN: Code duplicated, block: B:20:0x0037  */
    /* JADX WARN: Code duplicated, block: B:22:0x003b  */
    /* JADX WARN: Code duplicated, block: B:24:0x0040  */
    /* JADX WARN: Code duplicated, block: B:26:0x0044  */
    /* JADX WARN: Code duplicated, block: B:28:0x0049  */
    /* JADX WARN: Code duplicated, block: B:30:0x004d  */
    /* JADX WARN: Code duplicated, block: B:32:0x0052  */
    @Override
    public Object b(retrofit2.d dVar) {
        j aVar;
        Scheduler scheduler;
        j bVar = this.f62864c ? new b(dVar) : new c(dVar);
        if (!this.f62865d) {
            if (this.f62866e) {
                aVar = new a(bVar);
            }
            scheduler = this.f62863b;
            if (scheduler != null) {
                bVar = bVar.E(scheduler);
            }
            if (this.f62867f) {
                return bVar.F(BackpressureStrategy.MISSING);
            }
            if (this.f62868g) {
                return bVar.A();
            }
            if (this.f62869h) {
                return bVar.z();
            }
            return this.f62870i ? bVar.s() : dy.a.o(bVar);
        }
        aVar = new e(bVar);
        bVar = aVar;
        scheduler = this.f62863b;
        if (scheduler != null) {
            bVar = bVar.E(scheduler);
        }
        if (this.f62867f) {
            return bVar.F(BackpressureStrategy.MISSING);
        }
        if (this.f62868g) {
            return bVar.A();
        }
        if (this.f62869h) {
            return bVar.z();
        }
        if (this.f62870i) {
        }
    }
}
