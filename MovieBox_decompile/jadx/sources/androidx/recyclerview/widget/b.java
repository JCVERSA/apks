package androidx.recyclerview.widget;

public final class b implements j {

    private final RecyclerView.Adapter f14036a;

    public b(RecyclerView.Adapter adapter) {
        this.f14036a = adapter;
    }

    @Override
    public void onChanged(int i10, int i11, Object obj) {
        this.f14036a.notifyItemRangeChanged(i10, i11, obj);
    }

    @Override
    public void onInserted(int i10, int i11) {
        this.f14036a.notifyItemRangeInserted(i10, i11);
    }

    @Override
    public void onMoved(int i10, int i11) {
        this.f14036a.notifyItemMoved(i10, i11);
    }

    @Override
    public void onRemoved(int i10, int i11) {
        this.f14036a.notifyItemRangeRemoved(i10, i11);
    }
}
