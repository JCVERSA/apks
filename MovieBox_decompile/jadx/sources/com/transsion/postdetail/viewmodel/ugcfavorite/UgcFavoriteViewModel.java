package com.transsion.postdetail.viewmodel.ugcfavorite;

import android.app.Application;
import androidx.p009lifecycle.b;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.u0;
import kg.c;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.y0;

public final class UgcFavoriteViewModel extends b {

    public static final a f48171h = new a(null);

    private static int f48172i = 10;

    private final b0 f48173b;

    private final b0 f48174c;

    private final np.a f48175d;

    private String f48176e;

    private String f48177f;

    private boolean f48178g;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UgcFavoriteViewModel(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f48173b = new b0();
        this.f48174c = new b0();
        this.f48175d = (np.a) c.f63982e.a().h(np.a.class);
    }

    public final b0 e() {
        return this.f48173b;
    }

    public final void f(String page, String userId) {
        Intrinsics.h(page, "page");
        Intrinsics.h(userId, "userId");
        this.f48176e = page;
        this.f48177f = userId;
        k.d(u0.a(this), y0.b(), null, new UgcFavoriteViewModel$getUgcVideoFavoriteList$1(this, page, userId, null), 2, null);
    }

    public final boolean g() {
        return this.f48178g;
    }

    public final void h(String str) {
        this.f48178g = false;
        if (str == null || str.length() == 0) {
            wf.a.f74274a.x("UgcFavoriteViewModel", "loadMore: nextPage is null or empty, cannot load more", true);
            this.f48173b.n(null);
            return;
        }
        wf.a.f74274a.c("UgcFavoriteViewModel", "loadMore: load nextPage=" + str, true);
        f(str.toString(), String.valueOf(this.f48177f));
    }

    public final void i() {
        wf.a.f74274a.c("UgcFavoriteViewModel", "refresh: reset page to 1 and load first page", true);
        this.f48176e = "1";
        this.f48178g = true;
        f(String.valueOf("1"), String.valueOf(this.f48177f));
    }
}
