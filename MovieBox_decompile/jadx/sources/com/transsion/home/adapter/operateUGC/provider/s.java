package com.transsion.home.adapter.operateUGC.provider;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.Utils;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.cloud.tmc.integration.constants.IntegrationConstants;
import com.google.android.material.imageview.ShapeableImageView;
import com.mbridge.msdk.foundation.entity.CampaignEx;
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
import com.transsion.ugcvideodetail.api.bean.UGCContent;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;

public final class s extends BaseItemProvider {

    private final int f43210e;

    public static final class a {

        private Integer f43211a;

        private List f43212b;

        public a(Integer num, List contentList) {
            Intrinsics.h(contentList, "contentList");
            this.f43211a = num;
            this.f43212b = contentList;
        }

        public final List a() {
            return this.f43212b;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return Intrinsics.c(this.f43211a, aVar.f43211a) && Intrinsics.c(this.f43212b, aVar.f43212b);
        }

        public int hashCode() {
            Integer num = this.f43211a;
            return ((num == null ? 0 : num.hashCode()) * 31) + this.f43212b.hashCode();
        }

        public String toString() {
            return "MusicRankData(index=" + this.f43211a + ", contentList=" + this.f43212b + ")";
        }
    }

    public s(int i10) {
        this.f43210e = i10;
    }

    public static final void B(OperateItem operateItem, s sVar, View view) {
        String deepLink = operateItem.getDeepLink();
        if (deepLink != null) {
            ij.k.g(deepLink, "&filmListTitle=" + operateItem.getTitle());
        }
        sVar.E(operateItem);
    }

    public static final void C(OperateItem operateItem, s sVar, View view) {
        String deepLink = operateItem.getDeepLink();
        if (deepLink != null) {
            ij.k.g(deepLink, "&filmListTitle=" + operateItem.getTitle());
        }
        sVar.E(operateItem);
    }

    private final void D(OperateItem operateItem) {
        List<Object> data;
        HashMap map = new HashMap();
        map.put("module_name", IntegrationConstants.NAVIGATION_BAR_ALL_ACTION);
        BaseProviderMultiAdapter baseProviderMultiAdapterG = g();
        map.put(RequestParameters.POSITION, String.valueOf((baseProviderMultiAdapterG == null || (data = baseProviderMultiAdapterG.getData()) == null) ? null : Integer.valueOf(data.indexOf(operateItem))));
        String title = operateItem.getTitle();
        if (title == null) {
            title = "";
        }
        map.put(CampaignEx.JSON_KEY_TITLE, title);
        map.put("tabId", String.valueOf(this.f43210e));
        sk.b.a(operateItem, map);
        com.transsion.baselib.helper.a.f42121a.e(SubTabFragment.INSTANCE.a(this.f43210e), map);
    }

    private final void E(OperateItem operateItem) {
        List<Object> data;
        HashMap map = new HashMap();
        map.put("module_name", IntegrationConstants.NAVIGATION_BAR_ALL_ACTION);
        BaseProviderMultiAdapter baseProviderMultiAdapterG = g();
        map.put(RequestParameters.POSITION, String.valueOf((baseProviderMultiAdapterG == null || (data = baseProviderMultiAdapterG.getData()) == null) ? null : Integer.valueOf(data.indexOf(operateItem))));
        String title = operateItem.getTitle();
        if (title == null) {
            title = "";
        }
        map.put(CampaignEx.JSON_KEY_TITLE, title);
        map.put("tabId", String.valueOf(this.f43210e));
        sk.b.a(operateItem, map);
        com.transsion.baselib.helper.a.f42121a.f(SubTabFragment.INSTANCE.a(this.f43210e), map);
    }

    @Override
    public void b(BaseViewHolder helper, final OperateItem item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        TextView textView = (TextView) helper.getView(R$id.provider_ugc_common_title);
        textView.setText(item.getTitle());
        TextView textView2 = (TextView) helper.getView(R$id.provider_ugc_common_more_text);
        String deepLink = item.getDeepLink();
        if (deepLink == null || deepLink.length() == 0) {
            uf.c.h(textView2);
        } else {
            uf.c.k(textView2);
            textView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    s.B(item, this, view);
                }
            });
            textView2.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    s.C(item, this, view);
                }
            });
            D(item);
        }
        RecyclerView recyclerView = (RecyclerView) helper.getView(R$id.provider_ugc_common_recycler);
        b bVar = new b(0, item, this.f43210e, 1, null);
        recyclerView.setAdapter(bVar);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(k(), 0, false);
        linearLayoutManager.setItemPrefetchEnabled(true);
        recyclerView.setLayoutManager(linearLayoutManager);
        recyclerView.setOnFlingListener(null);
        new androidx.recyclerview.widget.n().attachToRecyclerView(recyclerView);
        ArrayList arrayList = new ArrayList();
        List<UGCContent> contentList = item.getContentList();
        if (contentList != null) {
            int iH = RangesKt.h(contentList.size(), 9);
            a aVar = null;
            for (int i10 = 0; i10 < iH; i10++) {
                if (aVar == null) {
                    aVar = new a(Integer.valueOf(i10 / 3), new ArrayList());
                }
                aVar.a().add(contentList.get(i10));
                if (aVar.a().size() == 3) {
                    arrayList.add(aVar);
                    aVar = null;
                }
            }
            bVar.n1(arrayList);
        }
    }

    @Override
    public int l() {
        return PostItemType.UGC_MUSIC_RANK.ordinal();
    }

    @Override
    public int m() {
        return R$layout.provider_ugc_op_common;
    }

    @Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u000e\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B!\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0004¢\u0006\u0004\b\t\u0010\nJ'\u0010\u0012\u001a\u00020\u00112\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u001f\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u001f\u0010\u0019\u001a\u00020\u00162\u0006\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0019\u0010\u0018J\u001f\u0010\u001c\u001a\u00020\u00162\u0006\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u001c\u0010\u001dR\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0014\u0010\b\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010!R\u0014\u0010#\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010!¨\u0006$"}, d2 = {"Lcom/transsion/home/adapter/operateUGC/provider/s$b;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/home/adapter/operateUGC/provider/s$a;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "", "layoutResId", "Lcom/transsion/home/bean/OperateItem;", "operateItem", "tabId", "<init>", "(ILcom/transsion/home/bean/OperateItem;I)V", "Landroid/content/Context;", "context", "Lcom/transsion/ugcvideodetail/api/bean/UGCContent;", "ugcContent", "Landroid/view/ViewGroup;", "parent", "Landroid/view/View;", "E1", "(Landroid/content/Context;Lcom/transsion/ugcvideodetail/api/bean/UGCContent;Landroid/view/ViewGroup;)Landroid/view/View;", "rankListItem", RequestParameters.POSITION, "", "F1", "(Lcom/transsion/home/adapter/operateUGC/provider/s$a;I)V", "G1", "holder", WebConstants.FIELD_ITEM, "C1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/adapter/operateUGC/provider/s$a;)V", "F", "Lcom/transsion/home/bean/OperateItem;", "G", "I", "H", "perWidth", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    @SourceDebugExtension
    public static final class b extends BaseQuickAdapter {
        public static final int I = 8;

        private final OperateItem operateItem;

        private final int tabId;

        private final int perWidth;

        public b(int i10, OperateItem operateItem, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
            this((i12 & 1) != 0 ? R$layout.item_provider_ranklist : i10, operateItem, i11);
        }

        public static final void D1(UGCContent uGCContent, b bVar, a aVar, int i10, View view) {
            gu.c.e(uGCContent, Integer.valueOf(bVar.tabId), bVar.operateItem.getOpId());
            bVar.G1(aVar, i10);
        }

        private final View E1(Context context, UGCContent ugcContent, ViewGroup parent) {
            String url;
            String strJ;
            List listQ;
            View viewInflate = LayoutInflater.from(context).inflate(R$layout.item_ugc_music_rank, parent, false);
            UGCVideo video = ugcContent.getVideo();
            if (video == null) {
                Intrinsics.e(viewInflate);
                return viewInflate;
            }
            View viewFindViewById = viewInflate.findViewById(R$id.home_ugc_music_rank_image);
            Intrinsics.g(viewFindViewById, "findViewById(...)");
            ShapeableImageView shapeableImageView = (ShapeableImageView) viewFindViewById;
            ni.f.b bVarM = ni.f.f67269a.m(context);
            Cover cover = video.getCover();
            if (cover == null || (url = cover.getUrl()) == null) {
                url = "";
            }
            bVarM.g(url).m(this.perWidth).d(shapeableImageView);
            ((TextView) viewInflate.findViewById(R$id.home_ugc_music_rank_corner)).setText(video.getCorner());
            ImageView imageView = (ImageView) viewInflate.findViewById(R$id.home_ugc_music_rank_type_icon);
            Intrinsics.e(imageView);
            UGCVideoTypeKt.i(imageView, video, null, 4, null);
            TextView textView = (TextView) viewInflate.findViewById(R$id.home_ugc_music_rank_time_text);
            Long duration = video.getDuration();
            textView.setText(TimeUtilKt.a(duration != null ? Integer.valueOf((int) duration.longValue()) : null));
            ((TextView) viewInflate.findViewById(R$id.home_ugc_music_rank_title)).setText(video.getTitle());
            if (video.isVerticalImmStyle()) {
                listQ = CollectionsKt.q("special_#shorts_icon", Utils.a().getString(R$string.ugc_video_shorts), com.transsion.baseui.util.j.c(video.getWatchNum(), context));
            } else {
                String strC = com.transsion.baseui.util.j.c(video.getWatchNum(), context);
                if (this.tabId == HomeTabId.UGC_Trending.getValue()) {
                    Long publishTime = video.getPublishTime();
                    strJ = TimeUtilKt.k(publishTime != null ? publishTime.longValue() : 0L);
                } else {
                    Long publishTime2 = video.getPublishTime();
                    strJ = TimeUtilKt.j(publishTime2 != null ? publishTime2.longValue() : 0L);
                }
                listQ = CollectionsKt.q(strC, strJ);
            }
            ((TextView) viewInflate.findViewById(R$id.home_ugc_music_rank_subtitle)).setText(com.transsion.baseui.util.q.e(listQ, context));
            Intrinsics.e(viewInflate);
            return viewInflate;
        }

        private final void F1(a rankListItem, int position) {
            UGCVideo video;
            UGCContent uGCContent = (UGCContent) CollectionsKt.l0(rankListItem.a(), position);
            if (uGCContent == null || (video = uGCContent.getVideo()) == null) {
                return;
            }
            rk.d.a.e(rk.d.f71252c, this.tabId, position, this.operateItem, video, null, 16, null);
        }

        private final void G1(a rankListItem, int position) {
            rk.d.a.g(rk.d.f71252c, this.tabId, position, this.operateItem, ((UGCContent) rankListItem.a().get(position)).getVideo(), null, 16, null);
        }

        @Override
        public void F(BaseViewHolder holder, final a item) {
            Intrinsics.h(holder, "holder");
            Intrinsics.h(item, "item");
            ViewGroup viewGroup = (LinearLayout) holder.getView(R$id.sub_operation_rankinglist_root);
            viewGroup.removeAllViews();
            ViewGroup.LayoutParams layoutParams = viewGroup.getLayoutParams();
            Intrinsics.f(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            marginLayoutParams.width = this.perWidth;
            marginLayoutParams.rightMargin = lj.a.b(8);
            viewGroup.setLayoutParams(marginLayoutParams);
            viewGroup.setBackground(null);
            final int i10 = 0;
            for (Object obj : item.a()) {
                int i11 = i10 + 1;
                if (i10 < 0) {
                    CollectionsKt.u();
                }
                final UGCContent uGCContent = (UGCContent) obj;
                View viewE1 = E1(getContext(), uGCContent, viewGroup);
                viewGroup.addView(viewE1);
                viewE1.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public final void onClick(View view) {
                        s.b.D1(uGCContent, this, item, i10, view);
                    }
                });
                F1(item, i10);
                i10 = i11;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(int i10, OperateItem operateItem, int i11) {
            super(i10, null, 2, null);
            Intrinsics.h(operateItem, "operateItem");
            this.operateItem = operateItem;
            this.tabId = i11;
            this.perWidth = com.blankj.utilcode.util.y.e() - lj.a.b(68);
        }
    }
}
