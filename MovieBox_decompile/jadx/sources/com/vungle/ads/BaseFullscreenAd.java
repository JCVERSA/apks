package com.vungle.ads;

import android.content.Context;
import com.vungle.ads.internal.model.AdPayload;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public abstract class BaseFullscreenAd extends BaseAd implements k {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseFullscreenAd(Context context, String placementId, b adConfig) {
        super(context, placementId, adConfig);
        Intrinsics.h(context, "context");
        Intrinsics.h(placementId, "placementId");
        Intrinsics.h(adConfig, "adConfig");
    }

    @Override
    public void load(String str) {
        setSignaledAd$vungle_ads_release(getSignalManager$vungle_ads_release().getSignaledAd(getPlacementId()));
        super.load(str);
    }

    @Override
    public void onAdLoaded$vungle_ads_release(AdPayload advertisement) {
        Intrinsics.h(advertisement, "advertisement");
        super.onAdLoaded$vungle_ads_release(advertisement);
        com.vungle.ads.internal.signals.b signaledAd$vungle_ads_release = getSignaledAd$vungle_ads_release();
        if (signaledAd$vungle_ads_release == null) {
            return;
        }
        signaledAd$vungle_ads_release.setAdAvailabilityCallbackTime(System.currentTimeMillis());
    }

    @Override
    public void play(Context context) {
        AnalyticsClient analyticsClient = AnalyticsClient.INSTANCE;
        AnalyticsClient.logMetric$vungle_ads_release$default(analyticsClient, new w(Sdk$SDKMetric.SDKMetricType.PLAY_AD_API), getLogEntry$vungle_ads_release(), (String) null, 4, (Object) null);
        getResponseToShowMetric$vungle_ads_release().markEnd();
        AnalyticsClient.logMetric$vungle_ads_release$default(analyticsClient, getResponseToShowMetric$vungle_ads_release(), getLogEntry$vungle_ads_release(), (String) null, 4, (Object) null);
        getShowToFailMetric$vungle_ads_release().markStart();
        getShowToCloseMetric$vungle_ads_release().markStart();
        com.vungle.ads.internal.signals.b signaledAd$vungle_ads_release = getSignaledAd$vungle_ads_release();
        if (signaledAd$vungle_ads_release != null) {
            signaledAd$vungle_ads_release.setPlayAdTime(System.currentTimeMillis());
            signaledAd$vungle_ads_release.calculateTimeBetweenAdAvailabilityAndPlayAd();
            getSignalManager$vungle_ads_release().registerSignaledAd(context, signaledAd$vungle_ads_release);
        }
        getAdInternal$vungle_ads_release().play(context, new com.vungle.ads.internal.presenter.b() {
            @Override
            public void onAdClick(String str) {
                com.vungle.ads.internal.util.u uVar = com.vungle.ads.internal.util.u.INSTANCE;
                final BaseFullscreenAd baseFullscreenAd = BaseFullscreenAd.this;
                uVar.runOnUiThread(new Function0<Unit>() {
                    {
                        super(0);
                    }

                    @Override
                    public Object invoke() {
                        m332invoke();
                        return Unit.f64096a;
                    }

                    public final void m332invoke() {
                        h adListener = baseFullscreenAd.getAdListener();
                        if (adListener != null) {
                            adListener.onAdClicked(baseFullscreenAd);
                        }
                    }
                });
                BaseFullscreenAd.this.getDisplayToClickMetric$vungle_ads_release().markEnd();
                AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, BaseFullscreenAd.this.getDisplayToClickMetric$vungle_ads_release(), BaseFullscreenAd.this.getLogEntry$vungle_ads_release(), (String) null, 4, (Object) null);
            }

            @Override
            public void onAdEnd(String str) {
                com.vungle.ads.internal.util.u uVar = com.vungle.ads.internal.util.u.INSTANCE;
                final BaseFullscreenAd baseFullscreenAd = BaseFullscreenAd.this;
                uVar.runOnUiThread(new Function0<Unit>() {
                    {
                        super(0);
                    }

                    @Override
                    public Object invoke() {
                        m333invoke();
                        return Unit.f64096a;
                    }

                    public final void m333invoke() {
                        h adListener = baseFullscreenAd.getAdListener();
                        if (adListener != null) {
                            adListener.onAdEnd(baseFullscreenAd);
                        }
                    }
                });
                BaseFullscreenAd.this.getShowToCloseMetric$vungle_ads_release().markEnd();
                AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, BaseFullscreenAd.this.getShowToCloseMetric$vungle_ads_release(), BaseFullscreenAd.this.getLogEntry$vungle_ads_release(), (String) null, 4, (Object) null);
            }

            @Override
            public void onAdImpression(String str) {
                com.vungle.ads.internal.util.u uVar = com.vungle.ads.internal.util.u.INSTANCE;
                final BaseFullscreenAd baseFullscreenAd = BaseFullscreenAd.this;
                uVar.runOnUiThread(new Function0<Unit>() {
                    {
                        super(0);
                    }

                    @Override
                    public Object invoke() {
                        m334invoke();
                        return Unit.f64096a;
                    }

                    public final void m334invoke() {
                        h adListener = baseFullscreenAd.getAdListener();
                        if (adListener != null) {
                            adListener.onAdImpression(baseFullscreenAd);
                        }
                    }
                });
                BaseFullscreenAd.this.getPresentToDisplayMetric$vungle_ads_release().markEnd();
                AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, BaseFullscreenAd.this.getPresentToDisplayMetric$vungle_ads_release(), BaseFullscreenAd.this.getLogEntry$vungle_ads_release(), (String) null, 4, (Object) null);
                BaseFullscreenAd.this.getDisplayToClickMetric$vungle_ads_release().markStart();
            }

            @Override
            public void onAdLeftApplication(String str) {
                com.vungle.ads.internal.util.u uVar = com.vungle.ads.internal.util.u.INSTANCE;
                final BaseFullscreenAd baseFullscreenAd = BaseFullscreenAd.this;
                uVar.runOnUiThread(new Function0<Unit>() {
                    {
                        super(0);
                    }

                    @Override
                    public Object invoke() {
                        m335invoke();
                        return Unit.f64096a;
                    }

                    public final void m335invoke() {
                        h adListener = baseFullscreenAd.getAdListener();
                        if (adListener != null) {
                            adListener.onAdLeftApplication(baseFullscreenAd);
                        }
                    }
                });
                AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, BaseFullscreenAd.this.getLeaveApplicationMetric$vungle_ads_release(), BaseFullscreenAd.this.getLogEntry$vungle_ads_release(), (String) null, 4, (Object) null);
            }

            @Override
            public void onAdRewarded(String str) {
                com.vungle.ads.internal.util.u uVar = com.vungle.ads.internal.util.u.INSTANCE;
                final BaseFullscreenAd baseFullscreenAd = BaseFullscreenAd.this;
                uVar.runOnUiThread(new Function0<Unit>() {
                    {
                        super(0);
                    }

                    @Override
                    public Object invoke() {
                        m336invoke();
                        return Unit.f64096a;
                    }

                    public final void m336invoke() {
                        h adListener = baseFullscreenAd.getAdListener();
                        v vVar = adListener instanceof v ? (v) adListener : null;
                        if (vVar != null) {
                            vVar.onAdRewarded(baseFullscreenAd);
                        }
                    }
                });
                AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, BaseFullscreenAd.this.getRewardedMetric$vungle_ads_release(), BaseFullscreenAd.this.getLogEntry$vungle_ads_release(), (String) null, 4, (Object) null);
            }

            @Override
            public void onAdStart(String str) {
                BaseFullscreenAd.this.getSignalManager$vungle_ads_release().increaseSessionDepthCounter();
                BaseFullscreenAd.this.getPresentToDisplayMetric$vungle_ads_release().markStart();
                com.vungle.ads.internal.util.u uVar = com.vungle.ads.internal.util.u.INSTANCE;
                final BaseFullscreenAd baseFullscreenAd = BaseFullscreenAd.this;
                uVar.runOnUiThread(new Function0<Unit>() {
                    {
                        super(0);
                    }

                    @Override
                    public Object invoke() {
                        m337invoke();
                        return Unit.f64096a;
                    }

                    public final void m337invoke() {
                        h adListener = baseFullscreenAd.getAdListener();
                        if (adListener != null) {
                            adListener.onAdStart(baseFullscreenAd);
                        }
                    }
                });
            }

            @Override
            public void onFailure(final VungleError error) {
                Intrinsics.h(error, "error");
                com.vungle.ads.internal.util.u uVar = com.vungle.ads.internal.util.u.INSTANCE;
                final BaseFullscreenAd baseFullscreenAd = BaseFullscreenAd.this;
                uVar.runOnUiThread(new Function0<Unit>() {
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override
                    public Object invoke() {
                        m338invoke();
                        return Unit.f64096a;
                    }

                    public final void m338invoke() {
                        h adListener = baseFullscreenAd.getAdListener();
                        if (adListener != null) {
                            adListener.onAdFailedToPlay(baseFullscreenAd, error);
                        }
                    }
                });
                BaseFullscreenAd.this.getShowToFailMetric$vungle_ads_release().markEnd();
                AnalyticsClient.INSTANCE.logMetric$vungle_ads_release(BaseFullscreenAd.this.getShowToFailMetric$vungle_ads_release(), BaseFullscreenAd.this.getLogEntry$vungle_ads_release(), String.valueOf(error.getCode()));
            }
        });
    }
}
