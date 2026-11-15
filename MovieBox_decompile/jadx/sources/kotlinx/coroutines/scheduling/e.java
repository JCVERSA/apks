package kotlinx.coroutines.scheduling;

import java.util.concurrent.Executor;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.k1;

public class e extends k1 {

    private final int f64966b;

    private final int f64967c;

    private final long f64968d;

    private final String f64969e;

    private CoroutineScheduler f64970f;

    public e() {
        this(0, 0, 0L, null, 15, null);
    }

    private final CoroutineScheduler q() {
        return new CoroutineScheduler(this.f64966b, this.f64967c, this.f64968d, this.f64969e);
    }

    public void close() throws InterruptedException {
        this.f64970f.close();
    }

    @Override
    public void dispatch(CoroutineContext coroutineContext, Runnable runnable) {
        CoroutineScheduler.m(this.f64970f, runnable, false, false, 6, null);
    }

    @Override
    public void dispatchYield(CoroutineContext coroutineContext, Runnable runnable) {
        CoroutineScheduler.m(this.f64970f, runnable, false, true, 2, null);
    }

    @Override
    public Executor p() {
        return this.f64970f;
    }

    public final void r(Runnable runnable, boolean z10, boolean z11) {
        this.f64970f.l(runnable, z10, z11);
    }

    public e(int i10, int i11, long j10, String str, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? g.f64973c : i10, (i12 & 2) != 0 ? g.f64974d : i11, (i12 & 4) != 0 ? g.f64975e : j10, (i12 & 8) != 0 ? "CoroutineScheduler" : str);
    }

    public e(int i10, int i11, long j10, String str) {
        this.f64966b = i10;
        this.f64967c = i11;
        this.f64968d = j10;
        this.f64969e = str;
        this.f64970f = q();
    }
}
