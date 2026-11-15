package com.transsion.search_pugc.fragment.result;

import android.app.Application;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.u0;
import com.transsion.search_pugc.bean.SecondTab;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class SearchResultViewModel extends androidx.p009lifecycle.b {

    public static final a f50393i = new a(null);

    private final Lazy f50394b;

    private final b0 f50395c;

    private final b0 f50396d;

    private final b0 f50397e;

    private String f50398f;

    private final b0 f50399g;

    private int f50400h;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SearchResultViewModel(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f50394b = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return SearchResultViewModel.o();
            }
        });
        this.f50395c = new b0();
        this.f50396d = new b0();
        this.f50397e = new b0();
        this.f50399g = new b0(Boolean.FALSE);
        this.f50400h = 1;
    }

    public final jq.a j() {
        return (jq.a) this.f50394b.getValue();
    }

    public static void n(SearchResultViewModel searchResultViewModel, String str, String str2, String str3, boolean z10, SecondTab secondTab, int i10, Object obj) {
        String str4 = (i10 & 2) != 0 ? null : str2;
        if ((i10 & 8) != 0) {
            z10 = false;
        }
        searchResultViewModel.m(str, str4, str3, z10, (i10 & 16) != 0 ? null : secondTab);
    }

    public static final jq.a o() {
        return (jq.a) kg.c.f63982e.a().h(jq.a.class);
    }

    public final String g() {
        return this.f50398f;
    }

    public final b0 h() {
        return this.f50397e;
    }

    public final b0 i() {
        return this.f50399g;
    }

    public final b0 k() {
        return this.f50396d;
    }

    public final b0 l() {
        return this.f50395c;
    }

    public final void m(String keyword, String str, String pageFrom, boolean z10, SecondTab secondTab) {
        Intrinsics.h(keyword, "keyword");
        Intrinsics.h(pageFrom, "pageFrom");
        kotlinx.coroutines.k.d(u0.a(this), null, null, new SearchResultViewModel$requestUGCSearchResult$1(this, keyword, pageFrom, str, secondTab, z10, null), 3, null);
    }

    public final void p(String str) {
        this.f50398f = str;
    }

    public final void q(int i10) {
        this.f50400h = i10;
    }
}
