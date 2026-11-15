package com.transsion.commercialization.aha.adapter;

import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.bean.AhaGameAllGames;
import com.transsion.bean.GameLayoutType;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import t6.h;
import t6.i;

@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u0019\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ%\u0010\u000e\u001a\u00020\f2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00020\n2\u0006\u0010\r\u001a\u00020\fH\u0014¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016¨\u0006\u0017"}, d2 = {"Lcom/transsion/commercialization/aha/adapter/a;", "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;", "Lcom/transsion/bean/AhaGameAllGames;", "Lt6/i;", "Lbj/b;", "exposureHelper", "Lrj/a;", "gameDotHelper", "<init>", "(Lbj/b;Lrj/a;)V", "", "data", "", RequestParameters.POSITION, "N1", "(Ljava/util/List;I)I", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "holder", "", "B0", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V", "G", "Lbj/b;", "Commercialization_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class a extends BaseProviderMultiAdapter<AhaGameAllGames> implements i {

    private final bj.b exposureHelper;

    public class C0585a {

        public static final int[] f42573a;

        static {
            int[] iArr = new int[GameLayoutType.values().length];
            try {
                iArr[GameLayoutType.ITEM_INFO.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[GameLayoutType.ITEM_TITLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[GameLayoutType.ITEM_AD.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[GameLayoutType.PEOPLE_PLAYING.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            f42573a = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(bj.b bVar, rj.a gameDotHelper) {
        super(null, 1, null);
        Intrinsics.h(gameDotHelper, "gameDotHelper");
        this.exposureHelper = bVar;
        F1(new b());
        F1(new c());
        F1(new f(gameDotHelper));
    }

    @Override
    public void onViewAttachedToWindow(BaseViewHolder holder) {
        Intrinsics.h(holder, "holder");
        super.onViewAttachedToWindow(holder);
        bj.b bVar = this.exposureHelper;
        if (bVar != null) {
            RecyclerView.m layoutManager = getRecyclerView().getLayoutManager();
            Intrinsics.f(layoutManager, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager");
            bj.b.j(bVar, (LinearLayoutManager) layoutManager, holder.getBindingAdapterPosition(), true, false, 8, null);
        }
    }

    @Override
    protected int N1(List<? extends AhaGameAllGames> data, int position) {
        Intrinsics.h(data, "data");
        int i10 = C0585a.f42573a[data.get(position).getGameLayoutType().ordinal()];
        if (i10 == 1) {
            return GameLayoutType.ITEM_INFO.ordinal();
        }
        if (i10 == 2) {
            return GameLayoutType.ITEM_TITLE.ordinal();
        }
        if (i10 == 3) {
            return GameLayoutType.ITEM_AD.ordinal();
        }
        if (i10 == 4) {
            return GameLayoutType.PEOPLE_PLAYING.ordinal();
        }
        throw new NoWhenBranchMatchedException();
    }

    @Override
    public t6.f b(BaseQuickAdapter baseQuickAdapter) {
        return h.a(this, baseQuickAdapter);
    }
}
