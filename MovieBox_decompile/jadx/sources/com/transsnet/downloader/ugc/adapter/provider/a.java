package com.transsnet.downloader.ugc.adapter.provider;

import android.view.ViewGroup;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsnet.downloader.R$layout;
import com.transsnet.downloader.ugc.adapter.UGCDownloadStaggeredAdapter;
import kotlin.jvm.internal.Intrinsics;

public final class a extends BaseItemProvider {
    @Override
    public int l() {
        return UGCDownloadStaggeredAdapter.ItemType.ALL_EP_BTN.ordinal();
    }

    @Override
    public int m() {
        return R$layout.adapter_download_item_all_ep;
    }

    @Override
    public void b(BaseViewHolder helper, com.transsnet.downloader.ugc.adapter.c item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        ViewGroup.LayoutParams layoutParams = helper.itemView.getLayoutParams();
        if (layoutParams instanceof StaggeredGridLayoutManager.b) {
            ((StaggeredGridLayoutManager.b) layoutParams).c(true);
        }
        ((com.transsnet.downloader.ugc.adapter.c.a) item).a();
    }
}
