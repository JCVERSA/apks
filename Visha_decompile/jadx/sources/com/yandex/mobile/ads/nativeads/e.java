package com.yandex.mobile.ads.nativeads;

import com.yandex.mobile.ads.impl.e61;
import com.yandex.mobile.ads.impl.gr1;
import com.yandex.mobile.ads.impl.q61;
import com.yandex.mobile.ads.impl.qm2;
import com.yandex.mobile.ads.impl.rm2;
import com.yandex.mobile.ads.impl.s61;
import com.yandex.mobile.ads.impl.st;
import com.yandex.mobile.ads.impl.tm2;
import com.yandex.mobile.ads.impl.wm2;
import com.yandex.mobile.ads.impl.xl2;
import com.yandex.mobile.ads.impl.xm2;
import com.yandex.mobile.ads.impl.yt;
import defpackage.y45;
import kotlin.NoWhenBranchMatchedException;

public class e implements NativeAd, CustomClickable, com.yandex.mobile.ads.nativeads.video.a, s61 {
    private final q61 a;
    private final g b;
    private final wm2 c;

    public e(q61 q61Var) {
        this(q61Var, new h(), new g(), new wm2());
    }

    @Override
    public final q61 a() {
        return this.a;
    }

    @Override
    public final void addImageLoadingListener(NativeAdImageLoadingListener nativeAdImageLoadingListener) {
        y45.j(nativeAdImageLoadingListener, "listener");
        this.a.b(new tm2(nativeAdImageLoadingListener));
    }

    @Override
    public final void bindNativeAd(NativeAdViewBinder nativeAdViewBinder) throws NativeAdException {
        y45.j(nativeAdViewBinder, "viewBinder");
        try {
            this.b.getClass();
            this.a.b(g.a(nativeAdViewBinder));
        } catch (e61 e) {
            throw new NativeAdException(e.a(), e);
        } catch (Throwable th) {
            throw new NativeAdException("Ad binding failed with unexpected exception", th);
        }
    }

    public boolean equals(Object obj) {
        return (obj instanceof e) && y45.e(((e) obj).a, this.a);
    }

    @Override
    public final NativeAdAssets getAdAssets() {
        return new qm2(this.a.getAdAssets());
    }

    @Override
    public final NativeAdType getAdType() {
        wm2 wm2Var = this.c;
        gr1 adType = this.a.getAdType();
        wm2Var.getClass();
        y45.j(adType, "responseNativeType");
        int iOrdinal = adType.ordinal();
        if (iOrdinal == 0) {
            return NativeAdType.CONTENT;
        }
        if (iOrdinal == 1) {
            return NativeAdType.APP_INSTALL;
        }
        if (iOrdinal == 2) {
            return NativeAdType.MEDIA;
        }
        if (iOrdinal == 3) {
            return NativeAdType.CONTENT;
        }
        throw new NoWhenBranchMatchedException();
    }

    @Override
    public final String getInfo() {
        return this.a.getInfo();
    }

    @Override
    public final com.yandex.mobile.ads.nativeads.video.b getNativeAdVideoController() {
        yt nativeAdVideoController = this.a.getNativeAdVideoController();
        if (nativeAdVideoController != null) {
            return new xm2(nativeAdVideoController);
        }
        return null;
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    @Override
    public final void loadImages() {
        this.a.loadImages();
    }

    @Override
    public final void removeImageLoadingListener(NativeAdImageLoadingListener nativeAdImageLoadingListener) {
        y45.j(nativeAdImageLoadingListener, "listener");
        this.a.a(new tm2(nativeAdImageLoadingListener));
    }

    @Override
    public final void setCustomClickHandler(CustomClickHandler customClickHandler) {
        this.a.a(customClickHandler != null ? new c(customClickHandler) : null);
    }

    @Override
    public final void setNativeAdEventListener(NativeAdEventListener nativeAdEventListener) {
        st rm2Var;
        if (nativeAdEventListener instanceof ClosableNativeAdEventListener) {
            rm2Var = new xl2((ClosableNativeAdEventListener) nativeAdEventListener);
        } else {
            rm2Var = nativeAdEventListener != null ? new rm2(nativeAdEventListener) : null;
        }
        this.a.a(rm2Var);
    }

    public e(q61 q61Var, h hVar, g gVar, wm2 wm2Var) {
        y45.j(q61Var, "nativeAdPrivate");
        y45.j(hVar, "nativePromoAdViewAdapter");
        y45.j(gVar, "nativeAdViewBinderAdapter");
        y45.j(wm2Var, "nativeAdTypeConverter");
        this.a = q61Var;
        this.b = gVar;
        this.c = wm2Var;
    }
}
