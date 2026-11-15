package com.transsion.home.adapter.suboperate.adapter;

import android.widget.ImageView;
import android.widget.TextView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.a0;
import com.blankj.utilcode.util.y;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.home.bean.BannerData;
import com.transsion.home.bean.CustomData;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.fragment.tab.SubTabFragment;
import com.transsion.moviedetailapi.bean.Image;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0013\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B=\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u000b\u001a\u00020\u0004\u0012\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000e\u0010\u000fJ!\u0010\u0013\u001a\u00020\u00122\b\u0010\u0010\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0011\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u001f\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0016\u0010\u0017R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0016\u0010\t\u001a\u0004\u0018\u00010\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0014\u0010\u000b\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0014\u0010\r\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0014\u0010 \u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010\u001dR\u0014\u0010\"\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\u001dR\u0014\u0010$\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010\u001e¨\u0006%"}, d2 = {"Lcom/transsion/home/adapter/suboperate/adapter/SubCustomAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/home/bean/BannerData;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "", "layoutResId", "Lcom/transsion/home/bean/OperateItem;", "operateItem", "Lcom/transsion/home/bean/CustomData;", "customData", "firstItem", "tabId", "", "isTablet", "<init>", "(ILcom/transsion/home/bean/OperateItem;Lcom/transsion/home/bean/CustomData;Lcom/transsion/home/bean/BannerData;IZ)V", WebConstants.FIELD_ITEM, RequestParameters.POSITION, "", "C1", "(Lcom/transsion/home/bean/BannerData;I)V", "holder", "B1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/BannerData;)V", "F", "Lcom/transsion/home/bean/OperateItem;", "G", "Lcom/transsion/home/bean/CustomData;", "H", "I", "Z", "J", "itemWidth", "K", "itemHeight", "L", "hiddenTitle", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class SubCustomAdapter extends BaseQuickAdapter {
    public static final int M = 8;

    private final OperateItem operateItem;

    private final CustomData customData;

    private final int tabId;

    private final boolean isTablet;

    private final int itemWidth;

    private final int itemHeight;

    private final boolean hiddenTitle;

    public SubCustomAdapter(int i10, OperateItem operateItem, CustomData customData, BannerData bannerData, int i11, boolean z10, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? R$layout.item_sub_operation_variable_item : i10, operateItem, customData, bannerData, i11, z10);
    }

    private final void C1(BannerData item, int position) {
        if (ij.g.f62108a.b()) {
            rk.d.f71252c.a(this.tabId, position, this.operateItem, item);
            return;
        }
        HashMap map = new HashMap();
        map.put("event_type", "browse_custom_item");
        map.put("sequence", String.valueOf(position));
        CustomData customData = this.customData;
        map.put("rowCount", String.valueOf(customData != null ? Integer.valueOf(customData.getRowCount()) : null));
        map.put("tabId", String.valueOf(this.tabId));
        if (item != null) {
            sk.b.b(item, map);
        }
        sk.b.a(this.operateItem, map);
        com.transsion.baselib.helper.a.f42121a.e(SubTabFragment.INSTANCE.a(this.tabId), map);
    }

    @Override
    public void F(BaseViewHolder holder, BannerData item) {
        String url;
        String thumbnail;
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        if (this.itemWidth < 10 || this.itemHeight < 10) {
            return;
        }
        z(holder, getItemViewType(holder.getBindingAdapterPosition()));
        ImageView imageView = (ImageView) holder.getView(R$id.sub_operation_variable_image);
        TextView textView = (TextView) holder.getView(R$id.sub_operation_variable_item_title);
        imageView.getLayoutParams().width = this.itemWidth;
        imageView.getLayoutParams().height = this.itemHeight;
        textView.setMaxWidth(this.itemWidth);
        if (this.hiddenTitle) {
            uf.c.g(textView);
        } else {
            uf.c.k(textView);
        }
        if (item.getBuiltIn()) {
            kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new SubCustomAdapter$convert$1(item, imageView, null), 3, null);
        } else {
            ni.f.b bVarM = ni.f.f67269a.m(getContext());
            Image image = item.getImage();
            String str = "";
            if (image == null || (url = image.getUrl()) == null) {
                url = "";
            }
            ni.f.b bVarG = bVarM.g(url);
            Image image2 = item.getImage();
            if (image2 != null && (thumbnail = image2.getThumbnail()) != null) {
                str = thumbnail;
            }
            bVarG.l(str).d(imageView);
        }
        textView.setText(item.getContent());
        C1(item, getData().indexOf(item));
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Code duplicated, block: B:29:0x0067  */
    public SubCustomAdapter(int i10, OperateItem operateItem, CustomData customData, BannerData bannerData, int i11, boolean z10) {
        Boolean hiddenTitle;
        Image image;
        Integer width;
        Image image2;
        Integer height;
        List<BannerData> items;
        BannerData bannerData2;
        super(i10, null, 2, null);
        Intrinsics.h(operateItem, "operateItem");
        String content = null;
        this.operateItem = operateItem;
        this.customData = customData;
        this.tabId = i11;
        this.isTablet = z10;
        int iIntValue = 1;
        boolean zBooleanValue = false;
        int iE = RangesKt.e(customData != null ? customData.getRowCount() : 1, 1) + (z10 ? 2 : 0);
        int iB = a0.b(RangesKt.h(y.e(), y.c()));
        List<BannerData> items2 = customData != null ? customData.getItems() : null;
        if (items2 != null && !items2.isEmpty()) {
            if (customData != null && (items = customData.getItems()) != null && (bannerData2 = items.get(0)) != null) {
                content = bannerData2.getContent();
            }
            if (content == null || content.length() == 0) {
                zBooleanValue = true;
            } else if (customData != null) {
                zBooleanValue = hiddenTitle.booleanValue();
            }
        } else if (customData != null && (hiddenTitle = customData.getHiddenTitle()) != null) {
            zBooleanValue = hiddenTitle.booleanValue();
        }
        this.hiddenTitle = zBooleanValue;
        int iA = a0.a(((((iB - 12) - (iE * 8)) - 12) * 1.0f) / iE);
        this.itemWidth = iA;
        float fIntValue = ((bannerData == null || (image2 = bannerData.getImage()) == null || (height = image2.getHeight()) == null) ? 1 : height.intValue()) * 1.0f;
        if (bannerData != null && (image = bannerData.getImage()) != null && (width = image.getWidth()) != null) {
            iIntValue = width.intValue();
        }
        this.itemHeight = (int) ((fIntValue / iIntValue) * iA);
    }
}
