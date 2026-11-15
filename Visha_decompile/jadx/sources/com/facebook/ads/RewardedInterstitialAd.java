package com.facebook.ads;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.Keep;
import androidx.annotation.UiThread;
import com.facebook.ads.internal.api.RewardedInterstitialAdApi;
import com.facebook.ads.internal.bench.Benchmark;
import com.facebook.ads.internal.dynamicloading.DynamicLoaderFactory;
import com.facebook.infer.annotation.Nullsafe;

@Keep
@UiThread
@Nullsafe(Nullsafe.Mode.LOCAL)
public class RewardedInterstitialAd implements FullScreenAd {
    public static final int UNSET_VIDEO_DURATION = -1;
    private final RewardedInterstitialAdApi mRewardedInterstitialAdApi;

    @Keep
    public interface RewardedInterstitialAdLoadConfigBuilder extends Ad.LoadConfigBuilder {
        @Override
        @Benchmark(failAtMillis = 5, warnAtMillis = 1)
        RewardedInterstitialLoadAdConfig build();

        @Benchmark(failAtMillis = 5, warnAtMillis = 1)
        RewardedInterstitialAdLoadConfigBuilder withAdListener(RewardedInterstitialAdListener rewardedInterstitialAdListener);

        @Override
        @Benchmark(failAtMillis = 5, warnAtMillis = 1)
        RewardedInterstitialAdLoadConfigBuilder withBid(String str);

        @Benchmark(failAtMillis = 5, warnAtMillis = 1)
        RewardedInterstitialAdLoadConfigBuilder withFailOnCacheFailureEnabled(boolean z);

        @Benchmark(failAtMillis = 5, warnAtMillis = 1)
        RewardedInterstitialAdLoadConfigBuilder withRewardData(RewardData rewardData);
    }

    @Keep
    public interface RewardedInterstitialAdShowConfigBuilder extends FullScreenAd.ShowConfigBuilder {
        @Override
        RewardedInterstitialShowAdConfig build();

        @Benchmark(failAtMillis = 5, warnAtMillis = 1)
        RewardedInterstitialAdShowConfigBuilder withAppOrientation(int i);
    }

    @Keep
    public interface RewardedInterstitialLoadAdConfig extends Ad.LoadAdConfig {
    }

    @Keep
    public interface RewardedInterstitialShowAdConfig extends FullScreenAd.ShowAdConfig {
    }

    @Benchmark
    public RewardedInterstitialAd(Context context, String str) {
        this.mRewardedInterstitialAdApi = DynamicLoaderFactory.makeLoader(context).createRewardedInterstitialAd(context, str, this);
    }

    @Override
    public void destroy() {
        this.mRewardedInterstitialAdApi.destroy();
    }

    @Override
    public String getPlacementId() {
        return this.mRewardedInterstitialAdApi.getPlacementId();
    }

    @Benchmark(failAtMillis = 5, warnAtMillis = 1)
    public int getVideoDuration() {
        return this.mRewardedInterstitialAdApi.getVideoDuration();
    }

    @Override
    public boolean isAdInvalidated() {
        return this.mRewardedInterstitialAdApi.isAdInvalidated();
    }

    @Benchmark(failAtMillis = 5, warnAtMillis = 1)
    public boolean isAdLoaded() {
        return this.mRewardedInterstitialAdApi.isAdLoaded();
    }

    @Override
    public void loadAd() {
        this.mRewardedInterstitialAdApi.loadAd();
    }

    @Override
    @SuppressLint({"DeprecatedMethod"})
    @Deprecated
    public void setExtraHints(ExtraHints extraHints) {
        this.mRewardedInterstitialAdApi.setExtraHints(extraHints);
    }

    @Override
    public boolean show() {
        return this.mRewardedInterstitialAdApi.show();
    }

    @Override
    @Benchmark(failAtMillis = 5, warnAtMillis = 1)
    public RewardedInterstitialAdLoadConfigBuilder buildLoadAdConfig() {
        return this.mRewardedInterstitialAdApi.buildLoadAdConfig();
    }

    @Override
    @Benchmark(failAtMillis = 5, warnAtMillis = 1)
    public RewardedInterstitialAdShowConfigBuilder buildShowAdConfig() {
        return this.mRewardedInterstitialAdApi.buildShowAdConfig();
    }

    @Benchmark
    public void loadAd(RewardedInterstitialLoadAdConfig rewardedInterstitialLoadAdConfig) {
        this.mRewardedInterstitialAdApi.loadAd(rewardedInterstitialLoadAdConfig);
    }

    @Benchmark
    public boolean show(RewardedInterstitialShowAdConfig rewardedInterstitialShowAdConfig) {
        return this.mRewardedInterstitialAdApi.show(rewardedInterstitialShowAdConfig);
    }
}
