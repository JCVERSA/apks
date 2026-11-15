package com.transsion.search_pugc.fragment.result.provider;

import android.widget.ImageView;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.tn.lib.widget.R$color;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.search.R$drawable;
import com.transsion.search.R$id;
import com.transsion.search.R$layout;
import com.transsion.search.R$string;
import com.transsion.search_pugc.bean.SearchResultItem;
import com.transsion.search_pugc.constant.SearchType;
import com.transsion.ugcvideodetail.api.bean.UGCVerticalRank;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

public final class ResultVerticalRankType2Provider extends BaseItemProvider implements t {

    private final t f50416e;

    public ResultVerticalRankType2Provider(t reportable) {
        Intrinsics.h(reportable, "reportable");
        this.f50416e = reportable;
    }

    @Override
    public void a(UGCVideo ugcVideo, int i10) {
        Intrinsics.h(ugcVideo, "ugcVideo");
        this.f50416e.a(ugcVideo, i10);
    }

    @Override
    public void c(UGCVideo ugcVideo, int i10) {
        Intrinsics.h(ugcVideo, "ugcVideo");
        this.f50416e.c(ugcVideo, i10);
    }

    @Override
    public void d(SearchResultItem item, int i10) {
        Intrinsics.h(item, "item");
        this.f50416e.d(item, i10);
    }

    @Override
    public void e(UGCVideo ugcVideo, int i10) {
        Intrinsics.h(ugcVideo, "ugcVideo");
        this.f50416e.e(ugcVideo, i10);
    }

    @Override
    public int l() {
        return SearchType.VERTICAL_RANK_TYPE2.ordinal();
    }

    @Override
    public int m() {
        return R$layout.provider_result_vertical_rank_type2;
    }

    @Override
    public void b(BaseViewHolder helper, SearchResultItem item) {
        List<UGCVideo> videos;
        UGCVideo uGCVideo;
        String url;
        String thumbnail;
        UGCVideo uGCVideo2;
        String url2;
        String thumbnail2;
        UGCVideo uGCVideo3;
        String url3;
        String thumbnail3;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        UGCVerticalRank verticalRank = item.getVerticalRank();
        if (verticalRank == null || (videos = item.getVerticalRank().getVideos()) == null || (uGCVideo = (UGCVideo) CollectionsKt.k0(videos)) == null) {
            return;
        }
        ni.f.a aVar = ni.f.f67269a;
        ni.f.b bVarM = aVar.m(k());
        Cover cover = uGCVideo.getCover();
        String str = "";
        if (cover == null || (url = cover.getUrl()) == null) {
            url = "";
        }
        ni.f.b bVarG = bVarM.g(url);
        Cover cover2 = uGCVideo.getCover();
        if (cover2 == null || (thumbnail = cover2.getThumbnail()) == null) {
            thumbnail = "";
        }
        bVarG.l(thumbnail).d((ImageView) helper.getView(R$id.iv_cover));
        List<UGCVideo> videos2 = verticalRank.getVideos();
        if (videos2 == null || (uGCVideo3 = (UGCVideo) CollectionsKt.l0(videos2, 1)) == null) {
            kotlinx.coroutines.j.b(null, new ResultVerticalRankType2Provider$convert$2(helper, null), 1, null);
        } else {
            helper.setVisible(R$id.iv_cover1, true);
            ni.f.b bVarM2 = aVar.m(k());
            Cover cover3 = uGCVideo3.getCover();
            if (cover3 == null || (url3 = cover3.getUrl()) == null) {
                url3 = "";
            }
            ni.f.b bVarG2 = bVarM2.g(url3);
            Cover cover4 = uGCVideo.getCover();
            if (cover4 == null || (thumbnail3 = cover4.getThumbnail()) == null) {
                thumbnail3 = "";
            }
            bVarG2.l(thumbnail3).d((ImageView) helper.getView(R$id.iv_cover1));
        }
        List<UGCVideo> videos3 = verticalRank.getVideos();
        if (videos3 == null || (uGCVideo2 = (UGCVideo) CollectionsKt.l0(videos3, 2)) == null) {
            kotlinx.coroutines.j.b(null, new ResultVerticalRankType2Provider$convert$4(helper, null), 1, null);
        } else {
            helper.setVisible(R$id.iv_cover2, true);
            ni.f.b bVarM3 = aVar.m(k());
            Cover cover5 = uGCVideo2.getCover();
            if (cover5 == null || (url2 = cover5.getUrl()) == null) {
                url2 = "";
            }
            ni.f.b bVarG3 = bVarM3.g(url2);
            Cover cover6 = uGCVideo.getCover();
            if (cover6 != null && (thumbnail2 = cover6.getThumbnail()) != null) {
                str = thumbnail2;
            }
            bVarG3.l(str).d((ImageView) helper.getView(R$id.iv_cover2));
        }
        int i10 = R$id.tv_title;
        String title = verticalRank.getTitle();
        helper.setText(i10, title != null ? com.transsion.search_pugc.constant.a.d(title, k(), com.transsion.search_pugc.g.f50469h.a(k()).e()) : null);
        Integer count = verticalRank.getCount();
        if (count != null) {
            int iIntValue = count.intValue();
            if (iIntValue > 1) {
                helper.setText(R$id.tv_view_resource_tag, k().getString(R$string.videos, Integer.valueOf(iIntValue)));
            } else {
                helper.setText(R$id.tv_view_resource_tag, k().getString(R$string.video, Integer.valueOf(iIntValue)));
            }
        }
        uf.c.g(helper.getView(R$id.iv_view_resource_tag));
        com.transsion.baseui.util.k.a aVar2 = new com.transsion.baseui.util.k.a(R$drawable.ic_tag_collection);
        String string = k().getString(com.transsion.baseui.R$string.ugc_video_tv_collection);
        Intrinsics.g(string, "getString(...)");
        helper.setText(R$id.tv_info, com.transsion.baseui.util.q.g(CollectionsKt.q(aVar2, new com.transsion.baseui.util.k.b(string, Integer.valueOf(R$color.white_80)), new com.transsion.baseui.util.k.b(com.transsion.baseui.util.j.c(uGCVideo.getWatchNum(), k()), Integer.valueOf(R$color.white_60))), k(), false, 4, null));
    }
}
