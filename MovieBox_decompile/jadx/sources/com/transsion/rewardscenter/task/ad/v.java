package com.transsion.rewardscenter.task.ad;

import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.ad.view.native_ad.NativeWrapperAdView;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public abstract class v {

    public static final class b extends v {

        private final AdTaskState f49141a;

        /* JADX WARN: Multi-variable type inference failed */
        public b() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof b) && this.f49141a == ((b) obj).f49141a;
        }

        public int hashCode() {
            return this.f49141a.hashCode();
        }

        public String toString() {
            return "RewardItem(adTaskState=" + this.f49141a + ")";
        }

        public b(AdTaskState adTaskState, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this((i10 & 1) != 0 ? AdTaskState.NORMAL : adTaskState);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(AdTaskState adTaskState) {
            super(null);
            Intrinsics.h(adTaskState, "adTaskState");
            this.f49141a = adTaskState;
        }
    }

    public v(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private v() {
    }

    public static final class a extends v {

        private final BiddingIntermediateMaterialBean f49132a;

        private NativeWrapperAdView f49133b;

        private com.transsion.ad.bidding.base.r f49134c;

        private com.transsion.ad.bidding.base.u f49135d;

        private AdTaskState f49136e;

        private String f49137f;

        private boolean f49138g;

        private boolean f49139h;

        private long f49140i;

        public a(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean, NativeWrapperAdView nativeWrapperAdView, com.transsion.ad.bidding.base.r rVar, com.transsion.ad.bidding.base.u uVar, AdTaskState adTaskState, String str, boolean z10, boolean z11, long j10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this(biddingIntermediateMaterialBean, (i10 & 2) != 0 ? null : nativeWrapperAdView, (i10 & 4) != 0 ? null : rVar, (i10 & 8) == 0 ? uVar : null, (i10 & 16) != 0 ? AdTaskState.NORMAL : adTaskState, (i10 & 32) != 0 ? "" : str, (i10 & 64) != 0 ? false : z10, (i10 & 128) == 0 ? z11 : false, (i10 & 256) != 0 ? 0L : j10);
        }

        public final a a(BiddingIntermediateMaterialBean adBean, NativeWrapperAdView nativeWrapperAdView, com.transsion.ad.bidding.base.r rVar, com.transsion.ad.bidding.base.u uVar, AdTaskState adTaskState, String packageName, boolean z10, boolean z11, long j10) {
            Intrinsics.h(adBean, "adBean");
            Intrinsics.h(adTaskState, "adTaskState");
            Intrinsics.h(packageName, "packageName");
            return new a(adBean, nativeWrapperAdView, rVar, uVar, adTaskState, packageName, z10, z11, j10);
        }

        public final BiddingIntermediateMaterialBean c() {
            return this.f49132a;
        }

        public final com.transsion.ad.bidding.base.r d() {
            return this.f49134c;
        }

        public final AdTaskState e() {
            return this.f49136e;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return Intrinsics.c(this.f49132a, aVar.f49132a) && Intrinsics.c(this.f49133b, aVar.f49133b) && Intrinsics.c(this.f49134c, aVar.f49134c) && Intrinsics.c(this.f49135d, aVar.f49135d) && this.f49136e == aVar.f49136e && Intrinsics.c(this.f49137f, aVar.f49137f) && this.f49138g == aVar.f49138g && this.f49139h == aVar.f49139h && this.f49140i == aVar.f49140i;
        }

        public final boolean f() {
            return this.f49139h;
        }

        public final long g() {
            return this.f49140i;
        }

        public final NativeWrapperAdView h() {
            return this.f49133b;
        }

        public int hashCode() {
            int iHashCode = this.f49132a.hashCode() * 31;
            NativeWrapperAdView nativeWrapperAdView = this.f49133b;
            int iHashCode2 = (iHashCode + (nativeWrapperAdView == null ? 0 : nativeWrapperAdView.hashCode())) * 31;
            com.transsion.ad.bidding.base.r rVar = this.f49134c;
            int iHashCode3 = (iHashCode2 + (rVar == null ? 0 : rVar.hashCode())) * 31;
            com.transsion.ad.bidding.base.u uVar = this.f49135d;
            return ((((((((((iHashCode3 + (uVar != null ? uVar.hashCode() : 0)) * 31) + this.f49136e.hashCode()) * 31) + this.f49137f.hashCode()) * 31) + androidx.compose.foundation.e.a(this.f49138g)) * 31) + androidx.compose.foundation.e.a(this.f49139h)) * 31) + androidx.collection.s.a(this.f49140i);
        }

        public final String i() {
            return this.f49137f;
        }

        public final com.transsion.ad.bidding.base.u j() {
            return this.f49135d;
        }

        public final boolean k() {
            return this.f49138g;
        }

        public final void l(com.transsion.ad.bidding.base.r rVar) {
            this.f49134c = rVar;
        }

        public final void m(AdTaskState adTaskState) {
            Intrinsics.h(adTaskState, "<set-?>");
            this.f49136e = adTaskState;
        }

        public final void n(boolean z10) {
            this.f49139h = z10;
        }

        public final void o(long j10) {
            this.f49140i = j10;
        }

        public final void p(NativeWrapperAdView nativeWrapperAdView) {
            this.f49133b = nativeWrapperAdView;
        }

        public final void q(com.transsion.ad.bidding.base.u uVar) {
            this.f49135d = uVar;
        }

        public String toString() {
            return "RegularItem(adBean=" + this.f49132a + ", nativeAdView=" + this.f49133b + ", adLayoutProvider=" + this.f49134c + ", sspLayoutProvider=" + this.f49135d + ", adTaskState=" + this.f49136e + ", packageName=" + this.f49137f + ", isPullNewAd=" + this.f49138g + ", bind=" + this.f49139h + ", downloadStartTime=" + this.f49140i + ")";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(BiddingIntermediateMaterialBean adBean, NativeWrapperAdView nativeWrapperAdView, com.transsion.ad.bidding.base.r rVar, com.transsion.ad.bidding.base.u uVar, AdTaskState adTaskState, String packageName, boolean z10, boolean z11, long j10) {
            super(null);
            Intrinsics.h(adBean, "adBean");
            Intrinsics.h(adTaskState, "adTaskState");
            Intrinsics.h(packageName, "packageName");
            this.f49132a = adBean;
            this.f49133b = nativeWrapperAdView;
            this.f49134c = rVar;
            this.f49135d = uVar;
            this.f49136e = adTaskState;
            this.f49137f = packageName;
            this.f49138g = z10;
            this.f49139h = z11;
            this.f49140i = j10;
        }
    }

    public static final class c extends v {

        private final BiddingIntermediateMaterialBean f49142a;

        private NativeWrapperAdView f49143b;

        private com.transsion.ad.bidding.base.r f49144c;

        private com.transsion.ad.bidding.base.u f49145d;

        private AdTaskState f49146e;

        private String f49147f;

        private boolean f49148g;

        private long f49149h;

        private long f49150i;

        public c(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean, NativeWrapperAdView nativeWrapperAdView, com.transsion.ad.bidding.base.r rVar, com.transsion.ad.bidding.base.u uVar, AdTaskState adTaskState, String str, boolean z10, long j10, long j11, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this(biddingIntermediateMaterialBean, (i10 & 2) != 0 ? null : nativeWrapperAdView, (i10 & 4) != 0 ? null : rVar, (i10 & 8) == 0 ? uVar : null, (i10 & 16) != 0 ? AdTaskState.NORMAL : adTaskState, (i10 & 32) != 0 ? "" : str, (i10 & 64) != 0 ? false : z10, (i10 & 128) != 0 ? 0L : j10, (i10 & 256) == 0 ? j11 : 0L);
        }

        public final c a(BiddingIntermediateMaterialBean adBean, NativeWrapperAdView nativeWrapperAdView, com.transsion.ad.bidding.base.r rVar, com.transsion.ad.bidding.base.u uVar, AdTaskState adTaskState, String packageName, boolean z10, long j10, long j11) {
            Intrinsics.h(adBean, "adBean");
            Intrinsics.h(adTaskState, "adTaskState");
            Intrinsics.h(packageName, "packageName");
            return new c(adBean, nativeWrapperAdView, rVar, uVar, adTaskState, packageName, z10, j10, j11);
        }

        public final BiddingIntermediateMaterialBean c() {
            return this.f49142a;
        }

        public final com.transsion.ad.bidding.base.r d() {
            return this.f49144c;
        }

        public final AdTaskState e() {
            return this.f49146e;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return Intrinsics.c(this.f49142a, cVar.f49142a) && Intrinsics.c(this.f49143b, cVar.f49143b) && Intrinsics.c(this.f49144c, cVar.f49144c) && Intrinsics.c(this.f49145d, cVar.f49145d) && this.f49146e == cVar.f49146e && Intrinsics.c(this.f49147f, cVar.f49147f) && this.f49148g == cVar.f49148g && this.f49149h == cVar.f49149h && this.f49150i == cVar.f49150i;
        }

        public final boolean f() {
            return this.f49148g;
        }

        public final long g() {
            return this.f49150i;
        }

        public final NativeWrapperAdView h() {
            return this.f49143b;
        }

        public int hashCode() {
            int iHashCode = this.f49142a.hashCode() * 31;
            NativeWrapperAdView nativeWrapperAdView = this.f49143b;
            int iHashCode2 = (iHashCode + (nativeWrapperAdView == null ? 0 : nativeWrapperAdView.hashCode())) * 31;
            com.transsion.ad.bidding.base.r rVar = this.f49144c;
            int iHashCode3 = (iHashCode2 + (rVar == null ? 0 : rVar.hashCode())) * 31;
            com.transsion.ad.bidding.base.u uVar = this.f49145d;
            return ((((((((((iHashCode3 + (uVar != null ? uVar.hashCode() : 0)) * 31) + this.f49146e.hashCode()) * 31) + this.f49147f.hashCode()) * 31) + androidx.compose.foundation.e.a(this.f49148g)) * 31) + androidx.collection.s.a(this.f49149h)) * 31) + androidx.collection.s.a(this.f49150i);
        }

        public final String i() {
            return this.f49147f;
        }

        public final long j() {
            return this.f49149h;
        }

        public final com.transsion.ad.bidding.base.u k() {
            return this.f49145d;
        }

        public final void l(com.transsion.ad.bidding.base.r rVar) {
            this.f49144c = rVar;
        }

        public final void m(AdTaskState adTaskState) {
            Intrinsics.h(adTaskState, "<set-?>");
            this.f49146e = adTaskState;
        }

        public final void n(boolean z10) {
            this.f49148g = z10;
        }

        public final void o(long j10) {
            this.f49150i = j10;
        }

        public final void p(NativeWrapperAdView nativeWrapperAdView) {
            this.f49143b = nativeWrapperAdView;
        }

        public final void q(long j10) {
            this.f49149h = j10;
        }

        public final void r(com.transsion.ad.bidding.base.u uVar) {
            this.f49145d = uVar;
        }

        public String toString() {
            return "StageItem(adBean=" + this.f49142a + ", nativeAdView=" + this.f49143b + ", adLayoutProvider=" + this.f49144c + ", sspLayoutProvider=" + this.f49145d + ", adTaskState=" + this.f49146e + ", packageName=" + this.f49147f + ", bind=" + this.f49148g + ", playedTime=" + this.f49149h + ", downloadStartTime=" + this.f49150i + ")";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(BiddingIntermediateMaterialBean adBean, NativeWrapperAdView nativeWrapperAdView, com.transsion.ad.bidding.base.r rVar, com.transsion.ad.bidding.base.u uVar, AdTaskState adTaskState, String packageName, boolean z10, long j10, long j11) {
            super(null);
            Intrinsics.h(adBean, "adBean");
            Intrinsics.h(adTaskState, "adTaskState");
            Intrinsics.h(packageName, "packageName");
            this.f49142a = adBean;
            this.f49143b = nativeWrapperAdView;
            this.f49144c = rVar;
            this.f49145d = uVar;
            this.f49146e = adTaskState;
            this.f49147f = packageName;
            this.f49148g = z10;
            this.f49149h = j10;
            this.f49150i = j11;
        }
    }
}
