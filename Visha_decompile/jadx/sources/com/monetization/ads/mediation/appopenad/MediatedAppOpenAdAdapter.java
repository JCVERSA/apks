package com.monetization.ads.mediation.appopenad;

import android.app.Activity;
import android.content.Context;
import com.monetization.ads.mediation.base.MediatedAdRequestError;
import java.util.Map;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\b&\u0018\u00002\u00020\u0001:\u0001\u0018B\u0007¢\u0006\u0004\b\u0002\u0010\u0003JK\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0014\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\n0\b2\u0014\u0010\f\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\t0\bH&¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\rH&¢\u0006\u0004\b\u0010\u0010\u0003J\u0017\u0010\u0013\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\u0011H&¢\u0006\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0016\u001a\u00020\u00158&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0017¨\u0006\u0019"}, d2 = {"Lcom/monetization/ads/mediation/appopenad/MediatedAppOpenAdAdapter;", "Lcom/monetization/ads/mediation/base/a;", MethodDecl.initName, "()V", "Landroid/content/Context;", "context", "Lcom/monetization/ads/mediation/appopenad/MediatedAppOpenAdAdapter$MediatedAppOpenAdAdapterListener;", "listener", "", "", "", "localExtras", "serverExtras", "Lzfb;", "loadAppOpenAd", "(Landroid/content/Context;Lcom/monetization/ads/mediation/appopenad/MediatedAppOpenAdAdapter$MediatedAppOpenAdAdapterListener;Ljava/util/Map;Ljava/util/Map;)V", "onInvalidate", "Landroid/app/Activity;", "activity", "showAppOpenAd", "(Landroid/app/Activity;)V", "", "isLoaded", "()Z", "MediatedAppOpenAdAdapterListener", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0})
public abstract class MediatedAppOpenAdAdapter extends com.monetization.ads.mediation.base.a {

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\bf\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H&¢\u0006\u0004\b\u0005\u0010\u0004J\u0017\u0010\b\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H&¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0002H&¢\u0006\u0004\b\n\u0010\u0004J\u000f\u0010\u000b\u001a\u00020\u0002H&¢\u0006\u0004\b\u000b\u0010\u0004J\u000f\u0010\f\u001a\u00020\u0002H&¢\u0006\u0004\b\f\u0010\u0004J\u000f\u0010\r\u001a\u00020\u0002H&¢\u0006\u0004\b\r\u0010\u0004¨\u0006\u000e"}, d2 = {"Lcom/monetization/ads/mediation/appopenad/MediatedAppOpenAdAdapter$MediatedAppOpenAdAdapterListener;", "", "Lzfb;", "onAppOpenAdClicked", "()V", "onAppOpenAdDismissed", "Lcom/monetization/ads/mediation/base/MediatedAdRequestError;", "error", "onAppOpenAdFailedToLoad", "(Lcom/monetization/ads/mediation/base/MediatedAdRequestError;)V", "onAppOpenAdLeftApplication", "onAppOpenAdLoaded", "onAppOpenAdShown", "onAdImpression", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public interface MediatedAppOpenAdAdapterListener {
        void onAdImpression();

        void onAppOpenAdClicked();

        void onAppOpenAdDismissed();

        void onAppOpenAdFailedToLoad(MediatedAdRequestError error);

        void onAppOpenAdLeftApplication();

        void onAppOpenAdLoaded();

        void onAppOpenAdShown();
    }

    public abstract boolean isLoaded();

    public abstract void loadAppOpenAd(Context context, MediatedAppOpenAdAdapterListener listener, Map<String, ? extends Object> localExtras, Map<String, String> serverExtras);

    public abstract void onInvalidate();

    public abstract void showAppOpenAd(Activity activity);
}
