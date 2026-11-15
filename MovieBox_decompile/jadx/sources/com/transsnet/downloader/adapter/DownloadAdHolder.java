package com.transsnet.downloader.adapter;

import android.content.Context;
import android.view.View;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.hisavana.common.interfacz.TAdditionalListener;
import com.mbridge.msdk.MBridgeConstans;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.ad.view.native_ad.NativeWrapperAdView;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsnet.downloader.R$id;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J!\u0010\f\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\f\u0010\rR\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\f\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lcom/transsnet/downloader/adapter/DownloadAdHolder;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "Lcom/transsnet/downloader/adapter/u0;", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "<init>", "(Landroid/view/View;)V", "", RequestParameters.POSITION, "Lp6/a;", "info", "", "a", "(ILp6/a;)V", "Landroid/view/View;", "getView", "()Landroid/view/View;", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class DownloadAdHolder extends BaseViewHolder implements u0 {

    private final View view;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DownloadAdHolder(View view) {
        super(view);
        Intrinsics.h(view, "view");
        this.view = view;
    }

    @Override
    public void a(int position, p6.a info) {
        NativeWrapperAdView nativeWrapperAdView;
        if (info instanceof DownloadBean) {
            try {
                Result.Companion companion = Result.INSTANCE;
                TAdditionalListener wrapNativeManager = ((DownloadBean) info).getWrapNativeManager();
                Unit unit = null;
                BiddingNativeManager biddingNativeManager = wrapNativeManager instanceof BiddingNativeManager ? (BiddingNativeManager) wrapNativeManager : null;
                if (biddingNativeManager != null && (nativeWrapperAdView = (NativeWrapperAdView) this.view.findViewById(R$id.flRoot)) != null) {
                    ow.b bVar = ow.b.f68937a;
                    Context context = nativeWrapperAdView.getContext();
                    Intrinsics.g(context, "getContext(...)");
                    nativeWrapperAdView.bindNativeView(biddingNativeManager, bVar.a(context, biddingNativeManager.getMSceneId()), biddingNativeManager.k0());
                    unit = Unit.f64096a;
                }
                Result.m453constructorimpl(unit);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m453constructorimpl(ResultKt.a(th2));
            }
        }
    }

    @Override
    public void b(int i10, p6.a aVar) {
        u0.a.a(this, i10, aVar);
    }

    @Override
    public void c(u0.b bVar) {
        u0.a.b(this, bVar);
    }
}
