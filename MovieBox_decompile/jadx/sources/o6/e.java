package o6;

import androidx.recyclerview.widget.j;
import com.chad.library.adapter.base.BaseQuickAdapter;
import kotlin.jvm.internal.Intrinsics;
import t6.f;

public final class e implements j {

    private final BaseQuickAdapter f67636a;

    public e(BaseQuickAdapter mAdapter) {
        Intrinsics.h(mAdapter, "mAdapter");
        this.f67636a = mAdapter;
    }

    @Override
    public void onChanged(int i10, int i11, Object obj) {
        BaseQuickAdapter baseQuickAdapter = this.f67636a;
        baseQuickAdapter.notifyItemRangeChanged(i10 + baseQuickAdapter.a0(), i11, obj);
    }

    @Override
    public void onInserted(int i10, int i11) {
        BaseQuickAdapter baseQuickAdapter = this.f67636a;
        baseQuickAdapter.notifyItemRangeInserted(i10 + baseQuickAdapter.a0(), i11);
    }

    @Override
    public void onMoved(int i10, int i11) {
        BaseQuickAdapter baseQuickAdapter = this.f67636a;
        baseQuickAdapter.notifyItemMoved(i10 + baseQuickAdapter.a0(), i11 + this.f67636a.a0());
    }

    @Override
    public void onRemoved(int i10, int i11) {
        f fVarI0 = this.f67636a.i0();
        if (fVarI0 != null && fVarI0.m() && this.f67636a.getItemCount() == 0) {
            BaseQuickAdapter baseQuickAdapter = this.f67636a;
            baseQuickAdapter.notifyItemRangeRemoved(i10 + baseQuickAdapter.a0(), i11 + 1);
        } else {
            BaseQuickAdapter baseQuickAdapter2 = this.f67636a;
            baseQuickAdapter2.notifyItemRangeRemoved(i10 + baseQuickAdapter2.a0(), i11);
        }
    }
}
