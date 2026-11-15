package com.transsion.wrapperad.view.cardpage;

import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.ad.view.native_ad.NativeWrapperAdView;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class f {

    private final NativeWrapperAdView f56134a;

    private final BiddingIntermediateMaterialBean f56135b;

    private NativeCardPageAdHelper f56136c;

    private boolean f56137d;

    private boolean f56138e;

    public f(NativeWrapperAdView nativeView, BiddingIntermediateMaterialBean adBean, NativeCardPageAdHelper nativeCardPageAdHelper, boolean z10, boolean z11) {
        Intrinsics.h(nativeView, "nativeView");
        Intrinsics.h(adBean, "adBean");
        this.f56134a = nativeView;
        this.f56135b = adBean;
        this.f56136c = nativeCardPageAdHelper;
        this.f56137d = z10;
        this.f56138e = z11;
    }

    public final BiddingIntermediateMaterialBean a() {
        return this.f56135b;
    }

    public final boolean b() {
        return this.f56137d;
    }

    public final NativeCardPageAdHelper c() {
        return this.f56136c;
    }

    public final NativeWrapperAdView d() {
        return this.f56134a;
    }

    public final boolean e() {
        return this.f56138e;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return Intrinsics.c(this.f56134a, fVar.f56134a) && Intrinsics.c(this.f56135b, fVar.f56135b) && Intrinsics.c(this.f56136c, fVar.f56136c) && this.f56137d == fVar.f56137d && this.f56138e == fVar.f56138e;
    }

    public final void f(boolean z10) {
        this.f56137d = z10;
    }

    public final void g(NativeCardPageAdHelper nativeCardPageAdHelper) {
        this.f56136c = nativeCardPageAdHelper;
    }

    public final void h(boolean z10) {
        this.f56138e = z10;
    }

    public int hashCode() {
        int iHashCode = ((this.f56134a.hashCode() * 31) + this.f56135b.hashCode()) * 31;
        NativeCardPageAdHelper nativeCardPageAdHelper = this.f56136c;
        return ((((iHashCode + (nativeCardPageAdHelper == null ? 0 : nativeCardPageAdHelper.hashCode())) * 31) + androidx.compose.foundation.e.a(this.f56137d)) * 31) + androidx.compose.foundation.e.a(this.f56138e);
    }

    public String toString() {
        return "NativeCardPageData(nativeView=" + this.f56134a + ", adBean=" + this.f56135b + ", helper=" + this.f56136c + ", bind=" + this.f56137d + ", showGuide=" + this.f56138e + ")";
    }

    public f(NativeWrapperAdView nativeWrapperAdView, BiddingIntermediateMaterialBean biddingIntermediateMaterialBean, NativeCardPageAdHelper nativeCardPageAdHelper, boolean z10, boolean z11, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(nativeWrapperAdView, biddingIntermediateMaterialBean, (i10 & 4) != 0 ? null : nativeCardPageAdHelper, (i10 & 8) != 0 ? false : z10, (i10 & 16) != 0 ? true : z11);
    }
}
