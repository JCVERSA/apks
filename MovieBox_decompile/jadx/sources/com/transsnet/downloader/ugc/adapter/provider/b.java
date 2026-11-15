package com.transsnet.downloader.ugc.adapter.provider;

import android.view.ViewGroup;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsnet.downloader.R$layout;
import com.transsnet.downloader.ugc.adapter.UGCDownloadStaggeredAdapter;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

public final class b extends BaseItemProvider {

    private final xw.e f57404e = new xw.e();

    @Override
    public int l() {
        return UGCDownloadStaggeredAdapter.ItemType.DOWNLOADED.ordinal();
    }

    @Override
    public int m() {
        return R$layout.adapter_downloaded_item;
    }

    @Override
    public void b(BaseViewHolder helper, com.transsnet.downloader.ugc.adapter.c item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        ViewGroup.LayoutParams layoutParams = helper.itemView.getLayoutParams();
        if (layoutParams instanceof StaggeredGridLayoutManager.b) {
            ((StaggeredGridLayoutManager.b) layoutParams).c(true);
        }
        this.f57404e.b(helper, ((com.transsnet.downloader.ugc.adapter.c.b) item).b());
    }

    @Override
    public void f(BaseViewHolder helper, com.transsnet.downloader.ugc.adapter.c item, List payloads) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        Intrinsics.h(payloads, "payloads");
        ViewGroup.LayoutParams layoutParams = helper.itemView.getLayoutParams();
        if (layoutParams instanceof StaggeredGridLayoutManager.b) {
            ((StaggeredGridLayoutManager.b) layoutParams).c(true);
        }
        this.f57404e.f(helper, ((com.transsnet.downloader.ugc.adapter.c.b) item).b(), payloads);
    }
}
