package androidx.recyclerview.widget;

import android.view.ViewGroup;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public final class ConcatAdapter extends RecyclerView.Adapter {

    private final f f13777a;

    public static final class Config {

        public static final Config f13778c = new Config(true, StableIdMode.NO_STABLE_IDS);

        public final boolean f13779a;

        public final StableIdMode f13780b;

        public enum StableIdMode {
            NO_STABLE_IDS,
            ISOLATED_STABLE_IDS,
            SHARED_STABLE_IDS
        }

        Config(boolean z10, StableIdMode stableIdMode) {
            this.f13779a = z10;
            this.f13780b = stableIdMode;
        }
    }

    public ConcatAdapter(RecyclerView.Adapter... adapterArr) {
        this(Config.f13778c, adapterArr);
    }

    @Override
    public int findRelativeAdapterPositionIn(RecyclerView.Adapter adapter, RecyclerView.a0 a0Var, int i10) {
        return this.f13777a.p(adapter, a0Var, i10);
    }

    public boolean g(RecyclerView.Adapter adapter) {
        return this.f13777a.h(adapter);
    }

    @Override
    public int getItemCount() {
        return this.f13777a.q();
    }

    @Override
    public long getItemId(int i10) {
        return this.f13777a.n(i10);
    }

    @Override
    public int getItemViewType(int i10) {
        return this.f13777a.o(i10);
    }

    void h(RecyclerView.Adapter.StateRestorationPolicy stateRestorationPolicy) {
        super.setStateRestorationPolicy(stateRestorationPolicy);
    }

    @Override
    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        this.f13777a.v(recyclerView);
    }

    @Override
    public void onBindViewHolder(RecyclerView.a0 a0Var, int i10) {
        this.f13777a.w(a0Var, i10);
    }

    @Override
    public RecyclerView.a0 onCreateViewHolder(ViewGroup viewGroup, int i10) {
        return this.f13777a.x(viewGroup, i10);
    }

    @Override
    public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
        this.f13777a.y(recyclerView);
    }

    @Override
    public boolean onFailedToRecycleView(RecyclerView.a0 a0Var) {
        return this.f13777a.z(a0Var);
    }

    @Override
    public void onViewAttachedToWindow(RecyclerView.a0 a0Var) {
        this.f13777a.A(a0Var);
    }

    @Override
    public void onViewDetachedFromWindow(RecyclerView.a0 a0Var) {
        this.f13777a.B(a0Var);
    }

    @Override
    public void onViewRecycled(RecyclerView.a0 a0Var) {
        this.f13777a.C(a0Var);
    }

    @Override
    public void setHasStableIds(boolean z10) {
        throw new UnsupportedOperationException("Calling setHasStableIds is not allowed on the ConcatAdapter. Use the Config object passed in the constructor to control this behavior");
    }

    @Override
    public void setStateRestorationPolicy(RecyclerView.Adapter.StateRestorationPolicy stateRestorationPolicy) {
        throw new UnsupportedOperationException("Calling setStateRestorationPolicy is not allowed on the ConcatAdapter. This value is inferred from added adapters");
    }

    public ConcatAdapter(Config config, RecyclerView.Adapter... adapterArr) {
        this(config, Arrays.asList(adapterArr));
    }

    public ConcatAdapter(Config config, List list) {
        this.f13777a = new f(this, config);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            g((RecyclerView.Adapter) it.next());
        }
        super.setHasStableIds(this.f13777a.s());
    }
}
