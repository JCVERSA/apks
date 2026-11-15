package s6;

import android.view.View;
import android.view.ViewGroup;
import com.chad.library.R$id;
import com.chad.library.R$layout;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import kotlin.jvm.internal.Intrinsics;

public final class b extends a {
    @Override
    public View getLoadComplete(BaseViewHolder holder) {
        Intrinsics.h(holder, "holder");
        return holder.getView(R$id.load_more_load_complete_view);
    }

    @Override
    public View getLoadEndView(BaseViewHolder holder) {
        Intrinsics.h(holder, "holder");
        return holder.getView(R$id.load_more_load_end_view);
    }

    @Override
    public View getLoadFailView(BaseViewHolder holder) {
        Intrinsics.h(holder, "holder");
        return holder.getView(R$id.load_more_load_fail_view);
    }

    @Override
    public View getLoadingView(BaseViewHolder holder) {
        Intrinsics.h(holder, "holder");
        return holder.getView(R$id.load_more_loading_view);
    }

    @Override
    public View getRootView(ViewGroup parent) {
        Intrinsics.h(parent, "parent");
        return u6.a.a(parent, R$layout.brvah_quick_view_load_more);
    }
}
