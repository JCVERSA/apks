package com.transsion.search_pugc.fragment.group.adapter;

import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.search.R$id;
import com.transsion.search.R$layout;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import t6.f;
import t6.h;
import t6.i;

@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B\u0011\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u001f\u0010\f\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/transsion/search_pugc/fragment/group/adapter/b;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "Lt6/i;", "", "layoutResId", "<init>", "(I)V", "holder", WebConstants.FIELD_ITEM, "", "B1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/String;)V", "Search_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class b extends BaseQuickAdapter implements i {
    public b() {
        this(0, 1, null);
    }

    @Override
    public void F(BaseViewHolder holder, String item) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        holder.setText(R$id.tv_keyword, item);
    }

    @Override
    public f b(BaseQuickAdapter baseQuickAdapter) {
        return h.a(this, baseQuickAdapter);
    }

    public b(int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? R$layout.item_search_keyword_group : i10);
    }

    public b(int i10) {
        super(i10, null, 2, null);
    }
}
