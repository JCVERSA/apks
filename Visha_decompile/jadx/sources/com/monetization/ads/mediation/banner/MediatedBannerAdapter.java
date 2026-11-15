package com.monetization.ads.mediation.banner;

import android.content.Context;
import android.view.View;
import com.monetization.ads.mediation.base.MediatedAdRequestError;
import java.util.Map;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b&\u0018\u00002\u00020\u0001:\u0001\u0011B\u0007¢\u0006\u0004\b\u0002\u0010\u0003JK\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0014\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\n0\b2\u0014\u0010\f\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\t0\bH&¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\rH&¢\u0006\u0004\b\u0010\u0010\u0003¨\u0006\u0012"}, d2 = {"Lcom/monetization/ads/mediation/banner/MediatedBannerAdapter;", "Lcom/monetization/ads/mediation/base/a;", MethodDecl.initName, "()V", "Landroid/content/Context;", "context", "Lcom/monetization/ads/mediation/banner/MediatedBannerAdapter$MediatedBannerAdapterListener;", "mediatedBannerAdapterListener", "", "", "", "localExtras", "serverExtras", "Lzfb;", "loadBanner", "(Landroid/content/Context;Lcom/monetization/ads/mediation/banner/MediatedBannerAdapter$MediatedBannerAdapterListener;Ljava/util/Map;Ljava/util/Map;)V", "onInvalidate", "MediatedBannerAdapterListener", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0})
public abstract class MediatedBannerAdapter extends com.monetization.ads.mediation.base.a {

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\bf\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H&¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0002H&¢\u0006\u0004\b\t\u0010\u0004J\u0017\u0010\f\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH&¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0002H&¢\u0006\u0004\b\u000e\u0010\u0004¨\u0006\u000f"}, d2 = {"Lcom/monetization/ads/mediation/banner/MediatedBannerAdapter$MediatedBannerAdapterListener;", "", "Lzfb;", "onAdClicked", "()V", "Lcom/monetization/ads/mediation/base/MediatedAdRequestError;", "error", "onAdFailedToLoad", "(Lcom/monetization/ads/mediation/base/MediatedAdRequestError;)V", "onAdLeftApplication", "Landroid/view/View;", "view", "onAdLoaded", "(Landroid/view/View;)V", "onAdImpression", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public interface MediatedBannerAdapterListener {
        void onAdClicked();

        void onAdFailedToLoad(MediatedAdRequestError error);

        void onAdImpression();

        void onAdLeftApplication();

        void onAdLoaded(View view);
    }

    public abstract void loadBanner(Context context, MediatedBannerAdapterListener mediatedBannerAdapterListener, Map<String, ? extends Object> localExtras, Map<String, String> serverExtras);

    public abstract void onInvalidate();
}
