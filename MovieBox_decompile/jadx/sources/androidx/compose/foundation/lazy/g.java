package androidx.compose.foundation.lazy;

import androidx.compose.ui.layout.h0;
import kotlin.collections.CollectionsKt;

public final class g implements androidx.compose.foundation.lazy.layout.h {

    private final LazyListState f2639a;

    private final int f2640b;

    public g(LazyListState lazyListState, int i10) {
        this.f2639a = lazyListState;
        this.f2640b = i10;
    }

    @Override
    public void a() {
        h0 h0VarA = this.f2639a.A();
        if (h0VarA != null) {
            h0VarA.d();
        }
    }

    @Override
    public boolean b() {
        return !this.f2639a.t().h().isEmpty();
    }

    @Override
    public int c() {
        return Math.max(0, this.f2639a.o() - this.f2640b);
    }

    @Override
    public int d() {
        return Math.min(getItemCount() - 1, ((j) CollectionsKt.u0(this.f2639a.t().h())).getIndex() + this.f2640b);
    }

    @Override
    public int getItemCount() {
        return this.f2639a.t().d();
    }
}
