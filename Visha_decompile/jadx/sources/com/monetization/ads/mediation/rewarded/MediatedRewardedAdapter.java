package com.monetization.ads.mediation.rewarded;

import android.app.Activity;
import android.content.Context;
import com.monetization.ads.mediation.base.a;
import java.util.Map;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\b&\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003JK\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0014\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\n0\b2\u0014\u0010\f\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\t0\bH&¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\rH&¢\u0006\u0004\b\u0010\u0010\u0003J\u0017\u0010\u0013\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\u0011H&¢\u0006\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0016\u001a\u00020\u00158&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0017¨\u0006\u0018"}, d2 = {"Lcom/monetization/ads/mediation/rewarded/MediatedRewardedAdapter;", "Lcom/monetization/ads/mediation/base/a;", MethodDecl.initName, "()V", "Landroid/content/Context;", "context", "Lcom/monetization/ads/mediation/rewarded/MediatedRewardedAdapterListener;", "mediatedRewardedAdapterListener", "", "", "", "localExtras", "serverExtras", "Lzfb;", "loadRewardedAd", "(Landroid/content/Context;Lcom/monetization/ads/mediation/rewarded/MediatedRewardedAdapterListener;Ljava/util/Map;Ljava/util/Map;)V", "onInvalidate", "Landroid/app/Activity;", "activity", "showRewardedAd", "(Landroid/app/Activity;)V", "", "isLoaded", "()Z", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0})
public abstract class MediatedRewardedAdapter extends a {
    public abstract boolean isLoaded();

    public abstract void loadRewardedAd(Context context, MediatedRewardedAdapterListener mediatedRewardedAdapterListener, Map<String, ? extends Object> localExtras, Map<String, String> serverExtras);

    public abstract void onInvalidate();

    public abstract void showRewardedAd(Activity activity);
}
