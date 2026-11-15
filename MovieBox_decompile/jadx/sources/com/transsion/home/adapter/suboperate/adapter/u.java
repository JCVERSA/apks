package com.transsion.home.adapter.suboperate.adapter;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import com.blankj.utilcode.util.a0;
import com.blankj.utilcode.util.y;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.transsion.baseui.R$mipmap;
import com.transsion.edcation.CourseManager;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.home.fragment.tab.SubTabFragment;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0007\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0019\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\bJ\u001f\u0010\f\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\f\u0010\rJ\u001f\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u000f\u0010\u0010J-\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u00022\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011H\u0014¢\u0006\u0004\b\u0014\u0010\u0015J'\u0010\u0018\u001a\u00020\u000b2\u0018\u0010\u0017\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000b0\u0016¢\u0006\u0004\b\u0018\u0010\u0019R\u0014\u0010\u0006\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0014\u0010\u001e\u001a\u00020\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001aR\u0014\u0010 \u001a\u00020\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010\u001aR*\u0010\"\u001a\u0016\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010!¨\u0006#"}, d2 = {"Lcom/transsion/home/adapter/suboperate/adapter/u;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/moviedetailapi/bean/Subject;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "", "layoutResId", "tabId", "<init>", "(II)V", "holder", "seenStatus", "", "G1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)V", WebConstants.FIELD_ITEM, "C1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/Subject;)V", "", "", "payloads", "D1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/util/List;)V", "Lkotlin/Function2;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "F1", "(Lkotlin/jvm/functions/Function2;)V", "F", "I", "", "G", "perWidth", "H", "perHeight", "Lkotlin/jvm/functions/Function2;", "onConvert", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class u extends BaseQuickAdapter {
    public static final int J = 8;

    private final int tabId;

    private final float perWidth;

    private final float perHeight;

    private Function2<? super Integer, ? super Subject, Unit> onConvert;

    public u(int i10, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? R$layout.item_sub_operation_ranking_education : i10, i11);
    }

    public static final void E1(Subject subject, u uVar, View view) {
        CourseManager.u(CourseManager.f42905a, subject, null, 2, null);
        fk.a.b(subject, SubTabFragment.INSTANCE.a(uVar.tabId), "opt_ranking");
    }

    private final void G1(BaseViewHolder holder, int seenStatus) {
        holder.setImageResource(R$id.sub_operation_ranking_education_add_icon, seenStatus == 1 ? R$mipmap.ic_added : R$mipmap.ic_add);
    }

    @Override
    public void F(BaseViewHolder holder, final Subject item) {
        String url;
        String thumbnail;
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        holder.setText(R$id.sub_operation_ranking_education_title, item.getTitle());
        holder.setText(R$id.sub_operation_ranking_education_tag, defpackage.a.b(getContext(), item));
        ImageView imageView = (ImageView) holder.getView(R$id.sub_operation_ranking_education_cover);
        imageView.getLayoutParams().height = (int) this.perHeight;
        ni.f.a aVar = ni.f.f67269a;
        Context context = imageView.getContext();
        Intrinsics.g(context, "getContext(...)");
        ni.f.b bVarM = aVar.m(context);
        Cover cover = item.getCover();
        String str = "";
        if (cover == null || (url = cover.getUrl()) == null) {
            url = "";
        }
        ni.f.b bVarM2 = bVarM.g(url).m((int) this.perWidth);
        Cover cover2 = item.getCover();
        if (cover2 != null && (thumbnail = cover2.getThumbnail()) != null) {
            str = thumbnail;
        }
        bVarM2.l(str).d(imageView);
        ((ImageView) holder.getView(R$id.sub_operation_ranking_education_add_icon)).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                u.E1(item, this, view);
            }
        });
        Integer seenStatus = item.getSeenStatus();
        G1(holder, seenStatus != null ? seenStatus.intValue() : 0);
        Function2<? super Integer, ? super Subject, Unit> function2 = this.onConvert;
        if (function2 != null) {
            function2.invoke(Integer.valueOf(g0(item)), item);
        }
    }

    @Override
    public void G(BaseViewHolder holder, Subject item, List<? extends Object> payloads) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        Intrinsics.h(payloads, "payloads");
        if (payloads.isEmpty()) {
            return;
        }
        Object obj = payloads.get(payloads.size() - 1);
        if (obj instanceof Integer) {
            G1(holder, ((Number) obj).intValue());
        }
    }

    public final void F1(Function2<? super Integer, ? super Subject, Unit> listener) {
        Intrinsics.h(listener, "listener");
        this.onConvert = listener;
    }

    public u(int i10, int i11) {
        super(i10, null, 2, null);
        this.tabId = i11;
        float fE = (y.e() - a0.a(32.0f)) / 2.0f;
        this.perWidth = fE;
        this.perHeight = (fE * 9.0f) / 16;
    }
}
