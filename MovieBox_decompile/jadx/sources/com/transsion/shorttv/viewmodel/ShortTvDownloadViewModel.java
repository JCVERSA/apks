package com.transsion.shorttv.viewmodel;

import android.app.Application;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.t0;
import androidx.p009lifecycle.u0;
import com.blankj.utilcode.util.Utils;
import com.transsion.shorttv.bean.ShortTVFavInfo;
import com.transsion.shorttv.bean.Subject;
import com.transsion.shorttv.db.ShortTvAdUnlockDao;
import com.transsion.shorttv.db.ShortTvDatabase;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.y0;

public final class ShortTvDownloadViewModel extends t0 {

    public static final a f51654k = new a(null);

    private final Lazy f51655a = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return ShortTvDownloadViewModel.u();
        }
    });

    private final Lazy f51656b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return ShortTvDownloadViewModel.f(this.f51703a);
        }
    });

    private final b0 f51657c = new b0();

    private final b0 f51658d = new b0();

    private final b0 f51659e = new b0();

    private final b0 f51660f = new b0();

    private final b0 f51661g = new b0();

    private final b0 f51662h = new b0();

    private final b0 f51663i = new b0();

    private final b0 f51664j = new b0();

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public static final ShortTvAdUnlockDao f(ShortTvDownloadViewModel shortTvDownloadViewModel) {
        Object objM453constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            ShortTvDatabase.Companion companion2 = ShortTvDatabase.INSTANCE;
            Application applicationA = Utils.a();
            Intrinsics.g(applicationA, "getApp(...)");
            objM453constructorimpl = Result.m453constructorimpl(companion2.b(applicationA).j0());
        } catch (Throwable th2) {
            Result.Companion companion3 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
        if (thM456exceptionOrNullimpl != null) {
            wf.a.C0922a.l(wf.a.f74274a, "ShortTvDownload", "adUnlockDao init failed: " + thM456exceptionOrNullimpl, false, 4, null);
        }
        if (Result.m459isFailureimpl(objM453constructorimpl)) {
            objM453constructorimpl = null;
        }
        return (ShortTvAdUnlockDao) objM453constructorimpl;
    }

    public final ShortTvAdUnlockDao h() {
        return (ShortTvAdUnlockDao) this.f51656b.getValue();
    }

    public final sr.a k() {
        return (sr.a) this.f51655a.getValue();
    }

    public static void o(ShortTvDownloadViewModel shortTvDownloadViewModel, String str, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        shortTvDownloadViewModel.n(str, z10);
    }

    public static final sr.a u() {
        return (sr.a) kg.c.f63982e.a().h(sr.a.class);
    }

    public final void g(Subject subject) {
        ShortTVFavInfo shortTVFavInfo;
        if (subject == null || (shortTVFavInfo = subject.getShortTVFavInfo()) == null) {
            return;
        }
        kotlinx.coroutines.k.d(u0.a(this), null, null, new ShortTvDownloadViewModel$favorite$1(subject, shortTVFavInfo.getHasFavorite(), this, shortTVFavInfo, null), 3, null);
    }

    public final void i(String subjectId, int i10, int i11) {
        Intrinsics.h(subjectId, "subjectId");
        kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new ShortTvDownloadViewModel$getEpisodeList$1(this, subjectId, i10, i11, null), 2, null);
    }

    public final b0 j() {
        return this.f51664j;
    }

    public final b0 l() {
        return this.f51662h;
    }

    public final b0 m() {
        return this.f51661g;
    }

    public final void n(String subjectId, boolean z10) {
        Intrinsics.h(subjectId, "subjectId");
        kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new ShortTvDownloadViewModel$getShortTvInfo$1(subjectId, this, z10, null), 2, null);
    }

    public final b0 p() {
        return this.f51663i;
    }

    public final b0 q() {
        return this.f51657c;
    }

    public final b0 r() {
        return this.f51658d;
    }

    public final void s(int i10) {
        Subject subject = (Subject) this.f51663i.f();
        if (subject != null) {
            subject.setPaid(i10);
        }
        this.f51663i.n(subject);
    }

    public final void t(String subjectId) {
        Set<Integer> adUnlockedEps;
        Intrinsics.h(subjectId, "subjectId");
        wf.a.C0922a c0922a = wf.a.f74274a;
        Subject subject = (Subject) this.f51663i.f();
        wf.a.C0922a.r(c0922a, "ShortTvDownload", new String[]{"will saveAdUnlockedEps, eps: " + (subject != null ? subject.getAdUnlockedEps() : null)}, false, 4, null);
        Subject subject2 = (Subject) this.f51663i.f();
        if (subject2 == null || (adUnlockedEps = subject2.getAdUnlockedEps()) == null || adUnlockedEps.isEmpty()) {
            return;
        }
        kotlinx.coroutines.k.d(u0.a(this), null, null, new ShortTvDownloadViewModel$saveAdUnlockedEps$1(subjectId, adUnlockedEps, this, null), 3, null);
    }

    public final void v(nr.d item) {
        Intrinsics.h(item, "item");
        Map linkedHashMap = (Map) this.f51657c.f();
        if (linkedHashMap == null) {
            linkedHashMap = new LinkedHashMap();
        }
        if (item.d()) {
            linkedHashMap.remove(Integer.valueOf(item.b()));
        } else {
            linkedHashMap.put(Integer.valueOf(item.b()), item);
        }
        this.f51657c.q(linkedHashMap);
    }

    public final void w(String str, List list) {
        List list2 = list;
        if (list2 == null || list2.isEmpty()) {
            return;
        }
        kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new ShortTvDownloadViewModel$startDownloadResource$1(list, this, str, null), 2, null);
    }
}
