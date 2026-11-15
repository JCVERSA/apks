package com.monetization.ads.mediation.nativeads;

import android.content.Context;
import com.monetization.ads.mediation.base.a;
import java.util.Map;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b&\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003JK\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0014\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\n0\b2\u0014\u0010\f\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\t0\bH&¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdapter;", "Lcom/monetization/ads/mediation/base/a;", MethodDecl.initName, "()V", "Landroid/content/Context;", "context", "Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdapterListener;", "mediatedNativeAdapterListener", "", "", "", "localExtras", "serverExtras", "Lzfb;", "loadAd", "(Landroid/content/Context;Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdapterListener;Ljava/util/Map;Ljava/util/Map;)V", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0})
public abstract class MediatedNativeAdapter extends a {
    public abstract void loadAd(Context context, MediatedNativeAdapterListener mediatedNativeAdapterListener, Map<String, ? extends Object> localExtras, Map<String, String> serverExtras);
}
