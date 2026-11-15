package com.transsion.postdetail.ui.adapter.favorite;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.Utils;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.material.imageview.ShapeableImageView;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.view.CornerTextView;
import com.tn.lib.widget.R$string;
import com.transsion.baseui.util.TimeUtilKt;
import com.transsion.baseui.util.j;
import com.transsion.baseui.util.q;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.postdetail.R$id;
import com.transsion.postdetail.R$layout;
import com.transsion.ugcvideodetail.api.UGCVideoTypeKt;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoBelongToCollection;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import ni.f;
import t6.h;
import t6.i;
import yg.l;

@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\u0018\u0000 !2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0002\"#B)\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ%\u0010\u000f\u001a\u00020\r2\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\f2\u0006\u0010\u000e\u001a\u00020\rH\u0014¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0014\u001a\u00020\u00132\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0018\u0010\u0019R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0018\u0010 \u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001f¨\u0006$"}, d2 = {"Lcom/transsion/postdetail/ui/adapter/favorite/b;", "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;", "Lt6/i;", "", "data", "Lbj/b;", "exposureHelper", "", "showNumberTh", "<init>", "(Ljava/util/List;Lbj/b;Z)V", "", "", RequestParameters.POSITION, "N1", "(Ljava/util/List;I)I", "Lcom/transsion/postdetail/ui/adapter/favorite/a;", "itemClickListener", "", "Q1", "(Lcom/transsion/postdetail/ui/adapter/favorite/a;)V", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "holder", "B0", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V", "G", "Lbj/b;", "H", "Z", "I", "Lcom/transsion/postdetail/ui/adapter/favorite/a;", "clickListener", "J", "a", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class b extends BaseProviderMultiAdapter<UGCVideo> implements i {
    private static final String K = "UgcFavoriteFeedAdapter";
    public static final int L = 1;

    private final bj.b exposureHelper;

    private final boolean showNumberTh;

    private a clickListener;

    public static final class C0622b extends BaseItemProvider {

        private final bj.b f47340e;

        private final boolean f47341f;

        private a f47342g;

        private final String f47343h = "/ugc/favorite";

        public C0622b(bj.b bVar, boolean z10) {
            this.f47340e = bVar;
            this.f47341f = z10;
        }

        public static final void A(C0622b c0622b, UGCVideo uGCVideo, Ref.IntRef intRef, View view) {
            if (!l.f76264a.e()) {
                fh.b.f60176a.d(R$string.no_network_toast);
                return;
            }
            a aVar = c0622b.f47342g;
            if (aVar != null) {
                aVar.a(uGCVideo);
            }
            c0622b.B(WebConstants.FIELD_ITEM, uGCVideo, intRef.element);
        }

        private final void B(String str, UGCVideo uGCVideo, int i10) {
            HashMap map = new HashMap();
            map.put("module_name", str);
            map.put("ops", String.valueOf(uGCVideo.getOps()));
            map.put("content_id", String.valueOf(uGCVideo.getUgcVideoId()));
            UGCVideoBelongToCollection belongToCollection = uGCVideo.getBelongToCollection();
            map.put("belong_to_collection_id", String.valueOf(belongToCollection != null ? belongToCollection.getCollectionId() : null));
            map.put(RequestParameters.POSITION, String.valueOf(i10));
            map.put("refer_subject_id", String.valueOf(uGCVideo.getSubjectId()));
            map.put("content_type", "ugc_video");
            com.transsion.baselib.helper.a.f42121a.b(this.f47343h, map);
        }

        public final void C(a aVar) {
            this.f47342g = aVar;
        }

        @Override
        public int l() {
            return 1;
        }

        @Override
        public int m() {
            return R$layout.fragment_favorite_item_waterfall_feed;
        }

        @Override
        public void b(BaseViewHolder holder, final UGCVideo feedItem) {
            String thumbnail;
            Intrinsics.h(holder, "holder");
            Intrinsics.h(feedItem, "feedItem");
            final Ref.IntRef intRef = new Ref.IntRef();
            intRef.element = holder.getBindingAdapterPosition();
            ShapeableImageView shapeableImageView = (ShapeableImageView) holder.getViewOrNull(R$id.coverImage);
            if (shapeableImageView != null) {
                f.a aVar = f.f67269a;
                Context context = shapeableImageView.getContext();
                Intrinsics.g(context, "getContext(...)");
                f.b bVarM = aVar.m(context);
                Cover cover = feedItem.getCover();
                f.b bVarG = bVarM.g(cover != null ? cover.getUrl() : null);
                Cover cover2 = feedItem.getCover();
                if (cover2 == null || (thumbnail = cover2.getThumbnail()) == null) {
                    thumbnail = "";
                }
                bVarG.l(thumbnail).d(shapeableImageView);
                shapeableImageView.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public final void onClick(View view) {
                        b.C0622b.A(this.f47344a, feedItem, intRef, view);
                    }
                });
            }
            String corner = feedItem.getCorner();
            if (corner == null) {
                CornerTextView cornerTextView = (CornerTextView) holder.getViewOrNull(R$id.languageTag);
                if (cornerTextView != null) {
                    cornerTextView.setVisibility(4);
                }
            } else {
                holder.setText(R$id.languageTag, corner);
            }
            ImageView imageView = (ImageView) holder.getViewOrNull(R$id.trending_grid_type_icon);
            if (imageView != null) {
                UGCVideoTypeKt.i(imageView, feedItem, null, 4, null);
            }
            int i10 = R$id.trending_grid_time_text;
            Long duration = feedItem.getDuration();
            holder.setText(i10, TimeUtilKt.a(duration != null ? Integer.valueOf((int) duration.longValue()) : null));
            holder.setText(R$id.videoTitle, feedItem.getTitle());
            holder.setText(R$id.videoInfo, q.e(feedItem.isVerticalImmStyle() ? CollectionsKt.q("special_#shorts_icon", Utils.a().getString(com.transsion.baseui.R$string.ugc_video_shorts), j.c(feedItem.getWatchNum(), k())) : CollectionsKt.q(j.c(feedItem.getWatchNum(), k()), TimeUtilKt.m(String.valueOf(feedItem.getPublishTime()))), k()));
        }
    }

    public b(List list, bj.b bVar, boolean z10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, bVar, (i10 & 4) != 0 ? false : z10);
    }

    @Override
    public void onViewAttachedToWindow(BaseViewHolder holder) {
        Intrinsics.h(holder, "holder");
        super.onViewAttachedToWindow(holder);
        int bindingAdapterPosition = holder.getBindingAdapterPosition();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("曝光的位置position11: ");
        sb2.append(bindingAdapterPosition);
        bj.b bVar = this.exposureHelper;
        if (bVar != null) {
            RecyclerView.m layoutManager = getRecyclerView().getLayoutManager();
            Intrinsics.f(layoutManager, "null cannot be cast to non-null type androidx.recyclerview.widget.StaggeredGridLayoutManager");
            bj.b.j(bVar, (StaggeredGridLayoutManager) layoutManager, bindingAdapterPosition, true, false, 8, null);
        }
    }

    @Override
    protected int N1(List<? extends UGCVideo> data, int position) {
        Intrinsics.h(data, "data");
        return 1;
    }

    public final void Q1(a itemClickListener) {
        this.clickListener = itemClickListener;
        C0622b c0622b = new C0622b(this.exposureHelper, this.showNumberTh);
        c0622b.C(this.clickListener);
        F1(c0622b);
    }

    @Override
    public t6.f b(BaseQuickAdapter baseQuickAdapter) {
        return h.a(this, baseQuickAdapter);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(List<UGCVideo> data, bj.b bVar, boolean z10) {
        super(data);
        Intrinsics.h(data, "data");
        this.exposureHelper = bVar;
        this.showNumberTh = z10;
    }
}
