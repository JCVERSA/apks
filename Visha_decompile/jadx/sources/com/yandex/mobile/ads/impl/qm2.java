package com.yandex.mobile.ads.impl;

import com.yandex.mobile.ads.nativeads.NativeAdAssets;
import com.yandex.mobile.ads.nativeads.NativeAdImage;
import com.yandex.mobile.ads.nativeads.NativeAdMedia;
import defpackage.y45;

public final class qm2 implements NativeAdAssets {
    private final rt a;

    public qm2(rt rtVar) {
        y45.j(rtVar, "assets");
        this.a = rtVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof qm2) && y45.e(this.a, ((qm2) obj).a);
    }

    @Override
    public final String getAge() {
        return this.a.a();
    }

    @Override
    public final String getBody() {
        return this.a.b();
    }

    @Override
    public final String getCallToAction() {
        return this.a.c();
    }

    @Override
    public final String getDomain() {
        return this.a.d();
    }

    @Override
    public final NativeAdImage getFavicon() {
        tt ttVarE = this.a.e();
        if (ttVarE != null) {
            return new sm2(ttVarE);
        }
        return null;
    }

    @Override
    public final NativeAdImage getIcon() {
        tt ttVarG = this.a.g();
        if (ttVarG != null) {
            return new sm2(ttVarG);
        }
        return null;
    }

    @Override
    public final NativeAdImage getImage() {
        tt ttVarH = this.a.h();
        if (ttVarH != null) {
            return new sm2(ttVarH);
        }
        return null;
    }

    @Override
    public final NativeAdMedia getMedia() {
        xt xtVarI = this.a.i();
        if (xtVarI != null) {
            return new vm2(xtVarI);
        }
        return null;
    }

    @Override
    public final String getPrice() {
        return this.a.j();
    }

    @Override
    public final Float getRating() {
        return this.a.k();
    }

    @Override
    public final String getReviewCount() {
        return this.a.l();
    }

    @Override
    public final String getSponsored() {
        return this.a.m();
    }

    @Override
    public final String getTitle() {
        return this.a.n();
    }

    @Override
    public final String getWarning() {
        return this.a.o();
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    @Override
    public final boolean isFeedbackAvailable() {
        return this.a.f();
    }

    public final String toString() {
        return "YandexNativeAdAssetsAdapter(assets=" + this.a + ")";
    }
}
