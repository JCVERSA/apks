package com.transsion.postdetail.shorttv;

import android.app.Application;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.u0;
import com.transsion.baselib.db.video.ShortTvFavoriteState;
import com.transsion.moviedetailapi.bean.ShortTVFavInfo;
import com.transsion.moviedetailapi.bean.Subject;
import java.util.HashMap;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class ShortTvPlayListViewModel extends androidx.p009lifecycle.b {

    public static final a f47143n = new a(null);

    private final com.transsion.postdetail.shorttv.a f47144b;

    private final b0 f47145c;

    private final b0 f47146d;

    private final b0 f47147e;

    private final b0 f47148f;

    private final b0 f47149g;

    private final b0 f47150h;

    private final b0 f47151i;

    private final b0 f47152j;

    private final b0 f47153k;

    private final b0 f47154l;

    private final HashMap f47155m;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShortTvPlayListViewModel(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f47144b = (com.transsion.postdetail.shorttv.a) kg.c.f63982e.a().h(com.transsion.postdetail.shorttv.a.class);
        this.f47145c = new b0();
        this.f47146d = new b0();
        this.f47147e = new b0();
        this.f47148f = new b0();
        this.f47149g = new b0();
        this.f47150h = new b0();
        this.f47151i = new b0();
        this.f47152j = new b0();
        this.f47153k = new b0();
        this.f47154l = new b0();
        this.f47155m = new HashMap();
    }

    public final void k(Subject subject) {
        ShortTVFavInfo shortTVFavInfo;
        if (subject == null || (shortTVFavInfo = subject.getShortTVFavInfo()) == null) {
            return;
        }
        ShortTvFavoriteState shortTvFavoriteState = new ShortTvFavoriteState();
        shortTvFavoriteState.setFavoriteNum(shortTVFavInfo.getFavoriteNum());
        shortTvFavoriteState.setHasFavorite(shortTVFavInfo.getHasFavorite());
        shortTvFavoriteState.setFavoriteTime(shortTVFavInfo.getFavoriteTime());
        String subjectId = subject.getSubjectId();
        if (subjectId == null) {
            subjectId = "";
        }
        shortTvFavoriteState.setSubjectId(subjectId);
        kotlinx.coroutines.k.d(u0.a(this), null, null, new ShortTvPlayListViewModel$updateFavorite$1$1(this, shortTvFavoriteState, null), 3, null);
    }

    public final void d(Subject subject) {
        ShortTVFavInfo shortTVFavInfo;
        if (subject == null || (shortTVFavInfo = subject.getShortTVFavInfo()) == null) {
            return;
        }
        kotlinx.coroutines.k.d(u0.a(this), null, null, new ShortTvPlayListViewModel$favorite$1(subject, shortTVFavInfo.getHasFavorite(), this, shortTVFavInfo, null), 3, null);
    }

    public final b0 e() {
        return this.f47148f;
    }

    public final b0 f() {
        return this.f47149g;
    }

    public final com.transsion.postdetail.shorttv.a g() {
        return this.f47144b;
    }

    public final b0 h() {
        return this.f47145c;
    }

    public final void i(String type) {
        Intrinsics.h(type, "type");
        this.f47151i.q(type);
    }

    public final void j() {
        this.f47151i.q("ad_cancel");
    }
}
