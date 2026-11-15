package xw;

import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsnet.downloader.R$layout;
import com.transsnet.downloader.adapter.LayoutType;
import kotlin.jvm.internal.Intrinsics;

public final class a extends BaseItemProvider {
    @Override
    public int l() {
        return LayoutType.ALL_EP_BTN.ordinal();
    }

    @Override
    public int m() {
        return R$layout.adapter_download_item_all_ep;
    }

    @Override
    public void b(BaseViewHolder helper, DownloadBean item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
    }
}
