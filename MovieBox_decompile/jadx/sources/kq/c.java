package kq;

import android.app.Application;
import androidx.p009lifecycle.b0;
import com.transsion.mb.config.manager.ConfigBean;
import com.transsion.search_pugc.bean.UGCEveryoneSearchData;
import com.transsion.search_pugc.bean.UGCRankSearchData;
import com.transsion.search_pugc.bean.UGCSearchSuggestData;
import com.transsion.search_pugc.widget.BoundaryLinkedHashMap;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import yx.f;

public final class c extends androidx.p009lifecycle.b {

    private final BoundaryLinkedHashMap f65402b;

    private final b0 f65403c;

    private final b0 f65404d;

    private final b0 f65405e;

    private final Lazy f65406f;

    private io.reactivex.rxjava3.disposables.c f65407g;

    private final Lazy f65408h;

    public static final class a extends dg.a {
        a() {
        }

        @Override
        public void a(String str, String str2) {
            c.this.k().n(null);
        }

        @Override
        public void c(UGCEveryoneSearchData uGCEveryoneSearchData) {
            c.this.k().n(uGCEveryoneSearchData);
        }
    }

    public static final class b extends dg.a {
        b() {
        }

        @Override
        public void a(String str, String str2) {
            c.this.l().n(null);
        }

        @Override
        public void c(UGCRankSearchData uGCRankSearchData) {
            c.this.l().n(uGCRankSearchData);
        }
    }

    static final class C0802c implements f {

        final String f65412b;

        C0802c(String str) {
            this.f65412b = str;
        }

        @Override
        public final void accept(UGCSearchSuggestData data) {
            Intrinsics.h(data, "data");
            c.this.n(this.f65412b, data);
        }
    }

    static final class d implements f {
        d() {
        }

        @Override
        public final void accept(Throwable it) {
            Intrinsics.h(it, "it");
            c.this.m().n(null);
        }
    }

    public static final class e extends dg.a {

        final String f65415e;

        e(String str) {
            this.f65415e = str;
        }

        @Override
        public void a(String str, String str2) {
            c.this.m().n(null);
        }

        @Override
        public void c(UGCSearchSuggestData uGCSearchSuggestData) {
            c.this.n(this.f65415e, uGCSearchSuggestData);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f65402b = new BoundaryLinkedHashMap();
        this.f65403c = new b0();
        this.f65404d = new b0();
        this.f65405e = new b0();
        this.f65406f = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return c.s();
            }
        });
        this.f65408h = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return Boolean.valueOf(c.p());
            }
        });
    }

    private final jq.c f() {
        return (jq.c) this.f65406f.getValue();
    }

    public final void n(String str, UGCSearchSuggestData uGCSearchSuggestData) {
        if (uGCSearchSuggestData == null) {
            return;
        }
        String keyword = uGCSearchSuggestData.getKeyword();
        if (StringsKt.q0(keyword)) {
            keyword = str;
        }
        this.f65402b.put(str, uGCSearchSuggestData);
        if (!Intrinsics.c(keyword, str)) {
            this.f65402b.put(keyword, uGCSearchSuggestData);
        }
        this.f65405e.n(uGCSearchSuggestData);
    }

    public static final boolean p() {
        String value;
        ConfigBean configBeanC = cm.f.f17019c.a().c("sa_search_suggest_use_google_for_showbox", true);
        if (configBeanC == null || (value = configBeanC.getValue()) == null) {
            return false;
        }
        return Intrinsics.c(StringsKt.m1(value), Boolean.TRUE);
    }

    private final void q(String str) {
        f().b(str).E(ey.a.c()).B(new C0802c(str), new d());
    }

    private final void r(String str, int i10, String str2) {
        f().g(str, i10, str2).E(ey.a.c()).subscribe(new e(str));
    }

    public static final jq.c s() {
        return new jq.c();
    }

    private final boolean t() {
        return o();
    }

    public final String g() {
        return o() ? "gp_sug" : "mb_sug";
    }

    public final void h(String pageFrom) {
        Intrinsics.h(pageFrom, "pageFrom");
        f().e(pageFrom).E(ey.a.c()).subscribe(new a());
    }

    public final void i(String pageFrom) {
        Intrinsics.h(pageFrom, "pageFrom");
        f().f(pageFrom).E(ey.a.c()).subscribe(new b());
    }

    public final void j(String keyword, int i10, String pageFrom) {
        Intrinsics.h(keyword, "keyword");
        Intrinsics.h(pageFrom, "pageFrom");
        if (t()) {
            q(keyword);
        } else {
            r(keyword, i10, pageFrom);
        }
    }

    public final b0 k() {
        return this.f65403c;
    }

    public final b0 l() {
        return this.f65404d;
    }

    public final b0 m() {
        return this.f65405e;
    }

    public final boolean o() {
        return ((Boolean) this.f65408h.getValue()).booleanValue();
    }

    @Override
    protected void onCleared() {
        io.reactivex.rxjava3.disposables.c cVar;
        super.onCleared();
        io.reactivex.rxjava3.disposables.c cVar2 = this.f65407g;
        if (cVar2 == null || cVar2.isDisposed() || (cVar = this.f65407g) == null) {
            return;
        }
        cVar.dispose();
    }
}
