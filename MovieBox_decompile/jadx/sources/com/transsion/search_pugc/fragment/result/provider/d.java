package com.transsion.search_pugc.fragment.result.provider;

import android.widget.TextView;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.search.R$id;
import com.transsion.search.R$layout;
import com.transsion.search_pugc.bean.SearchResultItem;
import com.transsion.search_pugc.constant.SearchType;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoHashTag;
import kotlin.jvm.internal.Intrinsics;

public final class d extends BaseItemProvider implements t {

    private final t f50421e;

    public d(t reportable) {
        Intrinsics.h(reportable, "reportable");
        this.f50421e = reportable;
    }

    @Override
    public void a(UGCVideo ugcVideo, int i10) {
        Intrinsics.h(ugcVideo, "ugcVideo");
        this.f50421e.a(ugcVideo, i10);
    }

    @Override
    public void c(UGCVideo ugcVideo, int i10) {
        Intrinsics.h(ugcVideo, "ugcVideo");
        this.f50421e.c(ugcVideo, i10);
    }

    @Override
    public void d(SearchResultItem item, int i10) {
        Intrinsics.h(item, "item");
        this.f50421e.d(item, i10);
    }

    @Override
    public void e(UGCVideo ugcVideo, int i10) {
        Intrinsics.h(ugcVideo, "ugcVideo");
        this.f50421e.e(ugcVideo, i10);
    }

    @Override
    public int l() {
        return SearchType.HASH_TAG.ordinal();
    }

    @Override
    public int m() {
        return R$layout.provider_result_hashtag;
    }

    @Override
    public void b(BaseViewHolder helper, SearchResultItem item) {
        String title;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        TextView textView = (TextView) helper.getView(R$id.f49933tv);
        UGCVideoHashTag hashTag = item.getHashTag();
        textView.setText(String.valueOf((hashTag == null || (title = hashTag.getTitle()) == null) ? null : com.transsion.search_pugc.constant.a.d(title, k(), com.transsion.search_pugc.g.f50469h.a(k()).e())));
    }
}
