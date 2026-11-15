package com.transsion.search.viewmodel;

import android.app.Application;
import android.text.TextUtils;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.u0;
import com.mbridge.msdk.MBridgeConstans;
import com.tn.lib.net.bean.BaseDto;
import com.tn.lib.widget.toast.core.h;
import com.transsion.mb.config.manager.ConfigBean;
import com.transsion.search.activity.SearchManagerActivity;
import com.transsion.search.bean.HotSubjectEntity;
import com.transsion.search.bean.JoinGroupEntity;
import com.transsion.search.bean.SearchSuggestEntity;
import com.transsion.search.bean.SuggestEntity;
import com.transsion.search.fragment.BaseSearchMainFragment;
import com.transsion.search.net.RequestJoinGroupEntity;
import com.transsion.search.net.RequestSearchEntity;
import com.transsion.search.widget.BoundaryLinkedHashMap;
import cq.j;
import java.util.HashMap;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.k;

public final class SearchViewModel extends androidx.p009lifecycle.b {

    private final b0 f50222b;

    private final b0 f50223c;

    private final b0 f50224d;

    private final b0 f50225e;

    private final b0 f50226f;

    private final b0 f50227g;

    private final Lazy f50228h;

    private io.reactivex.rxjava3.disposables.c f50229i;

    private final BoundaryLinkedHashMap f50230j;

    private final BoundaryLinkedHashMap f50231k;

    private final b0 f50232l;

    private final Lazy f50233m;

    public static final class a extends dg.a {
        a() {
        }

        @Override
        public void a(String str, String str2) {
            SearchViewModel.this.l().n(null);
        }

        @Override
        public void c(HotSubjectEntity hotSubjectEntity) {
            SearchViewModel.this.l().n(hotSubjectEntity);
        }
    }

    public static final class b extends dg.a {
        b() {
        }

        @Override
        public void a(String str, String str2) {
            if (str2 != null) {
                h.f40484a.l(str2);
            }
            SearchViewModel.this.f50225e.n("");
        }

        @Override
        public void d(BaseDto baseDto) {
            Intrinsics.h(baseDto, "baseDto");
        }

        @Override
        public void c(JoinGroupEntity joinGroupEntity) {
            if (TextUtils.isEmpty(joinGroupEntity != null ? joinGroupEntity.getM() : null)) {
                SearchViewModel.this.f50225e.n("succeed");
            } else {
                SearchViewModel.this.f50225e.n(joinGroupEntity != null ? joinGroupEntity.getM() : null);
            }
        }
    }

    static final class c implements yx.f {

        final String f50237b;

        c(String str) {
            this.f50237b = str;
        }

        @Override
        public final void accept(SearchSuggestEntity data) {
            Intrinsics.h(data, "data");
            SearchViewModel.this.v(this.f50237b, data);
        }
    }

    static final class d implements yx.f {

        final String f50239b;

        d(String str) {
            this.f50239b = str;
        }

        @Override
        public final void accept(Throwable it) {
            Intrinsics.h(it, "it");
            SearchViewModel.this.t().n(this.f50239b);
        }
    }

    public static final class e extends dg.a {

        final String f50241e;

        e(String str) {
            this.f50241e = str;
        }

        @Override
        public void a(String str, String str2) {
            SearchViewModel.this.t().n(this.f50241e);
        }

        @Override
        public void c(SearchSuggestEntity searchSuggestEntity) {
            SearchViewModel.this.v(this.f50241e, searchSuggestEntity);
        }
    }

    public static final class f extends dg.a {
        f() {
        }

        @Override
        public void a(String str, String str2) {
            if (str2 != null) {
                h.f40484a.l(str2);
            }
            SearchViewModel.this.f50222b.n(null);
        }

        @Override
        public void d(BaseDto baseDto) {
            Intrinsics.h(baseDto, "baseDto");
            SearchViewModel.this.f50222b.n(baseDto.getData());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SearchViewModel(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f50222b = new b0();
        this.f50223c = new b0();
        this.f50224d = new b0();
        this.f50225e = new b0();
        this.f50226f = new b0();
        this.f50227g = new b0();
        this.f50228h = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return SearchViewModel.B();
            }
        });
        this.f50230j = new BoundaryLinkedHashMap();
        this.f50231k = new BoundaryLinkedHashMap();
        this.f50232l = new b0();
        this.f50233m = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return Boolean.valueOf(SearchViewModel.x());
            }
        });
    }

    private final void A(String str) {
        n().e(str).E(ey.a.c()).subscribe(new e(str));
    }

    public static final j B() {
        return new j();
    }

    private final boolean F() {
        return w();
    }

    public final j n() {
        return (j) this.f50228h.getValue();
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0012  */
    public final void v(String str, SearchSuggestEntity searchSuggestEntity) {
        if (searchSuggestEntity == null) {
            return;
        }
        String keyword = searchSuggestEntity.getKeyword();
        if (keyword == null) {
            keyword = str;
        } else {
            if (StringsKt.q0(keyword)) {
                keyword = str;
            }
            if (keyword == null) {
                keyword = str;
            }
        }
        this.f50230j.put(str, searchSuggestEntity);
        if (!Intrinsics.c(keyword, str)) {
            this.f50230j.put(keyword, searchSuggestEntity);
        }
        this.f50232l.n(str);
        List<SuggestEntity> items = searchSuggestEntity.getItems();
        if (items == null || !items.isEmpty() || keyword.length() < 2 || this.f50231k.containsKey(keyword)) {
            return;
        }
        this.f50231k.put(keyword, null);
        SearchManagerActivity.INSTANCE.a("no associative word results when the user enters query longer than 2 characters");
        HashMap map = new HashMap();
        map.put(MBridgeConstans.KEY_WORD, keyword);
        String ops = searchSuggestEntity.getOps();
        if (ops == null) {
            ops = "";
        }
        map.put("ops", ops);
        map.put("sug_source", s());
        map.put("search_id", BaseSearchMainFragment.INSTANCE.a());
        qi.h.f69682a.z("search_suggest", map);
    }

    public static final boolean x() {
        String value;
        ConfigBean configBeanC = cm.f.f17019c.a().c("sa_search_suggest_use_google", true);
        if (configBeanC == null || (value = configBeanC.getValue()) == null) {
            return false;
        }
        return Intrinsics.c(StringsKt.m1(value), Boolean.TRUE);
    }

    private final void z(String str) {
        n().b(str).E(ey.a.c()).B(new c(str), new d(str));
    }

    public final void C(int i10, int i11, String keyword) {
        Intrinsics.h(keyword, "keyword");
        n().h(new RequestSearchEntity(i10, i11, keyword)).E(ey.a.c()).subscribe(new f());
    }

    public final void D(int i10, int i11, String keyword) {
        Intrinsics.h(keyword, "keyword");
        k.d(u0.a(this), null, null, new SearchViewModel$searchWork$1(this, new RequestSearchEntity(i10, i11, keyword), null), 3, null);
    }

    public final void E(int i10, int i11, String keyword, int i12) {
        Intrinsics.h(keyword, "keyword");
        k.d(u0.a(this), null, null, new SearchViewModel$searchWorkV2$1(this, new RequestSearchEntity(i10, i11, keyword, i12), null), 3, null);
    }

    public final void k() {
        n().d().E(ey.a.c()).subscribe(new a());
    }

    public final b0 l() {
        return this.f50227g;
    }

    public final b0 m() {
        return this.f50225e;
    }

    public final b0 o() {
        return this.f50222b;
    }

    @Override
    protected void onCleared() {
        io.reactivex.rxjava3.disposables.c cVar;
        super.onCleared();
        io.reactivex.rxjava3.disposables.c cVar2 = this.f50229i;
        if (cVar2 == null || cVar2.isDisposed() || (cVar = this.f50229i) == null) {
            return;
        }
        cVar.dispose();
    }

    public final void p(String keyword) {
        Intrinsics.h(keyword, "keyword");
        if (F()) {
            z(keyword);
        } else {
            A(keyword);
        }
    }

    public final b0 q() {
        return this.f50223c;
    }

    public final b0 r() {
        return this.f50224d;
    }

    public final String s() {
        return w() ? "gp_sug" : "mb_sug";
    }

    public final b0 t() {
        return this.f50232l;
    }

    public final BoundaryLinkedHashMap u() {
        return this.f50230j;
    }

    public final boolean w() {
        return ((Boolean) this.f50233m.getValue()).booleanValue();
    }

    public final void y(String groupId) {
        Intrinsics.h(groupId, "groupId");
        n().g(new RequestJoinGroupEntity(groupId)).E(ey.a.c()).subscribe(new b());
    }
}
