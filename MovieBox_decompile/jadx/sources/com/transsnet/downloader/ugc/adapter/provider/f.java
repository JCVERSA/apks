package com.transsnet.downloader.ugc.adapter.provider;

import android.view.ViewGroup;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsnet.downloader.R$layout;
import com.transsnet.downloader.ugc.adapter.UGCDownloadStaggeredAdapter;
import kotlin.jvm.internal.Intrinsics;
import xw.h;

public final class f extends BaseItemProvider {

    private final h f57408e = new h();

    @Override
    public int l() {
        return UGCDownloadStaggeredAdapter.ItemType.MORE_WAITING.ordinal();
    }

    @Override
    public int m() {
        return R$layout.adapter_ugc_more_waiting_item;
    }

    @Override
    public void b(BaseViewHolder helper, com.transsnet.downloader.ugc.adapter.c item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        ViewGroup.LayoutParams layoutParams = helper.itemView.getLayoutParams();
        if (layoutParams instanceof StaggeredGridLayoutManager.b) {
            ((StaggeredGridLayoutManager.b) layoutParams).c(true);
        }
        this.f57408e.b(helper, ((com.transsnet.downloader.ugc.adapter.c.C0667c) item).b());
    }
}
