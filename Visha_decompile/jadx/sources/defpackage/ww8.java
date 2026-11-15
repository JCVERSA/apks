package defpackage;

import io.reactivex.BackpressureStrategy;
import io.reactivex.Scheduler;
import java.lang.reflect.Type;

public final class ww8 implements lq0 {
    public final Type a;
    public final Scheduler b;
    public final boolean c;
    public final boolean d;
    public final boolean e;
    public final boolean f;
    public final boolean g;
    public final boolean h;
    public final boolean i;

    public ww8(Type type, Scheduler scheduler, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7) {
        this.a = type;
        this.b = scheduler;
        this.c = z;
        this.d = z2;
        this.e = z3;
        this.f = z4;
        this.g = z5;
        this.h = z6;
        this.i = z7;
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
    public Object adapt(jq0 jq0Var) {
        mc7 hg0Var;
        Scheduler scheduler;
        mc7 nq0Var = this.c ? new nq0(jq0Var) : new oq0(jq0Var);
        if (!this.d) {
            if (this.e) {
                hg0Var = new hg0(nq0Var);
            }
            scheduler = this.b;
            if (scheduler != null) {
                nq0Var = nq0Var.d0(scheduler);
            }
            if (this.f) {
                return nq0Var.i0(BackpressureStrategy.MISSING);
            }
            if (this.g) {
                return nq0Var.W();
            }
            if (this.h) {
                return nq0Var.V();
            }
            return this.i ? nq0Var.G() : yw8.o(nq0Var);
        }
        hg0Var = new mu8(nq0Var);
        nq0Var = hg0Var;
        scheduler = this.b;
        if (scheduler != null) {
            nq0Var = nq0Var.d0(scheduler);
        }
        if (this.f) {
            return nq0Var.i0(BackpressureStrategy.MISSING);
        }
        if (this.g) {
            return nq0Var.W();
        }
        if (this.h) {
            return nq0Var.V();
        }
        if (this.i) {
        }
    }

    @Override
    public Type responseType() {
        return this.a;
    }
}
