package com.yandex.mobile.ads.banner;

import android.content.Context;
import android.util.AttributeSet;
import androidx.annotation.MainThread;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.transsion.push.PushConstants;
import com.yandex.mobile.ads.common.AdRequest;
import com.yandex.mobile.ads.common.VideoController;
import com.yandex.mobile.ads.impl.aj;
import com.yandex.mobile.ads.impl.bj;
import com.yandex.mobile.ads.impl.cj;
import com.yandex.mobile.ads.impl.en2;
import com.yandex.mobile.ads.impl.g5;
import com.yandex.mobile.ads.impl.hp0;
import com.yandex.mobile.ads.impl.ml2;
import com.yandex.mobile.ads.impl.np0;
import com.yandex.mobile.ads.impl.o3;
import com.yandex.mobile.ads.impl.qe2;
import com.yandex.mobile.ads.impl.sg0;
import com.yandex.mobile.ads.impl.sl2;
import com.yandex.mobile.ads.impl.ts;
import com.yandex.mobile.ads.impl.wl2;
import com.yandex.mobile.ads.impl.ys;
import com.yandex.mobile.ads.impl.zi;
import com.yandex.mobile.ads.impl.zs;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0007\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0004\u0010\bB#\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u0004\u0010\u000bJ\u0015\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0013\u001a\u00020\u000e2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011¢\u0006\u0004\b\u0013\u0010\u0014J\u0015\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u0015¢\u0006\u0004\b\u0017\u0010\u0018J\u0019\u0010\u001b\u001a\u00020\u000e2\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001d\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u001d\u0010\u001eR\u0017\u0010$\u001a\u00020\u001f8\u0006¢\u0006\f\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#R\u0013\u0010\u0016\u001a\u0004\u0018\u00010\u00158F¢\u0006\u0006\u001a\u0004\b%\u0010&R\u0013\u0010)\u001a\u0004\u0018\u00010\u00198F¢\u0006\u0006\u001a\u0004\b'\u0010(¨\u0006*"}, d2 = {"Lcom/yandex/mobile/ads/banner/BannerAdView;", "Lcom/yandex/mobile/ads/impl/np0;", "Landroid/content/Context;", "context", MethodDecl.initName, "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Lcom/yandex/mobile/ads/common/AdRequest;", "adRequest", "Lzfb;", "loadAd", "(Lcom/yandex/mobile/ads/common/AdRequest;)V", "Lcom/yandex/mobile/ads/banner/BannerAdEventListener;", "bannerAdEventListener", "setBannerAdEventListener", "(Lcom/yandex/mobile/ads/banner/BannerAdEventListener;)V", "Lcom/yandex/mobile/ads/banner/BannerAdSize;", "adSize", "setAdSize", "(Lcom/yandex/mobile/ads/banner/BannerAdSize;)V", "", "adUnitId", "setAdUnitId", "(Ljava/lang/String;)V", PushConstants.PROVIDER_FIELD_DESTROY, "()V", "Lcom/yandex/mobile/ads/common/VideoController;", CmcdData.STREAM_TYPE_LIVE, "Lcom/yandex/mobile/ads/common/VideoController;", "getVideoController", "()Lcom/yandex/mobile/ads/common/VideoController;", "videoController", "getAdSize", "()Lcom/yandex/mobile/ads/banner/BannerAdSize;", "getInfo", "()Ljava/lang/String;", "info", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0})
@MainThread
public final class BannerAdView extends np0 {
    private final ml2 j;
    private String k;

    private final VideoController videoController;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public BannerAdView(Context context) {
        this(context, null);
        y45.j(context, "context");
    }

    @Override
    public final aj a(Context context, zi ziVar, g5 g5Var) {
        y45.j(context, "context");
        y45.j(ziVar, "bannerAdListener");
        y45.j(g5Var, "phasesManager");
        return new aj(context, this, ziVar, g5Var, new qe2(), new cj(), new bj(getAdConfiguration$mobileads_externalRelease().q()), new sg0());
    }

    @Override
    public void destroy() {
        super.destroy();
    }

    public final BannerAdSize getAdSize() {
        zs zsVarB = b();
        if (zsVarB == null) {
            return null;
        }
        y45.j(zsVarB, "coreBannerAdSize");
        return new BannerAdSize(zsVarB.a());
    }

    public final String getInfo() {
        return c();
    }

    public final VideoController getVideoController() {
        return this.videoController;
    }

    public final void loadAd(AdRequest adRequest) {
        y45.j(adRequest, "adRequest");
        String str = this.k;
        if (str == null || str.length() <= 0) {
            hp0.a("Failed to load ad with empty ad unit id", new Object[0]);
        } else {
            a(this.j.a(str, adRequest));
        }
    }

    public final void setAdSize(BannerAdSize adSize) {
        y45.j(adSize, "adSize");
        a(a.a(adSize));
    }

    @Override
    public void setAdUnitId(String adUnitId) {
        this.k = adUnitId;
        super.setAdUnitId(adUnitId);
    }

    public final void setBannerAdEventListener(BannerAdEventListener bannerAdEventListener) {
        ys sl2Var;
        if (bannerAdEventListener instanceof ClosableBannerAdEventListener) {
            sl2Var = new wl2((ClosableBannerAdEventListener) bannerAdEventListener);
        } else {
            sl2Var = bannerAdEventListener != null ? new sl2(bannerAdEventListener) : null;
        }
        a(sl2Var);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public BannerAdView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        y45.j(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BannerAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i, new o3(ts.d, new en2(context)), null, null, null, null, null, 496, null);
        y45.j(context, "context");
        this.j = new ml2();
        this.videoController = new VideoController(d());
    }
}
