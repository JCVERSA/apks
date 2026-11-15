package com.transsion.postdetail.viewmodel;

import android.content.Context;
import android.location.Address;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.t0;
import androidx.p009lifecycle.u0;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.y0;

public final class RoomPostViewModel extends t0 {

    public static final a f48136o = new a(null);

    private final Lazy f48137a = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return RoomPostViewModel.X();
        }
    });

    private final Lazy f48138b = LazyKt.a(LazyThreadSafetyMode.NONE, new Function0() {
        @Override
        public final Object invoke() {
            return RoomPostViewModel.t();
        }
    });

    private final Lazy f48139c = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return RoomPostViewModel.s();
        }
    });

    private final b0 f48140d = new b0();

    private final b0 f48141e = new b0();

    private final b0 f48142f = new b0();

    private final b0 f48143g = new b0();

    private final b0 f48144h = new b0();

    private final b0 f48145i = new b0();

    private final b0 f48146j = new b0();

    private final b0 f48147k = new b0();

    private final b0 f48148l = new b0();

    private final b0 f48149m = new b0();

    private long f48150n;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public static void J(RoomPostViewModel roomPostViewModel, boolean z10, boolean z11, String str, String str2, String str3, int i10, int i11, Object obj) {
        if ((i11 & 32) != 0) {
            i10 = 9;
        }
        roomPostViewModel.I(z10, z11, str, str2, str3, i10);
    }

    public final ao.c M() {
        return (ao.c) this.f48137a.getValue();
    }

    public static void P(RoomPostViewModel roomPostViewModel, boolean z10, boolean z11, String str, String str2, String str3, int i10, int i11, Object obj) {
        if ((i11 & 32) != 0) {
            i10 = 9;
        }
        roomPostViewModel.O(z10, z11, str, str2, str3, i10);
    }

    public static final ao.c X() {
        return (ao.c) kg.c.f63982e.a().h(ao.c.class);
    }

    public static final bo.a s() {
        return new bo.a();
    }

    public static final tm.a t() {
        return (tm.a) kg.c.f63982e.a().h(tm.a.class);
    }

    public final bo.a v() {
        return (bo.a) this.f48139c.getValue();
    }

    public final tm.a w() {
        return (tm.a) this.f48138b.getValue();
    }

    public final b0 A() {
        return this.f48142f;
    }

    public final b0 B() {
        return this.f48144h;
    }

    public final b0 C() {
        return this.f48143g;
    }

    public final void D(Context context, boolean z10, boolean z11, String str, int i10, String str2) {
        Intrinsics.h(context, "context");
        S();
        if (z10) {
            T();
            U();
        }
        kotlinx.coroutines.k.d(u0.a(this), null, null, new RoomPostViewModel$getPostExplore$1(z10, z11, this, str, i10, str2, null), 3, null);
    }

    public final void E(boolean z10, String str, int i10, String str2) {
        kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new RoomPostViewModel$getPostExploreMoreCache$1(this, str, i10, str2, z10, null), 2, null);
    }

    public final void F(boolean z10, String str, int i10, double d10, double d11) {
        kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new RoomPostViewModel$getPostNearby$1(this, str, i10, d11, d10, z10, null), 2, null);
    }

    public final void G(boolean z10, String str, String str2, int i10, String sortType, boolean z11) {
        Intrinsics.h(sortType, "sortType");
        kotlinx.coroutines.k.d(u0.a(this), null, null, new RoomPostViewModel$getPostNewest$1(this, str, str2, i10, sortType, z11, z10, null), 3, null);
    }

    public final void H(boolean z10, String groupId, String str, int i10, boolean z11) {
        Intrinsics.h(groupId, "groupId");
        kotlinx.coroutines.k.d(u0.a(this), null, null, new RoomPostViewModel$getPostPopular$1(this, groupId, str, i10, z11, z10, null), 3, null);
    }

    public final void I(boolean z10, boolean z11, String tabId, String str, String str2, int i10) {
        Intrinsics.h(tabId, "tabId");
        if (z10) {
            V(tabId);
        }
        kotlinx.coroutines.k.d(u0.a(this), null, null, new RoomPostViewModel$getPostSubPageList$1(z10, tabId, z11, this, str, i10, str2, null), 3, null);
    }

    public final void K(double d10, double d11, Address address) {
        kotlinx.coroutines.k.d(u0.a(this), null, null, new RoomPostViewModel$getRecommendRooms$1(this, d10, d11, address, null), 3, null);
    }

    public final b0 L() {
        return this.f48146j;
    }

    public final b0 N() {
        return this.f48149m;
    }

    public final void O(boolean z10, boolean z11, String tabId, String str, String str2, int i10) {
        Intrinsics.h(tabId, "tabId");
        if (z10) {
            W(tabId);
        }
        kotlinx.coroutines.k.d(u0.a(this), null, null, new RoomPostViewModel$getStaggeredPostPageList$1(z10, tabId, z11, this, str, i10, str2, null), 3, null);
    }

    public final b0 Q() {
        return this.f48148l;
    }

    public final void R(String str, int i10) {
        kotlinx.coroutines.k.d(u0.a(this), null, null, new RoomPostViewModel$like$1(str, i10, this, null), 3, null);
    }

    public final void S() {
        kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new RoomPostViewModel$loadPostExploreActiveSaveCache$1(this, null), 2, null);
    }

    public final void T() {
        kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new RoomPostViewModel$loadPostExploreBuiltInCache$1(this, null), 2, null);
    }

    public final void U() {
        kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new RoomPostViewModel$loadPostExploreNetCache$1(this, null), 2, null);
    }

    public final void V(String tabId) {
        Intrinsics.h(tabId, "tabId");
        kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new RoomPostViewModel$loadPostSubPageCache$1(tabId, this, null), 2, null);
    }

    public final void W(String tabId) {
        Intrinsics.h(tabId, "tabId");
        kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new RoomPostViewModel$loadStaggeredPostPageCache$1(tabId, this, null), 2, null);
    }

    public final void u(String str) {
        kotlinx.coroutines.k.d(u0.a(this), null, null, new RoomPostViewModel$deletePost$1(str, this, null), 3, null);
    }

    public final b0 x() {
        return this.f48145i;
    }

    public final b0 y() {
        return this.f48140d;
    }

    public final b0 z() {
        return this.f48141e;
    }
}
