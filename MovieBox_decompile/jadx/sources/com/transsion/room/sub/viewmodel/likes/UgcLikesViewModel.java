package com.transsion.room.sub.viewmodel.likes;

import android.app.Application;
import androidx.p009lifecycle.b;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.u0;
import kg.c;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.y0;

public final class UgcLikesViewModel extends b {

    public static final a f49758i = new a(null);

    private static int f49759j = 8;

    private final b0 f49760b;

    private final b0 f49761c;

    private final op.a f49762d;

    private String f49763e;

    private String f49764f;

    private String f49765g;

    private boolean f49766h;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UgcLikesViewModel(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f49760b = new b0();
        this.f49761c = new b0();
        this.f49762d = (op.a) c.f63982e.a().h(op.a.class);
    }

    public final b0 e() {
        return this.f49760b;
    }

    public final b0 f() {
        return this.f49761c;
    }

    public final void g(String page, String userId) {
        Intrinsics.h(page, "page");
        Intrinsics.h(userId, "userId");
        this.f49764f = page;
        this.f49765g = userId;
        wf.a.C0922a.f(wf.a.f74274a, "UgcLikesViewModel", "Likes getUgcVideoLikesBean", false, 4, null);
        k.d(u0.a(this), y0.b(), null, new UgcLikesViewModel$getUgcVideoLikesBean$1(page, userId, this, null), 2, null);
    }

    public final boolean h() {
        return this.f49766h;
    }

    public final void i(String str) {
        this.f49766h = false;
        if (str == null || str.length() == 0) {
            wf.a.f74274a.x("UgcLikesViewModel", "loadMore: nextPage is null or empty, cannot load more", true);
            this.f49761c.n(null);
            return;
        }
        wf.a.f74274a.c("UgcLikesViewModel", "loadMore: load nextPage=" + str, true);
        g(str.toString(), String.valueOf(this.f49765g));
    }

    public final void j(String ugcVideoId, boolean z10) {
        Intrinsics.h(ugcVideoId, "ugcVideoId");
        this.f49763e = ugcVideoId;
        k.d(u0.a(this), y0.b(), null, new UgcLikesViewModel$postLikeUgcVideo$1(ugcVideoId, z10, this, null), 2, null);
    }

    public final void k() {
        wf.a.f74274a.c("UgcLikesViewModel", "refresh: reset page to 1 and load first page", true);
        this.f49764f = "1";
        this.f49766h = true;
        g(String.valueOf("1"), String.valueOf(this.f49765g));
    }
}
