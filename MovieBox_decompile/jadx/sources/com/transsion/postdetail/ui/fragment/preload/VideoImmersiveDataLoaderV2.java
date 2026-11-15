package com.transsion.postdetail.ui.fragment.preload;

import androidx.p009lifecycle.b0;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

public final class VideoImmersiveDataLoaderV2 extends am.b {

    private String f47714f;

    private String f47715g;

    private String f47716h;

    private int f47717i;

    private final Lazy f47718j;

    public VideoImmersiveDataLoaderV2(String str, String str2, String str3, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i11 & 2) != 0 ? "0" : str2, (i11 & 4) != 0 ? "1" : str3, (i11 & 8) != 0 ? 5 : i10);
    }

    public final ao.b q() {
        return (ao.b) this.f47718j.getValue();
    }

    public static final ao.b r() {
        return (ao.b) kg.c.f63982e.a().h(ao.b.class);
    }

    @Override
    public void h(b0 b0Var) {
        j(k.d(o0.a(y0.b()), null, null, new VideoImmersiveDataLoaderV2$loadDataFromService$1(this, null), 3, null));
    }

    public final String m() {
        return this.f47716h;
    }

    public final String n() {
        return this.f47714f;
    }

    public final int o() {
        return this.f47717i;
    }

    public final String p() {
        return this.f47715g;
    }

    public final void s(String str) {
        Intrinsics.h(str, "<set-?>");
        this.f47716h = str;
    }

    public final void t(int i10) {
        this.f47717i = i10;
    }

    public final void u(String str) {
        Intrinsics.h(str, "<set-?>");
        this.f47715g = str;
    }

    public VideoImmersiveDataLoaderV2(String str, String postId, String page, int i10) {
        Intrinsics.h(postId, "postId");
        Intrinsics.h(page, "page");
        this.f47714f = str;
        this.f47715g = postId;
        this.f47716h = page;
        this.f47717i = i10;
        this.f47718j = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return VideoImmersiveDataLoaderV2.r();
            }
        });
    }
}
