package jq;

import com.transsion.search.bean.GoogleSuggestResponse;
import com.transsion.search_pugc.bean.SearchSuggestItem;
import com.transsion.search_pugc.bean.UGCSearchSuggestData;
import cq.f;
import io.reactivex.rxjava3.core.j;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okhttp3.ResponseBody;
import yx.h;

public final class c {

    public static final a f63245b = new a(null);

    private final Lazy f63246a = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return c.h();
        }
    });

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    static final class b implements h {

        final String f63247a;

        b(String str) {
            this.f63247a = str;
        }

        @Override
        public final UGCSearchSuggestData apply(ResponseBody body) {
            Intrinsics.h(body, "body");
            GoogleSuggestResponse googleSuggestResponseE = cq.b.f58642a.e(body.string());
            String keyword = googleSuggestResponseE.getKeyword();
            String str = this.f63247a;
            if (StringsKt.q0(keyword)) {
                keyword = str;
            }
            List<String> suggestions = googleSuggestResponseE.getSuggestions();
            ArrayList arrayList = new ArrayList(CollectionsKt.v(suggestions, 10));
            Iterator<T> it = suggestions.iterator();
            while (it.hasNext()) {
                arrayList.add(new SearchSuggestItem("", (String) it.next(), null));
            }
            return new UGCSearchSuggestData(arrayList, keyword, "");
        }
    }

    private final String c() {
        return gg.a.f61067a.a();
    }

    private final jq.a d() {
        return (jq.a) this.f63246a.getValue();
    }

    public static final jq.a h() {
        return (jq.a) kg.c.f63982e.a().h(jq.a.class);
    }

    public final j b(String keyword) {
        Intrinsics.h(keyword, "keyword");
        j jVarU = f.f58643a.f(keyword).u(new b(keyword));
        Intrinsics.g(jVarU, "map(...)");
        return jVarU;
    }

    public final j e(String pageFrom) {
        Intrinsics.h(pageFrom, "pageFrom");
        return d().d(c(), pageFrom);
    }

    public final j f(String pageFrom) {
        Intrinsics.h(pageFrom, "pageFrom");
        return d().c(c(), pageFrom);
    }

    public final j g(String keyword, int i10, String pageFrom) {
        Intrinsics.h(keyword, "keyword");
        Intrinsics.h(pageFrom, "pageFrom");
        return d().a(c(), keyword, i10, pageFrom);
    }
}
