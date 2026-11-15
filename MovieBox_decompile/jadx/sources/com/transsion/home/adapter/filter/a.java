package com.transsion.home.adapter.filter;

import android.app.Activity;
import android.content.Context;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.bumptech.glide.Glide;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.android.material.imageview.ShapeableImageView;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.transsion.home.R$id;
import com.transsion.home.bean.LayoutStyle;
import com.transsion.home.bean.UGCFilterVideoItem;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import rk.b;
import t6.f;
import t6.h;
import t6.i;

@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B;\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\b\b\u0002\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000e\u0010\u000fJ%\u0010\u0013\u001a\u00020\n2\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00020\u00102\u0006\u0010\u0012\u001a\u00020\nH\u0014¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001a\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u001a\u0010\u0019R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR$\u0010\t\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u0017\u0010\u000b\u001a\u00020\n8\u0006¢\u0006\f\n\u0004\b#\u0010#\u001a\u0004\b$\u0010%R\u0018\u0010)\u001a\u0004\u0018\u00010&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010(R*\u0010\r\u001a\u00020\f2\u0006\u0010*\u001a\u00020\f8\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b+\u0010,\u001a\u0004\b-\u0010.\"\u0004\b/\u00100¨\u00061"}, d2 = {"Lcom/transsion/home/adapter/filter/a;", "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;", "Lcom/transsion/home/bean/UGCFilterVideoItem;", "Lt6/i;", "", "dataList", "Lrk/b;", "listExposureHelper", "Lcom/transsion/home/bean/LayoutStyle;", TtmlNode.TAG_STYLE, "", "rowCount", "", "isEducationList", "<init>", "(Ljava/util/List;Lrk/b;Lcom/transsion/home/bean/LayoutStyle;IZ)V", "", "data", RequestParameters.POSITION, "N1", "(Ljava/util/List;I)I", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "holder", "", "B0", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V", "T1", "G", "Lrk/b;", "H", "Lcom/transsion/home/bean/LayoutStyle;", "R1", "()Lcom/transsion/home/bean/LayoutStyle;", "V1", "(Lcom/transsion/home/bean/LayoutStyle;)V", "I", "Q1", "()I", "Lmk/b;", "J", "Lmk/b;", "videoProvider", AppMeasurementSdk.ConditionalUserProperty.VALUE, "K", "Z", "S1", "()Z", "U1", "(Z)V", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class a extends BaseProviderMultiAdapter<UGCFilterVideoItem> implements i {
    public static final int L = 8;

    private final b listExposureHelper;

    private LayoutStyle style;

    private final int rowCount;

    private mk.b videoProvider;

    private boolean isEducationList;

    public a(List list, b bVar, LayoutStyle layoutStyle, int i10, boolean z10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, bVar, layoutStyle, i10, (i11 & 16) != 0 ? false : z10);
    }

    @Override
    public void onViewAttachedToWindow(BaseViewHolder holder) {
        Intrinsics.h(holder, "holder");
        super.onViewAttachedToWindow(holder);
        int bindingAdapterPosition = holder.getBindingAdapterPosition();
        b bVar = this.listExposureHelper;
        if (bVar != null) {
            RecyclerView.m layoutManager = getRecyclerView().getLayoutManager();
            Intrinsics.f(layoutManager, "null cannot be cast to non-null type androidx.recyclerview.widget.GridLayoutManager");
            bVar.h((GridLayoutManager) layoutManager, bindingAdapterPosition, true);
        }
    }

    @Override
    protected int N1(List<? extends UGCFilterVideoItem> data, int position) {
        Intrinsics.h(data, "data");
        UGCFilterVideoItem uGCFilterVideoItem = data.get(position);
        if (uGCFilterVideoItem.isAd()) {
            return 4;
        }
        Intrinsics.c(uGCFilterVideoItem.getContent().getTopicType(), "UGC_VIDEO");
        return 1;
    }

    public final int getRowCount() {
        return this.rowCount;
    }

    public final LayoutStyle getStyle() {
        return this.style;
    }

    public final boolean getIsEducationList() {
        return this.isEducationList;
    }

    @Override
    public void onViewRecycled(BaseViewHolder holder) {
        Intrinsics.h(holder, "holder");
        super.onViewRecycled(holder);
        ShapeableImageView shapeableImageView = (ShapeableImageView) holder.getViewOrNull(R$id.iv_cover);
        if (shapeableImageView == null || shapeableImageView.getContext() == null) {
            return;
        }
        Context context = shapeableImageView.getContext();
        Activity activity = context instanceof Activity ? (Activity) context : null;
        if (activity == null || !activity.isDestroyed()) {
            Context context2 = shapeableImageView.getContext();
            Activity activity2 = context2 instanceof Activity ? (Activity) context2 : null;
            if (activity2 == null || !activity2.isFinishing()) {
                Glide.with(shapeableImageView.getContext()).clear(shapeableImageView);
            }
        }
    }

    public final void U1(boolean z10) {
        this.isEducationList = z10;
        mk.b bVar = this.videoProvider;
        if (bVar != null) {
            bVar.z(z10);
        }
        notifyItemRangeChanged(0, getData().size());
    }

    public final void V1(LayoutStyle layoutStyle) {
        this.style = layoutStyle;
    }

    @Override
    public f b(BaseQuickAdapter baseQuickAdapter) {
        return h.a(this, baseQuickAdapter);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(List<UGCFilterVideoItem> dataList, b bVar, LayoutStyle layoutStyle, int i10, boolean z10) {
        super(dataList);
        Intrinsics.h(dataList, "dataList");
        this.listExposureHelper = bVar;
        this.style = layoutStyle;
        this.rowCount = i10;
        this.isEducationList = z10;
        mk.b bVar2 = new mk.b(bVar, this.style, i10, z10);
        this.videoProvider = bVar2;
        F1(bVar2);
        F1(new mk.a(bVar));
    }
}
