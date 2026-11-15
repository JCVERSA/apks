package com.transsion.search_pugc.fragment.hot.adapter;

import android.annotation.SuppressLint;
import android.view.View;
import android.widget.ImageView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.search.R$drawable;
import com.transsion.search.R$id;
import com.transsion.search.R$layout;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import t6.h;
import t6.i;

@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u0000 &2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0002'(B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u001b\u0010\t\u001a\u00020\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0004\b\t\u0010\nJ)\u0010\u0010\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000b2\b\b\u0002\u0010\u000f\u001a\u00020\u000eH\u0007¢\u0006\u0004\b\u0010\u0010\u0011J%\u0010\u0015\u001a\u00020\u000e2\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u000eH\u0014¢\u0006\u0004\b\u0015\u0010\u0016R\u001e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0016\u0010\u001b\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0016\u0010\u001d\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001aR\u0016\u0010\u001f\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001cR\u001b\u0010%\u001a\u00020 8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$¨\u0006)"}, d2 = {"Lcom/transsion/search_pugc/fragment/hot/adapter/c;", "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;", "Lcom/transsion/search_pugc/fragment/hot/adapter/a;", "Lt6/i;", "<init>", "()V", "Lkotlin/Function0;", "", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Y1", "(Lkotlin/jvm/functions/Function0;)V", "", "moreShow", "isExpand", "", "moreIndex", "Z1", "(ZZI)V", "", "data", RequestParameters.POSITION, "N1", "(Ljava/util/List;I)I", "G", "Lkotlin/jvm/functions/Function0;", "H", "Z", "showMode", "I", "expandMode", "J", "showMoreIndex", "Lcom/transsion/search_pugc/g;", "K", "Lkotlin/Lazy;", "W1", "()Lcom/transsion/search_pugc/g;", "searchReporter", "L", "a", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Search_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class c extends BaseProviderMultiAdapter<a> implements i {
    public static final int M = 1;
    public static final int N = 2;

    private Function0<Unit> listener;

    private boolean showMode;

    private boolean expandMode;

    private int showMoreIndex;

    private final Lazy searchReporter;

    public final class b extends BaseItemProvider {
        public b() {
        }

        public static final void A(c cVar, int i10, View view) {
            if (cVar.showMode && i10 == cVar.showMoreIndex) {
                Function0 function0 = cVar.listener;
                if (function0 != null) {
                    function0.invoke();
                }
                cVar.W1().n(!cVar.expandMode);
            }
        }

        @Override
        public int l() {
            return 1;
        }

        @Override
        public int m() {
            return R$layout.item_search_history_word;
        }

        @Override
        public void b(BaseViewHolder helper, a item) {
            Intrinsics.h(helper, "helper");
            Intrinsics.h(item, "item");
            final int iG0 = c.this.g0(item);
            helper.setText(R$id.search_history_text, item.a());
            boolean z10 = c.this.showMode && iG0 == c.this.showMoreIndex;
            View view = helper.getView(R$id.search_hot_history_more_image);
            final c cVar = c.this;
            ImageView imageView = (ImageView) view;
            imageView.setVisibility(z10 ? 0 : 8);
            imageView.setImageResource(cVar.expandMode ? R$drawable.ic_hide : R$drawable.ic_more);
            imageView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    c.b.A(cVar, iG0, view2);
                }
            });
        }
    }

    public c() {
        super(null, 1, null);
        F1(new b());
        this.showMoreIndex = -1;
        this.searchReporter = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return c.X1(this.f50351a);
            }
        });
    }

    public final com.transsion.search_pugc.g W1() {
        return (com.transsion.search_pugc.g) this.searchReporter.getValue();
    }

    public static final com.transsion.search_pugc.g X1(c cVar) {
        return com.transsion.search_pugc.g.f50469h.a(cVar.getContext());
    }

    public static void a2(c cVar, boolean z10, boolean z11, int i10, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            i10 = -1;
        }
        cVar.Z1(z10, z11, i10);
    }

    @Override
    protected int N1(List<? extends a> data, int position) {
        Intrinsics.h(data, "data");
        return data.get(position).b();
    }

    public final void Y1(Function0<Unit> listener) {
        Intrinsics.h(listener, "listener");
        this.listener = listener;
    }

    @SuppressLint({"Range"})
    public final void Z1(boolean moreShow, boolean isExpand, int moreIndex) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("setShowMoreMode, moreShow:");
        sb2.append(moreShow);
        sb2.append(", isExpand:");
        sb2.append(isExpand);
        sb2.append(",  moreIndex:");
        sb2.append(moreIndex);
        this.showMode = moreShow;
        this.expandMode = isExpand;
        this.showMoreIndex = moreIndex;
        if (getItemCount() > 0 && moreIndex >= 0) {
            int itemCount = moreShow ? moreIndex + 1 : getItemCount();
            for (int i10 = 0; i10 < itemCount; i10++) {
                if (i10 < getItemCount()) {
                    W1().o(((a) getItem(i10)).a(), i10);
                }
            }
        }
    }

    @Override
    public t6.f b(BaseQuickAdapter baseQuickAdapter) {
        return h.a(this, baseQuickAdapter);
    }
}
