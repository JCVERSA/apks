package com.yandex.mobile.ads.impl;

import com.monetization.ads.nativeads.ExtendedNativeAdView;
import defpackage.y45;

public final class x1 {
    private final q61 a;
    private final zr b;
    private final st c;
    private final j41 d;
    private final eh e;

    public x1(q61 q61Var, zr zrVar, st stVar) {
        this(q61Var, zrVar, stVar, new l41(), new eh());
    }

    public final boolean a(ExtendedNativeAdView extendedNativeAdView) {
        y45.j(extendedNativeAdView, "nativeAdView");
        try {
            if (this.a instanceof b02) {
                ((b02) this.a).a(this.e.a(extendedNativeAdView, this.d));
                ((b02) this.a).b(this.c);
            }
            return true;
        } catch (e61 unused) {
            this.b.f();
            return false;
        }
    }

    public x1(q61 q61Var, zr zrVar, st stVar, j41 j41Var, eh ehVar) {
        y45.j(q61Var, "nativeAdPrivate");
        y45.j(zrVar, "contentCloseListener");
        y45.j(stVar, "adEventListener");
        y45.j(j41Var, "nativeAdAssetViewProvider");
        y45.j(ehVar, "assetsNativeAdViewProviderCreator");
        this.a = q61Var;
        this.b = zrVar;
        this.c = stVar;
        this.d = j41Var;
        this.e = ehVar;
    }

    public final void a() {
        q61 q61Var = this.a;
        if (q61Var instanceof b02) {
            ((b02) q61Var).b((st) null);
        }
    }
}
