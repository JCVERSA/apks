package com.transsion.moviedetail.viewmodel;

import android.app.Application;
import android.text.SpannableStringBuilder;
import androidx.p009lifecycle.LiveData;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.u0;
import com.cloud.tmc.integration.event.EventConstants;
import com.google.gson.JsonObject;
import com.transsion.moviedetail.R$string;
import com.transsion.moviedetail.preload.MovieDetailDownloadListLoader;
import com.transsion.moviedetail.preload.MovieDetailResourcesSeasonLoader;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.y0;

public final class MovieDetailViewModel extends androidx.p009lifecycle.b {

    public static final a f45703r = new a(null);

    private final Lazy f45704b;

    private final Lazy f45705c;

    private final Lazy f45706d;

    private final Lazy f45707e;

    private final Lazy f45708f;

    private final Lazy f45709g;

    private final Lazy f45710h;

    private final Lazy f45711i;

    private final b0 f45712j;

    private final Lazy f45713k;

    private final b0 f45714l;

    private com.transsion.moviedetail.preload.b f45715m;

    private MovieDetailDownloadListLoader f45716n;

    private MovieDetailResourcesSeasonLoader f45717o;

    private final Lazy f45718p;

    private boolean f45719q;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MovieDetailViewModel(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f45704b = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return MovieDetailViewModel.q();
            }
        });
        this.f45705c = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return MovieDetailViewModel.Z();
            }
        });
        this.f45706d = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return MovieDetailViewModel.r();
            }
        });
        this.f45707e = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return MovieDetailViewModel.X();
            }
        });
        this.f45708f = LazyKt.a(LazyThreadSafetyMode.NONE, new Function0() {
            @Override
            public final Object invoke() {
                return MovieDetailViewModel.b0();
            }
        });
        this.f45709g = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return MovieDetailViewModel.a0();
            }
        });
        this.f45710h = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return MovieDetailViewModel.U();
            }
        });
        this.f45711i = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return MovieDetailViewModel.e0();
            }
        });
        this.f45712j = new b0();
        this.f45713k = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return MovieDetailViewModel.Y();
            }
        });
        this.f45714l = new b0();
        this.f45718p = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return MovieDetailViewModel.c0();
            }
        });
    }

    private final Locale C(String str) {
        Locale locale = null;
        if (str != null) {
            try {
                if (str.length() != 0) {
                    locale = Intrinsics.c(str, "in_id") ? new Locale("id") : new Locale(str);
                }
            } catch (Exception unused) {
            }
        }
        return locale;
    }

    public static void E(MovieDetailViewModel movieDetailViewModel, String str, Integer num, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            num = null;
        }
        if ((i10 & 4) != 0) {
            z10 = false;
        }
        movieDetailViewModel.D(str, num, z10);
    }

    private final b0 G() {
        return (b0) this.f45710h.getValue();
    }

    private final void M(String str) {
        MovieDetailResourcesSeasonLoader movieDetailResourcesSeasonLoader = this.f45717o;
        if (movieDetailResourcesSeasonLoader != null) {
            if (str == null) {
                str = "";
            }
            movieDetailResourcesSeasonLoader.p(str);
        }
        MovieDetailResourcesSeasonLoader movieDetailResourcesSeasonLoader2 = this.f45717o;
        if (movieDetailResourcesSeasonLoader2 != null) {
            movieDetailResourcesSeasonLoader2.f(L());
        }
    }

    public final om.a N() {
        return (om.a) this.f45708f.getValue();
    }

    public final cx.a O() {
        return (cx.a) this.f45709g.getValue();
    }

    public final b0 R() {
        return (b0) this.f45711i.getValue();
    }

    public static void T(MovieDetailViewModel movieDetailViewModel, int i10, String str, Integer num, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            num = null;
        }
        movieDetailViewModel.S(i10, str, num);
    }

    public static final b0 U() {
        return new b0();
    }

    public static void W(MovieDetailViewModel movieDetailViewModel, String str, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        movieDetailViewModel.V(str, z10);
    }

    public static final b0 X() {
        return new b0();
    }

    public static final b0 Y() {
        return new b0();
    }

    public static final b0 Z() {
        return new b0();
    }

    public static final cx.a a0() {
        return (cx.a) kg.c.f63982e.a().h(cx.a.class);
    }

    public static final om.a b0() {
        return (om.a) kg.c.f63982e.a().h(om.a.class);
    }

    public static final b0 c0() {
        return new b0();
    }

    public static final b0 e0() {
        return new b0();
    }

    public static final b0 q() {
        return new b0();
    }

    public static final b0 r() {
        return new b0();
    }

    public static void u(MovieDetailViewModel movieDetailViewModel, String str, Integer num, int i10, boolean z10, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            i10 = 1;
        }
        movieDetailViewModel.t(str, num, i10, z10);
    }

    public final LiveData A() {
        return this.f45712j;
    }

    public final boolean B() {
        return this.f45719q;
    }

    public final void D(String subjectId, Integer num, boolean z10) {
        Intrinsics.h(subjectId, "subjectId");
        com.transsion.moviedetail.preload.b bVar = this.f45715m;
        if (bVar != null) {
            bVar.q(subjectId);
        }
        com.transsion.moviedetail.preload.b bVar2 = this.f45715m;
        if (bVar2 != null) {
            bVar2.p(num);
        }
        com.transsion.moviedetail.preload.b bVar3 = this.f45715m;
        if (bVar3 != null) {
            bVar3.o(z10);
        }
        com.transsion.moviedetail.preload.b bVar4 = this.f45715m;
        if (bVar4 != null) {
            bVar4.f(G());
        }
    }

    public final LiveData F() {
        return G();
    }

    public final b0 H() {
        return this.f45714l;
    }

    public final b0 I() {
        return (b0) this.f45707e.getValue();
    }

    public final void J() {
        this.f45719q = true;
        kotlinx.coroutines.k.d(u0.a(this), null, null, new MovieDetailViewModel$getRoomPostEntrance$1(this, null), 3, null);
    }

    public final b0 K() {
        return (b0) this.f45713k.getValue();
    }

    public final b0 L() {
        return (b0) this.f45705c.getValue();
    }

    public final b0 P() {
        return (b0) this.f45718p.getValue();
    }

    public final LiveData Q() {
        return R();
    }

    public final void S(int i10, String subjectId, Integer num) {
        am.b bVar;
        am.b bVar2;
        Object next;
        Object next2;
        Intrinsics.h(subjectId, "subjectId");
        List listA = am.e.f407a.a(i10);
        Object obj = null;
        if (listA != null) {
            Iterator it = listA.iterator();
            do {
                if (!it.hasNext()) {
                    next2 = null;
                    break;
                }
                next2 = it.next();
            } while (!(((am.b) next2) instanceof com.transsion.moviedetail.preload.b));
            bVar = (am.b) next2;
        } else {
            bVar = null;
        }
        com.transsion.moviedetail.preload.b bVar3 = (com.transsion.moviedetail.preload.b) bVar;
        if (bVar3 == null) {
            bVar3 = new com.transsion.moviedetail.preload.b(subjectId, num, false, 4, null);
        }
        this.f45715m = bVar3;
        if (listA != null) {
            Iterator it2 = listA.iterator();
            do {
                if (!it2.hasNext()) {
                    next = null;
                    break;
                }
                next = it2.next();
            } while (!(((am.b) next) instanceof MovieDetailDownloadListLoader));
            bVar2 = (am.b) next;
        } else {
            bVar2 = null;
        }
        MovieDetailDownloadListLoader movieDetailDownloadListLoader = (MovieDetailDownloadListLoader) bVar2;
        if (movieDetailDownloadListLoader == null) {
            movieDetailDownloadListLoader = new MovieDetailDownloadListLoader(subjectId);
        }
        this.f45716n = movieDetailDownloadListLoader;
        if (listA != null) {
            for (Object obj2 : listA) {
                if (((am.b) obj2) instanceof MovieDetailResourcesSeasonLoader) {
                    obj = obj2;
                    break;
                }
            }
            obj = (am.b) obj;
        }
        MovieDetailResourcesSeasonLoader movieDetailResourcesSeasonLoader = (MovieDetailResourcesSeasonLoader) obj;
        if (movieDetailResourcesSeasonLoader == null) {
            movieDetailResourcesSeasonLoader = new MovieDetailResourcesSeasonLoader(subjectId);
        }
        this.f45717o = movieDetailResourcesSeasonLoader;
        M(subjectId);
        z(subjectId);
    }

    public final void V(String str, boolean z10) {
        kotlinx.coroutines.k.d(u0.a(this), null, null, new MovieDetailViewModel$postRequestResource$1(str, z10, this, null), 3, null);
    }

    public final void d0(String subjectId, int i10) {
        Intrinsics.h(subjectId, "subjectId");
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("subjectId", subjectId);
        jsonObject.addProperty(EventConstants.KEY_ACTION, Integer.valueOf(i10));
        kotlinx.coroutines.k.d(u0.a(this), null, null, new MovieDetailViewModel$wantToSee$1(jsonObject, this, null), 3, null);
    }

    public final void s(boolean z10, String str, Integer num, int i10, boolean z11) {
        kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new MovieDetailViewModel$fetchLocalRec$1(z10, str, num, i10, z11, this, null), 2, null);
    }

    public final void t(String str, Integer num, int i10, boolean z10) {
        if (str == null || str.length() == 0) {
            return;
        }
        kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new MovieDetailViewModel$fetchRec$1(str, num, i10, z10, this, null), 2, null);
    }

    public final CharSequence v(String str) {
        List listS0;
        List listU0 = (str == null || (listS0 = StringsKt.S0(str, new String[]{","}, false, 0, 6, null)) == null) ? null : CollectionsKt.U0(listS0);
        List list = listU0;
        if (list == null || list.isEmpty()) {
            return null;
        }
        com.transsion.baselib.locale.d.b bVar = com.transsion.baselib.locale.d.f42155f;
        Locale localeL = bVar.e().l();
        Locale localeK = bVar.e().k();
        int i10 = -1;
        int i11 = 0;
        if (Intrinsics.c(localeL, localeK)) {
            Iterator it = listU0.iterator();
            int i12 = 0;
            while (it.hasNext()) {
                Locale localeC = C((String) it.next());
                if (Intrinsics.c(localeC != null ? localeC.getLanguage() : null, localeL != null ? localeL.getLanguage() : null)) {
                    i10 = i12;
                    break;
                }
                i12++;
            }
            if (i10 > 0) {
                listU0.add(0, listU0.remove(i10));
            }
        } else {
            Iterator it2 = listU0.iterator();
            int i13 = 0;
            while (true) {
                if (!it2.hasNext()) {
                    i13 = -1;
                    break;
                }
                Locale localeC2 = C((String) it2.next());
                if (Intrinsics.c(localeC2 != null ? localeC2.getLanguage() : null, localeK != null ? localeK.getLanguage() : null)) {
                    break;
                }
                i13++;
            }
            if (i13 > 0) {
                listU0.add(0, listU0.remove(i13));
            }
            Iterator it3 = listU0.iterator();
            int i14 = 0;
            while (it3.hasNext()) {
                Locale localeC3 = C((String) it3.next());
                if (Intrinsics.c(localeC3 != null ? localeC3.getLanguage() : null, localeL != null ? localeL.getLanguage() : null)) {
                    i10 = i14;
                    break;
                }
                i14++;
            }
            if (i10 > 0) {
                listU0.add(0, listU0.remove(i10));
            }
        }
        Application applicationB = b();
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        spannableStringBuilder.append((CharSequence) applicationB.getString(R$string.movie_detail_subtitles));
        spannableStringBuilder.append((CharSequence) " ");
        for (Object obj : listU0) {
            int i15 = i11 + 1;
            if (i11 < 0) {
                CollectionsKt.u();
            }
            spannableStringBuilder.append((CharSequence) obj);
            if (i11 != listU0.size() - 1) {
                spannableStringBuilder.append((CharSequence) ", ");
            }
            i11 = i15;
        }
        return spannableStringBuilder;
    }

    public final b0 w() {
        return (b0) this.f45706d.getValue();
    }

    public final void x(String str, int i10, int i11, int i12, int i13) {
        kotlinx.coroutines.k.d(u0.a(this), null, null, new MovieDetailViewModel$getDownloadList$1(this, str, i13, i10, i11, i12, null), 3, null);
    }

    public final b0 y() {
        return (b0) this.f45704b.getValue();
    }

    public final void z(String str) {
        MovieDetailDownloadListLoader movieDetailDownloadListLoader = this.f45716n;
        if (movieDetailDownloadListLoader != null) {
            if (str == null) {
                str = "";
            }
            movieDetailDownloadListLoader.p(str);
        }
        MovieDetailDownloadListLoader movieDetailDownloadListLoader2 = this.f45716n;
        if (movieDetailDownloadListLoader2 != null) {
            movieDetailDownloadListLoader2.f(y());
        }
    }
}
