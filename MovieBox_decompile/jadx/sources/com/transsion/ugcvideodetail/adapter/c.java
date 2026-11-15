package com.transsion.ugcvideodetail.adapter;

import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.ugcvideodetail.R$id;
import com.transsion.ugcvideodetail.R$layout;
import com.transsion.ugcvideodetail.api.bean.UGCImmVideo;
import com.transsion.ugcvideodetail.fragment.UGCImmVideoDetailFragment;
import com.transsion.ugcvideodetail.widget.UGCImmVideoItemView;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

public final class c extends BaseItemProvider {

    private final UGCImmVideoDetailFragment f53926e;

    private final String f53927f;

    private final String f53928g;

    private final String f53929h;

    private final int f53930i;

    private final int f53931j;

    public c(UGCImmVideoDetailFragment fragment, String trackId, String str, String str2) {
        Intrinsics.h(fragment, "fragment");
        Intrinsics.h(trackId, "trackId");
        this.f53926e = fragment;
        this.f53927f = trackId;
        this.f53928g = str;
        this.f53929h = str2;
        this.f53930i = 1;
        this.f53931j = R$layout.item_ugc_imm_video_detail;
    }

    @Override
    public int l() {
        return this.f53930i;
    }

    @Override
    public int m() {
        return this.f53931j;
    }

    @Override
    public void b(BaseViewHolder holder, UGCImmVideo item) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        UGCImmVideoItemView uGCImmVideoItemView = (UGCImmVideoItemView) holder.getView(R$id.viewImmVideoItem);
        BaseProviderMultiAdapter baseProviderMultiAdapterG = g();
        uGCImmVideoItemView.setData(baseProviderMultiAdapterG != null ? Integer.valueOf(baseProviderMultiAdapterG.g0(item)) : null, this.f53926e, this.f53927f, this.f53928g, this.f53929h, item);
    }

    @Override
    public void f(BaseViewHolder helper, UGCImmVideo item, List payloads) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        Intrinsics.h(payloads, "payloads");
        super.f(helper, item, payloads);
        Object objK0 = CollectionsKt.k0(payloads);
        UGCImmVideoItemView uGCImmVideoItemView = (UGCImmVideoItemView) helper.getView(R$id.viewImmVideoItem);
        if (objK0 instanceof Integer) {
            uGCImmVideoItemView.setDownloadStatus(((Number) objK0).intValue());
        }
    }
}
