package com.transsion.home.viewmodel;

import android.app.Application;
import androidx.p009lifecycle.u0;
import com.transsion.moviedetailapi.bean.Pager;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.y0;

public final class UGCFilmListViewModel extends androidx.p009lifecycle.b {

    public static final a f44506j = new a(null);

    public static final int f44507k = 8;

    private final yk.b f44508b;

    private String f44509c;

    private int f44510d;

    private Pager f44511e;

    private boolean f44512f;

    private final androidx.p009lifecycle.b0 f44513g;

    private final androidx.p009lifecycle.b0 f44514h;

    private boolean f44515i;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UGCFilmListViewModel(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f44508b = (yk.b) kg.c.f63982e.a().h(yk.b.class);
        this.f44509c = "";
        this.f44510d = 1;
        this.f44513g = new androidx.p009lifecycle.b0();
        this.f44514h = new androidx.p009lifecycle.b0();
    }

    private final void i(int i10) {
        wf.a.C0922a.f(wf.a.f74274a, "FilmListViewModel", "getFilmList: start loading, page=" + i10 + ", filmType=" + this.f44509c, false, 4, null);
        kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new UGCFilmListViewModel$getFilmList$1(this, i10, null), 2, null);
    }

    public final androidx.p009lifecycle.b0 j() {
        return this.f44514h;
    }

    public final androidx.p009lifecycle.b0 k() {
        return this.f44513g;
    }

    public final boolean l() {
        Pager pager = this.f44511e;
        if (pager != null) {
            return Intrinsics.c(pager.getHasMore(), Boolean.TRUE);
        }
        return false;
    }

    public final void m(String filmType) {
        Intrinsics.h(filmType, "filmType");
        this.f44509c = filmType;
        wf.a.C0922a.f(wf.a.f74274a, "FilmListViewModel", "init: filmType=" + filmType, false, 4, null);
    }

    public final boolean n() {
        return this.f44512f;
    }

    public final void o() {
        Pager pager = this.f44511e;
        String nextPage = pager != null ? pager.getNextPage() : null;
        if (nextPage == null || nextPage.length() == 0) {
            wf.a.C0922a.z(wf.a.f74274a, "FilmListViewModel", "loadMore: nextPage is null or empty, cannot load more", false, 4, null);
            this.f44513g.n(null);
            return;
        }
        wf.a.C0922a.f(wf.a.f74274a, "FilmListViewModel", "loadMore: load nextPage=" + nextPage, false, 4, null);
        this.f44512f = false;
        Integer numV = StringsKt.v(nextPage);
        i(numV != null ? numV.intValue() : 1);
    }

    public final void p() {
        wf.a.C0922a.f(wf.a.f74274a, "FilmListViewModel", "refresh: reset page to 1 and load first page", false, 4, null);
        this.f44510d = 1;
        this.f44511e = null;
        this.f44512f = true;
        i(1);
    }
}
