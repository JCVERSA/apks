package com.transsion.shorttv_pugc.ui.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.blankj.utilcode.util.a0;
import com.blankj.utilcode.util.y;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.material.imageview.ShapeableImageView;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.R$layout;
import com.transsion.shorttv_pugc.bean.Cover;
import com.transsion.shorttv_pugc.bean.OperateItem;
import com.transsion.shorttv_pugc.bean.Subject;
import com.transsion.shorttv_pugc.utils.ShortTvExtKt;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0012\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B1\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00020\t¢\u0006\u0004\b\f\u0010\rJ\u001f\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u0015\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\u0013¢\u0006\u0004\b\u0014\u0010\u0015J\u001f\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u0019\u0010\u001aJ\u001f\u0010\u001c\u001a\u00020\u00102\u0006\u0010\u001b\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u001c\u0010\u001dR\u0014\u0010\u0006\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0014\u0010\b\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010!R\u0014\u0010#\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010\u001fR\u0014\u0010$\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010\u001fR\u0018\u0010'\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010&¨\u0006("}, d2 = {"Lcom/transsion/shorttv_pugc/ui/adapter/ShortTvOpRankingAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/shorttv_pugc/bean/Subject;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "", "layoutResId", "tabId", "", "pageName", "", "isHorizontal", "isTablet", "<init>", "(IILjava/lang/String;ZZ)V", WebConstants.FIELD_ITEM, "pos", "", "C1", "(Lcom/transsion/shorttv_pugc/bean/Subject;I)V", "Lcom/transsion/shorttv_pugc/bean/OperateItem;", "D1", "(Lcom/transsion/shorttv_pugc/bean/OperateItem;)V", "Landroid/view/ViewGroup;", "parent", "viewType", "y0", "(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "holder", "B1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv_pugc/bean/Subject;)V", "F", "I", "G", "Ljava/lang/String;", "H", "itemWidth", "itemHeight", "J", "Lcom/transsion/shorttv_pugc/bean/OperateItem;", "operateItem", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ShortTvOpRankingAdapter extends BaseQuickAdapter {

    private final int tabId;

    private final String pageName;

    private final int itemWidth;

    private final int itemHeight;

    private OperateItem operateItem;

    public ShortTvOpRankingAdapter(int i10, int i11, String str, boolean z10, boolean z11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? R$layout.pugc_short_tv_op_item_movie_rank : i10, i11, str, z10, z11);
    }

    private final void C1(Subject item, int pos) {
        HashMap map = new HashMap();
        map.put("event_type", "browse_rank_item");
        map.put("sequence", String.valueOf(pos));
        map.put("tabId", String.valueOf(this.tabId));
        OperateItem operateItem = this.operateItem;
        if (operateItem != null) {
            ShortTvExtKt.a(operateItem, map);
        }
        ShortTvExtKt.c(item, map);
        qi.h.f69682a.z(this.pageName, map);
    }

    @Override
    public void F(BaseViewHolder holder, Subject item) {
        String thumbnail;
        String url;
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        int iA = ls.b.a(getData(), item);
        z(holder, getItemViewType(iA));
        ShapeableImageView shapeableImageView = (ShapeableImageView) holder.getViewOrNull(R$id.main_op_movie_rank_image);
        if (shapeableImageView != null) {
            if (item.getBuiltIn()) {
                kotlinx.coroutines.k.d(o0.a(y0.c()), null, null, new ShortTvOpRankingAdapter$convert$1$1(item, shapeableImageView, null), 3, null);
            } else {
                is.b.a aVar = is.b.f62607a;
                Context context = shapeableImageView.getContext();
                Intrinsics.g(context, "getContext(...)");
                Cover cover = item.getCover();
                String str = (cover == null || (url = cover.getUrl()) == null) ? "" : url;
                int i10 = this.itemWidth;
                int i11 = this.itemHeight;
                Cover cover2 = item.getCover();
                aVar.j(context, shapeableImageView, str, (8120 & 8) != 0 ? aVar.c() : i10, (8120 & 16) != 0 ? aVar.b() : i11, (8120 & 32) != 0, (8120 & 64) != 0 ? "" : (cover2 == null || (thumbnail = cover2.getThumbnail()) == null) ? "" : thumbnail, (8120 & 128) != 0, (8120 & 256) != 0, (8120 & 512) != 0 ? false : false, (8120 & 1024) != 0 ? false : false, (8120 & 2048) != 0 ? false : false, (8120 & 4096) != 0 ? 25 : 0);
            }
            if (shapeableImageView.getLayoutParams().width != this.itemWidth || shapeableImageView.getLayoutParams().height != this.itemHeight) {
                shapeableImageView.getLayoutParams().width = this.itemWidth;
                shapeableImageView.getLayoutParams().height = this.itemHeight;
            }
        }
        if (P(iA) == 100) {
            return;
        }
        TextView textView = (TextView) holder.getViewOrNull(R$id.main_op_movie_rank_title);
        if (textView != null) {
            textView.setText(item.getTitle());
            textView.setMaxWidth(this.itemWidth);
        }
        holder.setText(R$id.main_op_movie_rank_corner, item.getCorner());
        C1(item, iA);
    }

    public final void D1(OperateItem item) {
        Intrinsics.h(item, "item");
        this.operateItem = item;
    }

    @Override
    protected BaseViewHolder y0(ViewGroup parent, int viewType) {
        Intrinsics.h(parent, "parent");
        if (viewType != 100) {
            BaseViewHolder baseViewHolderY0 = super.y0(parent, viewType);
            ShapeableImageView shapeableImageView = (ShapeableImageView) baseViewHolderY0.getViewOrNull(R$id.main_op_movie_rank_image);
            if (shapeableImageView != null) {
                shapeableImageView.getLayoutParams().width = this.itemWidth;
                shapeableImageView.getLayoutParams().height = this.itemHeight;
            }
            return baseViewHolderY0;
        }
        View viewInflate = LayoutInflater.from(parent.getContext()).inflate(R$layout.pugc_short_tv_op_item_movie_rank_more, parent, false);
        View viewFindViewById = viewInflate.findViewById(R$id.main_op_movie_rank_image);
        if (viewFindViewById != null) {
            viewFindViewById.getLayoutParams().width = this.itemWidth;
            viewFindViewById.getLayoutParams().height = this.itemHeight;
        }
        View viewFindViewById2 = viewInflate.findViewById(R$id.main_op_movie_rank_more_mask);
        viewFindViewById2.getLayoutParams().width = this.itemWidth;
        viewFindViewById2.getLayoutParams().height = this.itemHeight;
        Intrinsics.e(viewInflate);
        return new BaseViewHolder(viewInflate);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShortTvOpRankingAdapter(int i10, int i11, String pageName, boolean z10, boolean z11) {
        super(i10, null, 2, null);
        Intrinsics.h(pageName, "pageName");
        this.tabId = i11;
        this.pageName = pageName;
        int i12 = z10 ? 2 : z11 ? 4 : 3;
        float f10 = z10 ? 0.56f : 1.39f;
        int iA = a0.a(((((a0.b(RangesKt.h(y.e(), y.c())) - 12) - (i12 * 8)) - 12) * 1.0f) / i12);
        this.itemWidth = iA;
        this.itemHeight = (int) (iA * f10);
    }
}
