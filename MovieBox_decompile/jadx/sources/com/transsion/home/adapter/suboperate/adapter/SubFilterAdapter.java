package com.transsion.home.adapter.suboperate.adapter;

import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.a0;
import com.blankj.utilcode.util.y;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.tn.lib.widget.R$color;
import com.tn.lib.widget.R$string;
import com.tn.lib.widget.TnTextView;
import com.transsion.gslb.Utils;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.home.R$mipmap;
import com.transsion.home.bean.FilterItem;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.fragment.tab.SubTabFragment;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0010\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B+\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J!\u0010\u0015\u001a\u00020\u00142\b\u0010\u0012\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0013\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0015\u0010\u0016J!\u0010\u0017\u001a\u00020\u00142\b\u0010\u0012\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0013\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0017\u0010\u0016J\u001f\u0010\u001b\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u001f\u0010\u001e\u001a\u00020\u00142\u0006\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u001e\u0010\u001fR\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010!R\u0014\u0010\b\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010#R\u0014\u0010&\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010%R\u0014\u0010'\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010%¨\u0006("}, d2 = {"Lcom/transsion/home/adapter/suboperate/adapter/SubFilterAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/home/bean/FilterItem;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "", "layoutResId", "tabId", "Lcom/transsion/home/bean/OperateItem;", "operateItem", "", "isTablet", "<init>", "(ILjava/lang/Integer;Lcom/transsion/home/bean/OperateItem;Z)V", "", TtmlNode.ATTR_TTS_COLOR, "Landroid/graphics/drawable/GradientDrawable;", "E1", "(Ljava/lang/String;)Landroid/graphics/drawable/GradientDrawable;", WebConstants.FIELD_ITEM, RequestParameters.POSITION, "", "G1", "(Lcom/transsion/home/bean/FilterItem;I)V", "F1", "Landroid/view/ViewGroup;", "parent", "viewType", "z0", "(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "holder", "C1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/FilterItem;)V", "F", "Ljava/lang/Integer;", "G", "Lcom/transsion/home/bean/OperateItem;", "H", "I", "itemWidth", "itemHeight", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class SubFilterAdapter extends BaseQuickAdapter {
    public static final int J = 8;

    private final Integer tabId;

    private final OperateItem operateItem;

    private final int itemWidth;

    private final int itemHeight;

    public SubFilterAdapter(int i10, Integer num, OperateItem operateItem, boolean z10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? R$layout.item_sub_operation_filter_item : i10, num, operateItem, z10);
    }

    public static final void D1(FilterItem filterItem, SubFilterAdapter subFilterAdapter, View view) {
        Uri uriG = com.transsion.baselib.helper.b.f42123a.g(Uri.parse(filterItem.getDeepLink()));
        if (uriG != null) {
            ij.k.o(uriG);
        }
        subFilterAdapter.G1(filterItem, subFilterAdapter.getData().indexOf(filterItem));
    }

    private final GradientDrawable E1(String color) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setGradientType(0);
        gradientDrawable.setColors(new int[]{Color.parseColor(StringsKt.Q(color, Utils.SEPARATOR, "#ff", false, 4, null)), Color.parseColor(StringsKt.Q(color, Utils.SEPARATOR, "#ff", false, 4, null)), Color.parseColor(StringsKt.Q(color, Utils.SEPARATOR, "#00", false, 4, null))});
        gradientDrawable.setOrientation(GradientDrawable.Orientation.LEFT_RIGHT);
        return gradientDrawable;
    }

    private final void F1(FilterItem item, int position) {
        String title;
        HashMap map = new HashMap();
        map.put("event_type", "browse_filter");
        if (item == null || (title = item.getTitle()) == null) {
            title = "";
        }
        map.put(CampaignEx.JSON_KEY_TITLE, title);
        map.put("sequence", String.valueOf(position));
        map.put("tabId", String.valueOf(this.tabId));
        sk.b.a(this.operateItem, map);
        com.transsion.baselib.helper.a aVar = com.transsion.baselib.helper.a.f42121a;
        SubTabFragment.Companion companion = SubTabFragment.INSTANCE;
        Integer num = this.tabId;
        aVar.e(companion.a(num != null ? num.intValue() : 1), map);
    }

    private final void G1(FilterItem item, int position) {
        String title;
        HashMap map = new HashMap();
        map.put("event_type", "click_filter");
        if (item == null || (title = item.getTitle()) == null) {
            title = "";
        }
        map.put(CampaignEx.JSON_KEY_TITLE, title);
        map.put("sequence", String.valueOf(position));
        map.put("tabId", String.valueOf(this.tabId));
        sk.b.a(this.operateItem, map);
        com.transsion.baselib.helper.a aVar = com.transsion.baselib.helper.a.f42121a;
        SubTabFragment.Companion companion = SubTabFragment.INSTANCE;
        Integer num = this.tabId;
        aVar.f(companion.a(num != null ? num.intValue() : 1), map);
    }

    @Override
    public void F(BaseViewHolder holder, final FilterItem item) {
        String url;
        String thumbnail;
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        TnTextView tnTextView = (TnTextView) holder.getView(R$id.sub_operation_filter_title);
        if (item.isAll()) {
            tnTextView.setTextById(R$string.all);
            uf.c.k(holder.getView(R$id.sub_operation_filter_add_icon));
            ((ImageView) holder.getView(R$id.sub_operation_filter_icon)).setImageResource(R$mipmap.bg_op_filter_all);
        } else {
            String title = item.getTitle();
            String str = "";
            if (title == null) {
                title = "";
            }
            tnTextView.setText(title);
            tnTextView.setTextColor(com.blankj.utilcode.util.h.a(R$color.white_80));
            uf.c.g(holder.getView(R$id.sub_operation_filter_add_icon));
            ImageView imageView = (ImageView) holder.getView(R$id.sub_operation_filter_icon);
            if (item.getBuiltIn()) {
                kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new SubFilterAdapter$convert$1(item, imageView, null), 3, null);
            } else {
                ni.f.b bVarM = ni.f.f67269a.m(getContext());
                Cover image = item.getImage();
                if (image == null || (url = image.getUrl()) == null) {
                    url = "";
                }
                ni.f.b bVarG = bVarM.g(url);
                Cover image2 = item.getImage();
                if (image2 != null && (thumbnail = image2.getThumbnail()) != null) {
                    str = thumbnail;
                }
                bVarG.l(str).m(this.itemWidth).d(imageView);
            }
        }
        holder.itemView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                SubFilterAdapter.D1(item, this, view);
            }
        });
        F1(item, getData().indexOf(item));
    }

    @Override
    public BaseViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        Intrinsics.h(parent, "parent");
        BaseViewHolder baseViewHolderOnCreateViewHolder = super.onCreateViewHolder(parent, viewType);
        baseViewHolderOnCreateViewHolder.itemView.getLayoutParams().width = this.itemWidth;
        baseViewHolderOnCreateViewHolder.itemView.getLayoutParams().height = this.itemHeight;
        return baseViewHolderOnCreateViewHolder;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SubFilterAdapter(int i10, Integer num, OperateItem operateItem, boolean z10) {
        super(i10, null, 2, null);
        Intrinsics.h(operateItem, "operateItem");
        this.tabId = num;
        this.operateItem = operateItem;
        int i11 = z10 ? 6 : 3;
        int iA = a0.a(((((a0.b(Math.min(y.e(), y.c())) - 12) - (i11 * 8)) - 12) * 1.0f) / i11);
        this.itemWidth = iA;
        this.itemHeight = (int) (((double) iA) * 0.46d);
    }
}
