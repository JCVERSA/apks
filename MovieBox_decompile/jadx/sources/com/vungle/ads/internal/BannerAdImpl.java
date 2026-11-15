package com.vungle.ads.internal;

import android.content.Context;
import com.vungle.ads.AnalyticsClient;
import com.vungle.ads.BaseAd;
import com.vungle.ads.VungleError;
import com.vungle.ads.internal.util.u;
import com.vungle.ads.y;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public final class BannerAdImpl extends BaseAd {
    private final com.vungle.ads.internal.presenter.c adPlayCallback;
    private final y adSize;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BannerAdImpl(Context context, String placementId, y adSize, com.vungle.ads.b adConfig) {
        super(context, placementId, adConfig);
        Intrinsics.h(context, "context");
        Intrinsics.h(placementId, "placementId");
        Intrinsics.h(adSize, "adSize");
        Intrinsics.h(adConfig, "adConfig");
        this.adSize = adSize;
        AdInternal adInternal$vungle_ads_release = getAdInternal$vungle_ads_release();
        Intrinsics.f(adInternal$vungle_ads_release, "null cannot be cast to non-null type com.vungle.ads.internal.BannerAdInternal");
        this.adPlayCallback = ((a) adInternal$vungle_ads_release).wrapCallback$vungle_ads_release(new com.vungle.ads.internal.presenter.b() {
            @Override
            public void onAdClick(String str) {
                u uVar = u.INSTANCE;
                final BannerAdImpl bannerAdImpl = this.this$0;
                uVar.runOnUiThread(new Function0<Unit>() {
                    {
                        super(0);
                    }

                    @Override
                    public Object invoke() {
                        m359invoke();
                        return Unit.f64096a;
                    }

                    public final void m359invoke() {
                        com.vungle.ads.h adListener = bannerAdImpl.getAdListener();
                        if (adListener != null) {
                            adListener.onAdClicked(bannerAdImpl);
                        }
                    }
                });
                this.this$0.getDisplayToClickMetric$vungle_ads_release().markEnd();
                AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, this.this$0.getDisplayToClickMetric$vungle_ads_release(), this.this$0.getLogEntry$vungle_ads_release(), (String) null, 4, (Object) null);
            }

            @Override
            public void onAdEnd(String str) {
                u uVar = u.INSTANCE;
                final BannerAdImpl bannerAdImpl = this.this$0;
                uVar.runOnUiThread(new Function0<Unit>() {
                    {
                        super(0);
                    }

                    @Override
                    public Object invoke() {
                        m360invoke();
                        return Unit.f64096a;
                    }

                    public final void m360invoke() {
                        com.vungle.ads.h adListener = bannerAdImpl.getAdListener();
                        if (adListener != null) {
                            adListener.onAdEnd(bannerAdImpl);
                        }
                    }
                });
                this.this$0.getShowToCloseMetric$vungle_ads_release().markEnd();
                AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, this.this$0.getShowToCloseMetric$vungle_ads_release(), this.this$0.getLogEntry$vungle_ads_release(), (String) null, 4, (Object) null);
            }

            @Override
            public void onAdImpression(String str) {
                u uVar = u.INSTANCE;
                final BannerAdImpl bannerAdImpl = this.this$0;
                uVar.runOnUiThread(new Function0<Unit>() {
                    {
                        super(0);
                    }

                    @Override
                    public Object invoke() {
                        m361invoke();
                        return Unit.f64096a;
                    }

                    public final void m361invoke() {
                        com.vungle.ads.h adListener = bannerAdImpl.getAdListener();
                        if (adListener != null) {
                            adListener.onAdImpression(bannerAdImpl);
                        }
                    }
                });
                this.this$0.getPresentToDisplayMetric$vungle_ads_release().markEnd();
                AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, this.this$0.getPresentToDisplayMetric$vungle_ads_release(), this.this$0.getLogEntry$vungle_ads_release(), (String) null, 4, (Object) null);
                this.this$0.getDisplayToClickMetric$vungle_ads_release().markStart();
            }

            @Override
            public void onAdLeftApplication(String str) {
                u uVar = u.INSTANCE;
                final BannerAdImpl bannerAdImpl = this.this$0;
                uVar.runOnUiThread(new Function0<Unit>() {
                    {
                        super(0);
                    }

                    @Override
                    public Object invoke() {
                        m362invoke();
                        return Unit.f64096a;
                    }

                    public final void m362invoke() {
                        com.vungle.ads.h adListener = bannerAdImpl.getAdListener();
                        if (adListener != null) {
                            adListener.onAdLeftApplication(bannerAdImpl);
                        }
                    }
                });
                AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, this.this$0.getLeaveApplicationMetric$vungle_ads_release(), this.this$0.getLogEntry$vungle_ads_release(), (String) null, 4, (Object) null);
            }

            @Override
            public void onAdRewarded(String str) {
            }

            @Override
            public void onAdStart(String str) {
                this.this$0.getSignalManager$vungle_ads_release().increaseSessionDepthCounter();
                this.this$0.getAdInternal$vungle_ads_release().getValidationToPresentMetric$vungle_ads_release().markEnd();
                AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, this.this$0.getAdInternal$vungle_ads_release().getValidationToPresentMetric$vungle_ads_release(), this.this$0.getLogEntry$vungle_ads_release(), (String) null, 4, (Object) null);
                this.this$0.getPresentToDisplayMetric$vungle_ads_release().markStart();
                u uVar = u.INSTANCE;
                final BannerAdImpl bannerAdImpl = this.this$0;
                uVar.runOnUiThread(new Function0<Unit>() {
                    {
                        super(0);
                    }

                    @Override
                    public Object invoke() {
                        m363invoke();
                        return Unit.f64096a;
                    }

                    public final void m363invoke() {
                        com.vungle.ads.h adListener = bannerAdImpl.getAdListener();
                        if (adListener != null) {
                            adListener.onAdStart(bannerAdImpl);
                        }
                    }
                });
            }

            @Override
            public void onFailure(final VungleError error) {
                Intrinsics.h(error, "error");
                u uVar = u.INSTANCE;
                final BannerAdImpl bannerAdImpl = this.this$0;
                uVar.runOnUiThread(new Function0<Unit>() {
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override
                    public Object invoke() {
                        m364invoke();
                        return Unit.f64096a;
                    }

                    public final void m364invoke() {
                        com.vungle.ads.h adListener = bannerAdImpl.getAdListener();
                        if (adListener != null) {
                            adListener.onAdFailedToPlay(bannerAdImpl, error);
                        }
                    }
                });
                this.this$0.getShowToFailMetric$vungle_ads_release().markEnd();
                AnalyticsClient.INSTANCE.logMetric$vungle_ads_release(this.this$0.getShowToFailMetric$vungle_ads_release(), this.this$0.getLogEntry$vungle_ads_release(), String.valueOf(error.getCode()));
            }
        });
    }

    public final com.vungle.ads.internal.presenter.c getAdPlayCallback$vungle_ads_release() {
        return this.adPlayCallback;
    }

    public final y getAdViewSize() {
        AdInternal adInternal$vungle_ads_release = getAdInternal$vungle_ads_release();
        Intrinsics.f(adInternal$vungle_ads_release, "null cannot be cast to non-null type com.vungle.ads.internal.BannerAdInternal");
        y updatedAdSize$vungle_ads_release = ((a) adInternal$vungle_ads_release).getUpdatedAdSize$vungle_ads_release();
        return updatedAdSize$vungle_ads_release == null ? this.adSize : updatedAdSize$vungle_ads_release;
    }

    @Override
    public a constructAdInternal$vungle_ads_release(Context context) {
        Intrinsics.h(context, "context");
        return new a(context, this.adSize);
    }
}
