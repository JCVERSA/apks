package com.transsion.home.adapter.operateUGC.provider;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.blankj.utilcode.util.Utils;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.material.imageview.ShapeableImageView;
import com.transsion.baseui.R$string;
import com.transsion.baseui.util.TimeUtilKt;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.fragment.tab.SubTabFragment;
import com.transsion.home.p004enum.HomeTabId;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.PostItemType;
import com.transsion.ugcvideodetail.api.UGCVideoTypeKt;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoCreator;
import com.transsion.wrapperad.R$color;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

public final class FeedsBigUGCProvider extends com.transsion.home.adapter.trending.provider.b {

    private final int f43125e;

    private final int f43126f = com.blankj.utilcode.util.y.e() - (com.blankj.utilcode.util.a0.a(12.0f) * 2);

    private final Lazy f43127g = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return FeedsBigUGCProvider.I(this.f43172a);
        }
    });

    public FeedsBigUGCProvider(int i10) {
        this.f43125e = i10;
    }

    public static final void G(OperateItem operateItem, FeedsBigUGCProvider feedsBigUGCProvider, BaseViewHolder baseViewHolder, View view) {
        UGCVideo feedsUGCVideo = operateItem.getFeedsUGCVideo();
        if (feedsUGCVideo != null) {
            Integer numValueOf = Integer.valueOf(feedsBigUGCProvider.f43125e);
            String opId = operateItem.getOpId();
            if (opId == null) {
                OperateItem originalOperateItem = operateItem.getOriginalOperateItem();
                opId = originalOperateItem != null ? originalOperateItem.getOpId() : null;
            }
            gu.c.h(feedsUGCVideo, numValueOf, opId);
        }
        rk.d.f71252c.c(baseViewHolder.getLayoutPosition(), operateItem, feedsBigUGCProvider.f43125e);
    }

    private final rk.d H() {
        return (rk.d) this.f43127g.getValue();
    }

    public static final rk.d I(FeedsBigUGCProvider feedsBigUGCProvider) {
        return new rk.d(SubTabFragment.INSTANCE.a(feedsBigUGCProvider.f43125e));
    }

    /* JADX WARN: Code duplicated, block: B:50:0x013c  */
    /* JADX WARN: Code duplicated, block: B:52:0x0152  */
    /* JADX WARN: Code duplicated, block: B:54:0x0158  */
    /* JADX WARN: Code duplicated, block: B:55:0x015d  */
    /* JADX WARN: Code duplicated, block: B:57:0x0163  */
    /* JADX WARN: Code duplicated, block: B:59:0x0169  */
    /* JADX WARN: Code duplicated, block: B:60:0x016e  */
    @Override
    public void b(final BaseViewHolder helper, final OperateItem item) {
        String ugcVideoId;
        Long publishTime;
        long jLongValue;
        String strJ;
        List listQ;
        Long publishTime2;
        long jLongValue2;
        String nickname;
        String url;
        String thumbnail;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        helper.itemView.setTag("UGCFeedsBig");
        UGCVideo feedsUGCVideo = item.getFeedsUGCVideo();
        if (feedsUGCVideo == null || (ugcVideoId = feedsUGCVideo.getUgcVideoId()) == null || ugcVideoId.length() == 0) {
            return;
        }
        ShapeableImageView shapeableImageView = (ShapeableImageView) helper.getViewOrNull(R$id.main_op_trending_grid_image);
        String str = "";
        if (shapeableImageView != null) {
            if (feedsUGCVideo.getBuiltIn()) {
                kotlinx.coroutines.k.d(o0.a(y0.c()), null, null, new FeedsBigUGCProvider$convert$1$1(feedsUGCVideo, shapeableImageView, null), 3, null);
            } else {
                ni.f.a aVar = ni.f.f67269a;
                Context context = shapeableImageView.getContext();
                Intrinsics.g(context, "getContext(...)");
                ni.f.b bVarM = aVar.m(context);
                Cover cover = feedsUGCVideo.getCover();
                if (cover == null || (url = cover.getUrl()) == null) {
                    url = "";
                }
                ni.f.b bVarM2 = bVarM.g(url).m(this.f43126f);
                Cover cover2 = feedsUGCVideo.getCover();
                if (cover2 == null || (thumbnail = cover2.getThumbnail()) == null) {
                    thumbnail = "";
                }
                bVarM2.l(thumbnail).i(R$color.module_01).d(shapeableImageView);
            }
        }
        TextView textView = (TextView) helper.getViewOrNull(R$id.main_op_trending_grid_title);
        if (textView != null) {
            textView.setText(feedsUGCVideo.getTitle());
        }
        helper.setText(R$id.main_op_trending_grid_corner, feedsUGCVideo.getCorner());
        ImageView imageView = (ImageView) helper.getViewOrNull(R$id.main_op_trending_grid_type_icon);
        if (imageView != null) {
            UGCVideoTypeKt.i(imageView, feedsUGCVideo, null, 4, null);
        }
        helper.setText(R$id.main_op_trending_grid_time_text, feedsUGCVideo.getTimeOrCount(k()));
        helper.setText(R$id.main_op_trending_grid_title, feedsUGCVideo.getTitle());
        if (feedsUGCVideo.isVerticalImmStyle()) {
            listQ = CollectionsKt.q("special_#shorts_icon", Utils.a().getString(R$string.ugc_video_shorts), com.transsion.baseui.util.j.c(feedsUGCVideo.getWatchNum(), k()));
        } else if (HomeTabId.INSTANCE.h(Integer.valueOf(this.f43125e), false)) {
            UGCVideoCreator creator = feedsUGCVideo.getCreator();
            String nickname2 = creator != null ? creator.getNickname() : null;
            if (nickname2 == null || nickname2.length() == 0) {
                String strC = com.transsion.baseui.util.j.c(feedsUGCVideo.getWatchNum(), k());
                if (this.f43125e == HomeTabId.UGC_Trending.getValue()) {
                    publishTime2 = feedsUGCVideo.getPublishTime();
                    if (publishTime2 != null) {
                        jLongValue2 = publishTime2.longValue();
                    } else {
                        jLongValue2 = 0;
                    }
                    strJ = TimeUtilKt.k(jLongValue2);
                } else {
                    publishTime = feedsUGCVideo.getPublishTime();
                    if (publishTime != null) {
                        jLongValue = publishTime.longValue();
                    } else {
                        jLongValue = 0;
                    }
                    strJ = TimeUtilKt.j(jLongValue);
                }
                listQ = CollectionsKt.q(strC, strJ);
            } else {
                String strC2 = com.transsion.baseui.util.j.c(feedsUGCVideo.getWatchNum(), k());
                UGCVideoCreator creator2 = feedsUGCVideo.getCreator();
                if (creator2 != null && (nickname = creator2.getNickname()) != null) {
                    str = nickname;
                }
                listQ = CollectionsKt.q(strC2, "special_#user_icon", str);
            }
        } else {
            String strC3 = com.transsion.baseui.util.j.c(feedsUGCVideo.getWatchNum(), k());
            if (this.f43125e == HomeTabId.UGC_Trending.getValue()) {
                publishTime2 = feedsUGCVideo.getPublishTime();
                if (publishTime2 != null) {
                    jLongValue2 = publishTime2.longValue();
                } else {
                    jLongValue2 = 0;
                }
                strJ = TimeUtilKt.k(jLongValue2);
            } else {
                publishTime = feedsUGCVideo.getPublishTime();
                if (publishTime != null) {
                    jLongValue = publishTime.longValue();
                } else {
                    jLongValue = 0;
                }
                strJ = TimeUtilKt.j(jLongValue);
            }
            listQ = CollectionsKt.q(strC3, strJ);
        }
        helper.setText(R$id.main_op_trending_grid_subtitle, com.transsion.baseui.util.q.e(listQ, k()));
        helper.itemView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                FeedsBigUGCProvider.G(item, this, helper, view);
            }
        });
        if (this.f43125e != HomeTabId.UGC_Trending.getValue()) {
            H().a(item, helper.getLayoutPosition(), 0L);
        }
    }

    @Override
    public int l() {
        return PostItemType.TRENDING_FEES_BIG.ordinal();
    }

    @Override
    public int m() {
        return R$layout.provider_ugc_item_big;
    }
}
