package cq;

import com.google.gson.JsonObject;
import com.transsion.search.bean.GoogleSuggestResponse;
import com.transsion.search.bean.SearchSuggestEntity;
import com.transsion.search.bean.SuggestEntity;
import com.transsion.search.net.RequestJoinGroupEntity;
import com.transsion.search.net.RequestSearchEntity;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;

public final class j {

    public static final a f58648b = new a(null);

    private final Lazy f58649a = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return j.j();
        }
    });

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    static final class b implements yx.h {

        final String f58650a;

        b(String str) {
            this.f58650a = str;
        }

        @Override
        public final SearchSuggestEntity apply(ResponseBody body) {
            Intrinsics.h(body, "body");
            GoogleSuggestResponse googleSuggestResponseE = cq.b.f58642a.e(body.string());
            String keyword = googleSuggestResponseE.getKeyword();
            String str = this.f58650a;
            if (StringsKt.q0(keyword)) {
                keyword = str;
            }
            List<String> suggestions = googleSuggestResponseE.getSuggestions();
            ArrayList arrayList = new ArrayList(CollectionsKt.v(suggestions, 10));
            Iterator<T> it = suggestions.iterator();
            while (it.hasNext()) {
                arrayList.add(new SuggestEntity(0, (String) it.next(), null, null, null));
            }
            return new SearchSuggestEntity(arrayList, keyword, "");
        }
    }

    private final String c() {
        return gg.a.f61067a.a();
    }

    private final g f() {
        return (g) this.f58649a.getValue();
    }

    public static final g j() {
        return (g) kg.c.f63982e.a().h(g.class);
    }

    public final io.reactivex.rxjava3.core.j b(String keyword) {
        Intrinsics.h(keyword, "keyword");
        io.reactivex.rxjava3.core.j jVarU = f.f58643a.f(keyword).u(new b(keyword));
        Intrinsics.g(jVarU, "map(...)");
        return jVarU;
    }

    public final io.reactivex.rxjava3.core.j d() {
        return g.a.a(f(), 1, 0, 2, null);
    }

    public final io.reactivex.rxjava3.core.j e(String keyword) {
        Intrinsics.h(keyword, "keyword");
        return g.a.b(f(), keyword, 0, 0, 6, null);
    }

    public final io.reactivex.rxjava3.core.j g(RequestJoinGroupEntity entity) {
        Intrinsics.h(entity, "entity");
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("groupId", entity.getGroupId());
        RequestBody.Companion companion = RequestBody.INSTANCE;
        String string = jsonObject.toString();
        Intrinsics.g(string, "toString(...)");
        return f().b(c(), companion.create(string, MediaType.INSTANCE.parse("application/json")));
    }

    public final io.reactivex.rxjava3.core.j h(RequestSearchEntity entity) {
        Intrinsics.h(entity, "entity");
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("page", Integer.valueOf(entity.getPage()));
        jsonObject.addProperty("keyword", entity.getKeyword());
        RequestBody.Companion companion = RequestBody.INSTANCE;
        String string = jsonObject.toString();
        Intrinsics.g(string, "toString(...)");
        companion.create(string, MediaType.INSTANCE.parse("application/json"));
        return f().a(c(), entity.getPage(), entity.getKeyword());
    }

    public final Object i(RequestSearchEntity requestSearchEntity, Continuation continuation) {
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("page", Boxing.d(requestSearchEntity.getPage()));
        jsonObject.addProperty("perPage", Boxing.d(requestSearchEntity.getPerPage()));
        jsonObject.addProperty("keyword", requestSearchEntity.getKeyword());
        jsonObject.addProperty("subjectType", Boxing.d(requestSearchEntity.getSubjectType()));
        jsonObject.addProperty("resultMode", Boxing.d(1));
        RequestBody.Companion companion = RequestBody.INSTANCE;
        String string = jsonObject.toString();
        Intrinsics.g(string, "toString(...)");
        return f().e(c(), companion.create(string, MediaType.INSTANCE.parse("application/json")), continuation);
    }
}
