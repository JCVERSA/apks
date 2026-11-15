package com.transsnet.downloader.ugc.adapter.provider;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsnet.downloader.R$layout;
import com.transsnet.downloader.ugc.adapter.UGCDownloadStaggeredAdapter;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public final class d extends BaseItemProvider {

    private final Function0 f57406e;

    private View f57407f;

    public d(Function0 function0) {
        this.f57406e = function0;
    }

    @Override
    public int l() {
        return UGCDownloadStaggeredAdapter.ItemType.EMPTY.ordinal();
    }

    @Override
    public int m() {
        return R$layout.adapter_ugc_empty_item;
    }

    @Override
    public void b(BaseViewHolder helper, com.transsnet.downloader.ugc.adapter.c item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        ViewGroup.LayoutParams layoutParams = helper.itemView.getLayoutParams();
        if (layoutParams instanceof StaggeredGridLayoutManager.b) {
            ((StaggeredGridLayoutManager.b) layoutParams).c(true);
        }
        View view = helper.itemView;
        ViewGroup viewGroup = view instanceof ViewGroup ? (ViewGroup) view : null;
        if (viewGroup != null && viewGroup.getChildCount() == 0) {
            if (this.f57407f == null) {
                Function0 function0 = this.f57406e;
                this.f57407f = function0 != null ? (View) function0.invoke() : null;
            }
            View view2 = this.f57407f;
            if (view2 != null) {
                if (view2.getParent() != null) {
                    ViewParent parent = view2.getParent();
                    ViewGroup viewGroup2 = parent instanceof ViewGroup ? (ViewGroup) parent : null;
                    if (viewGroup2 != null) {
                        viewGroup2.removeView(view2);
                    }
                }
                view2.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
                viewGroup.addView(view2);
            }
        }
    }
}
