package com.transsion.home.adapter.trending.adapter;

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
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.fragment.tab.SubTabFragment;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import ij.k;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import ni.f;
import sk.b;
import zk.c;

@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0011\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B;\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\n\u001a\u00020\u0004\u0012\u0006\u0010\u000b\u001a\u00020\b\u0012\u0006\u0010\f\u001a\u00020\b¢\u0006\u0004\b\r\u0010\u000eJ\u001f\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u001f\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u0017\u0010\u0018J\u001f\u0010\u001a\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u001a\u0010\u001bR\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0014\u0010\n\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010!R\u0014\u0010\"\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010!R\u0014\u0010$\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010!¨\u0006%"}, d2 = {"Lcom/transsion/home/adapter/trending/adapter/OpMovieRankAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/moviedetailapi/bean/Subject;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "", "layoutResId", "Lcom/transsion/home/bean/OperateItem;", "operateItem", "", "isSubTab", "tabId", "isHorizontal", "isTablet", "<init>", "(ILcom/transsion/home/bean/OperateItem;ZIZZ)V", WebConstants.FIELD_ITEM, "pos", "", "C1", "(Lcom/transsion/moviedetailapi/bean/Subject;I)V", "Landroid/view/ViewGroup;", "parent", "viewType", "y0", "(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "holder", "B1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/Subject;)V", "F", "Lcom/transsion/home/bean/OperateItem;", "G", "Z", "H", "I", "itemWidth", "J", "itemHeight", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class OpMovieRankAdapter extends BaseQuickAdapter {
    public static final int K = 8;

    private final OperateItem operateItem;

    private final boolean isSubTab;

    private final int tabId;

    private final int itemWidth;

    private final int itemHeight;

    public OpMovieRankAdapter(int i10, OperateItem operateItem, boolean z10, int i11, boolean z11, boolean z12, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? R$layout.item_main_operation_movie_rank : i10, operateItem, z10, i11, z11, z12);
    }

    private final void C1(Subject item, int pos) {
        HashMap map = new HashMap();
        map.put("event_type", "browse_rank_item");
        map.put("sequence", String.valueOf(pos));
        map.put("tabId", String.valueOf(this.tabId));
        OperateItem operateItem = this.operateItem;
        if (operateItem != null) {
            b.a(operateItem, map);
        }
        b.d(item, map);
        com.transsion.baselib.helper.a.f42121a.e(SubTabFragment.INSTANCE.a(this.tabId), map);
    }

    @Override
    public void F(BaseViewHolder holder, Subject item) {
        String url;
        String thumbnail;
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        int iE = k.e(getData(), item);
        z(holder, getItemViewType(iE));
        ShapeableImageView shapeableImageView = (ShapeableImageView) holder.getViewOrNull(R$id.main_op_movie_rank_image);
        if (shapeableImageView != null) {
            if (item.getBuiltIn()) {
                kotlinx.coroutines.k.d(o0.a(y0.c()), null, null, new OpMovieRankAdapter$convert$1$1(item, shapeableImageView, null), 3, null);
            } else {
                f.a aVar = f.f67269a;
                Context context = shapeableImageView.getContext();
                Intrinsics.g(context, "getContext(...)");
                f.b bVarM = aVar.m(context);
                Cover cover = item.getCover();
                String str = "";
                if (cover == null || (url = cover.getUrl()) == null) {
                    url = "";
                }
                f.b bVarG = bVarM.g(url);
                Cover cover2 = item.getCover();
                if (cover2 != null && (thumbnail = cover2.getThumbnail()) != null) {
                    str = thumbnail;
                }
                bVarG.l(str).m(this.itemWidth).c(this.itemHeight).d(shapeableImageView);
            }
            if (shapeableImageView.getLayoutParams().width != this.itemWidth || shapeableImageView.getLayoutParams().height != this.itemHeight) {
                shapeableImageView.getLayoutParams().width = this.itemWidth;
                shapeableImageView.getLayoutParams().height = this.itemHeight;
            }
        }
        if (P(iE) == 100) {
            return;
        }
        TextView textView = (TextView) holder.getViewOrNull(R$id.main_op_movie_rank_title);
        if (textView != null) {
            textView.setText(item.getTitle());
            textView.setMaxWidth(this.itemWidth);
        }
        holder.setText(R$id.main_op_movie_rank_corner, item.getCorner());
        if (this.isSubTab) {
            C1(item, iE);
        } else {
            c.f76806a.g(item, iE, this.operateItem);
        }
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
        View viewInflate = LayoutInflater.from(parent.getContext()).inflate(R$layout.item_main_operation_movie_rank_more, parent, false);
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

    public OpMovieRankAdapter(int i10, OperateItem operateItem, boolean z10, int i11, boolean z11, boolean z12) {
        super(i10, null, 2, null);
        this.operateItem = operateItem;
        this.isSubTab = z10;
        this.tabId = i11;
        int i12 = z11 ? 2 : z12 ? 4 : 3;
        float f10 = z11 ? 0.56f : 1.39f;
        int iA = a0.a(((((a0.b(RangesKt.h(y.e(), y.c())) - 12) - (i12 * 8)) - 12) * 1.0f) / i12);
        this.itemWidth = iA;
        this.itemHeight = (int) (iA * f10);
    }
}
