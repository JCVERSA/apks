package com.transsion.home.adapter.operateUGC.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.a0;
import com.blankj.utilcode.util.y;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.material.imageview.ShapeableImageView;
import com.transsion.baseui.util.TimeUtilKt;
import com.transsion.baseui.util.j;
import com.transsion.baseui.util.q;
import com.transsion.home.R$drawable;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.bean.RankingListItem;
import com.transsion.home.p004enum.HomeTabId;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.ugcvideodetail.api.bean.UGCContent;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoCreator;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u000e\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B!\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0004¢\u0006\u0004\b\t\u0010\nJ1\u0010\u0013\u001a\u00020\u00122\u0006\u0010\f\u001a\u00020\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u001f\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u001f\u0010\u001c\u001a\u00020\u00192\u0006\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u001c\u0010\u001bJ\u001f\u0010\u001f\u001a\u00020\u00192\u0006\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u001e\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u001f\u0010 R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\"R\u0014\u0010\b\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010$R\u0014\u0010&\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010$¨\u0006'"}, d2 = {"Lcom/transsion/home/adapter/operateUGC/adapter/d;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/home/bean/RankingListItem;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "", "layoutResId", "Lcom/transsion/home/bean/OperateItem;", "operateItem", "tabId", "<init>", "(ILcom/transsion/home/bean/OperateItem;I)V", "Landroid/content/Context;", "context", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;", "ugcVideo", "Landroid/view/ViewGroup;", "parent", RequestParameters.POSITION, "Landroid/view/View;", "F1", "(Landroid/content/Context;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Landroid/view/ViewGroup;I)Landroid/view/View;", "pos", "E1", "(I)I", "rankListItem", "", "G1", "(Lcom/transsion/home/bean/RankingListItem;I)V", "H1", "holder", WebConstants.FIELD_ITEM, "C1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/RankingListItem;)V", "F", "Lcom/transsion/home/bean/OperateItem;", "G", "I", "H", "perWidth", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class d extends BaseQuickAdapter {
    public static final int I = 8;

    private final OperateItem operateItem;

    private final int tabId;

    private final int perWidth;

    public d(int i10, OperateItem operateItem, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? R$layout.item_ugc_provider_ranklist : i10, operateItem, i11);
    }

    public static final void D1(UGCContent uGCContent, d dVar, RankingListItem rankingListItem, int i10, View view) {
        gu.c.h(uGCContent.getVideo(), Integer.valueOf(dVar.tabId), dVar.operateItem.getOpId());
        dVar.H1(rankingListItem, i10);
    }

    private final int E1(int pos) {
        if (pos == 0) {
            return R$drawable.ic_ugc_rank_01;
        }
        if (pos != 1) {
            return pos != 2 ? R$drawable.ic_ugc_rank_default : R$drawable.ic_ugc_rank_03;
        }
        return R$drawable.ic_ugc_rank_02;
    }

    /* JADX WARN: Code duplicated, block: B:46:0x00bd A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:47:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:50:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:55:0x00e4  */
    private final View F1(Context context, UGCVideo ugcVideo, ViewGroup parent, int position) {
        String url;
        String corner;
        String timeOrCount;
        long jLongValue;
        String strJ;
        Long publishTime;
        List listQ;
        Long publishTime2;
        String strValueOf;
        String nickname;
        UGCVideoCreator creator;
        UGCVideoCreator creator2;
        Cover cover;
        View viewInflate = LayoutInflater.from(context).inflate(R$layout.item_ugc_provider_ranklist_items, parent, false);
        View viewFindViewById = viewInflate.findViewById(R$id.home_ugc_rankinglist_cover);
        Intrinsics.g(viewFindViewById, "findViewById(...)");
        ShapeableImageView shapeableImageView = (ShapeableImageView) viewFindViewById;
        ni.f.b bVarM = ni.f.f67269a.m(context);
        if (ugcVideo == null || (cover = ugcVideo.getCover()) == null || (url = cover.getUrl()) == null) {
            url = "";
        }
        bVarM.g(url).d(shapeableImageView);
        ((TextView) viewInflate.findViewById(R$id.home_ugc_rankinglist_title)).setText(ugcVideo != null ? ugcVideo.getTitle() : null);
        TextView textView = (TextView) viewInflate.findViewById(R$id.home_ugc_rankinglist_corner_text);
        if (ugcVideo == null || (corner = ugcVideo.getCorner()) == null) {
            corner = "";
        }
        textView.setText(corner);
        TextView textView2 = (TextView) viewInflate.findViewById(R$id.home_ugc_ranklist_time_text);
        if (ugcVideo == null || (timeOrCount = ugcVideo.getTimeOrCount(context)) == null) {
            timeOrCount = "";
        }
        textView2.setText(timeOrCount);
        if (HomeTabId.INSTANCE.h(Integer.valueOf(this.tabId), false)) {
            String nickname2 = (ugcVideo == null || (creator2 = ugcVideo.getCreator()) == null) ? null : creator2.getNickname();
            if (nickname2 == null || nickname2.length() == 0) {
                String strC = j.c(ugcVideo != null ? ugcVideo.getWatchNum() : null, context);
                jLongValue = 0;
                if (this.tabId == HomeTabId.UGC_Trending.getValue()) {
                    if (ugcVideo != null) {
                        jLongValue = publishTime2.longValue();
                    }
                    strJ = TimeUtilKt.k(jLongValue);
                } else {
                    if (ugcVideo != null) {
                        jLongValue = publishTime.longValue();
                    }
                    strJ = TimeUtilKt.j(jLongValue);
                }
                listQ = CollectionsKt.q(strC, strJ);
            } else {
                String strC2 = j.c(ugcVideo != null ? ugcVideo.getWatchNum() : null, context);
                if (ugcVideo == null || (creator = ugcVideo.getCreator()) == null || (nickname = creator.getNickname()) == null) {
                    nickname = "";
                }
                listQ = CollectionsKt.q(strC2, "special_#user_icon", nickname);
            }
        } else {
            String strC3 = j.c(ugcVideo != null ? ugcVideo.getWatchNum() : null, context);
            jLongValue = 0;
            if (this.tabId == HomeTabId.UGC_Trending.getValue()) {
                if (ugcVideo != null && (publishTime2 = ugcVideo.getPublishTime()) != null) {
                    jLongValue = publishTime2.longValue();
                }
                strJ = TimeUtilKt.k(jLongValue);
            } else {
                if (ugcVideo != null && (publishTime = ugcVideo.getPublishTime()) != null) {
                    jLongValue = publishTime.longValue();
                }
                strJ = TimeUtilKt.j(jLongValue);
            }
            listQ = CollectionsKt.q(strC3, strJ);
        }
        ((TextView) viewInflate.findViewById(R$id.home_ugc_rankinglist_tag)).setText(q.e(listQ, context));
        AppCompatImageView appCompatImageView = (AppCompatImageView) viewInflate.findViewById(R$id.home_ugc_rankinglist_rank);
        if (appCompatImageView != null) {
            appCompatImageView.setImageResource(E1(position));
        }
        TextView textView3 = (TextView) viewInflate.findViewById(R$id.home_ugc_rankinglist_text);
        if (position > 2) {
            if (position < 9) {
                strValueOf = "0" + (position + 1);
            } else {
                strValueOf = String.valueOf(position + 1);
            }
            textView3.setText(strValueOf);
        } else {
            textView3.setText("");
        }
        Intrinsics.e(viewInflate);
        return viewInflate;
    }

    private final void G1(RankingListItem rankListItem, int position) {
        UGCContent uGCContent;
        List<UGCContent> contentList = rankListItem.getContentList();
        UGCVideo video = (contentList == null || (uGCContent = contentList.get(position)) == null) ? null : uGCContent.getVideo();
        rk.d.a aVar = rk.d.f71252c;
        int i10 = this.tabId;
        OperateItem operateItem = this.operateItem;
        String title = rankListItem.getTitle();
        if (title == null) {
            title = "";
        }
        aVar.d(i10, position, operateItem, video, MapsKt.f(TuplesKt.a("page_tab_name", title)));
    }

    private final void H1(RankingListItem rankListItem, int position) {
        UGCContent uGCContent;
        List<UGCContent> contentList = rankListItem.getContentList();
        UGCVideo video = (contentList == null || (uGCContent = contentList.get(position)) == null) ? null : uGCContent.getVideo();
        rk.d.a aVar = rk.d.f71252c;
        int i10 = this.tabId;
        OperateItem operateItem = this.operateItem;
        String title = rankListItem.getTitle();
        if (title == null) {
            title = "";
        }
        aVar.f(i10, position, operateItem, video, MapsKt.f(TuplesKt.a("page_tab_name", title)));
    }

    @Override
    public void F(BaseViewHolder holder, final RankingListItem item) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        LinearLayout linearLayout = (LinearLayout) holder.getView(R$id.home_ugc_rankinglist_liner);
        linearLayout.removeAllViews();
        ViewGroup.LayoutParams layoutParams = linearLayout.getLayoutParams();
        layoutParams.width = this.perWidth;
        linearLayout.setLayoutParams(layoutParams);
        List<UGCContent> contentList = item.getContentList();
        if (contentList != null) {
            final int i10 = 0;
            for (Object obj : contentList) {
                int i11 = i10 + 1;
                if (i10 < 0) {
                    CollectionsKt.u();
                }
                final UGCContent uGCContent = (UGCContent) obj;
                View viewF1 = F1(getContext(), uGCContent.getVideo(), linearLayout, i10);
                linearLayout.addView(viewF1);
                viewF1.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public final void onClick(View view) {
                        d.D1(uGCContent, this, item, i10, view);
                    }
                });
                G1(item, i10);
                i10 = i11;
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(int i10, OperateItem operateItem, int i11) {
        super(i10, null, 2, null);
        Intrinsics.h(operateItem, "operateItem");
        this.operateItem = operateItem;
        this.tabId = i11;
        this.perWidth = Math.min(y.e(), y.c()) - a0.a(54.0f);
    }
}
