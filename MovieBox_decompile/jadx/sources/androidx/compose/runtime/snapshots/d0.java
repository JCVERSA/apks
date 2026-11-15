package androidx.compose.runtime.snapshots;

import androidx.compose.runtime.AtomicInt;

public abstract class d0 implements c0 {
    public static final int $stable = 0;
    private final AtomicInt readerKind = new AtomicInt(0);

    public final boolean m100isReadInh_f27i8$runtime_release(int i10) {
        return (i10 & f.a(this.readerKind.get())) != 0;
    }

    @Override
    public e0 mergeRecords(e0 e0Var, e0 e0Var2, e0 e0Var3) {
        return b0.a(this, e0Var, e0Var2, e0Var3);
    }

    public final void m101recordReadInh_f27i8$runtime_release(int i10) {
        int iA;
        do {
            iA = f.a(this.readerKind.get());
            if ((iA & i10) != 0) {
                return;
            }
        } while (!this.readerKind.compareAndSet(iA, f.a(iA | i10)));
    }
}
