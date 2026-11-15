package defpackage;

import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonObject;
import com.transsion.livecaption.constant.ICode;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import java.util.function.Supplier;
import org.jsoup.nodes.Document;
import org.schabi.newpipe.extractor.Page;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.exceptions.ReCaptchaException;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandler;

public class b60 extends ea1 {
    public Document g;

    public b60(StreamingService streamingService, ListLinkHandler listLinkHandler) {
        super(streamingService, listLinkHandler);
    }

    public static String C(JsonObject jsonObject) {
        return jsonObject.getString("token");
    }

    public static String D(String str, String str2) {
        return str2;
    }

    public static ParsingException E() {
        return new ParsingException("Could not get token");
    }

    public final String A(JsonArray jsonArray) {
        return (String) jsonArray.stream().filter(new w50(JsonObject.class)).map(new x50(JsonObject.class)).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return b60.C((JsonObject) obj);
            }
        }).reduce(new BinaryOperator() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return b60.D((String) obj, (String) obj2);
            }
        }).orElseThrow(new Supplier() {
            @Override
            public final Object get() {
                return b60.E();
            }
        });
    }

    public final String B() {
        return Long.toString(oc5.k(this.g.i1("meta[name=bc-page-properties]").h(ICode.CALL.CALL_KEY_CONTENT)).getLong("item_id"));
    }

    @Override
    public void q(c23 c23Var) {
        this.g = vc5.a(c23Var.b(s().getUrl()).c());
    }

    @Override
    public tl5.a r() throws ParsingException {
        ga1 ga1Var = new ga1(n());
        JsonObject jsonObjectK = oc5.k(this.g.D0("collectors-data").h("data-blob"));
        JsonArray array = jsonObjectK.getArray("reviews");
        Iterator<Object> it = array.iterator();
        while (it.hasNext()) {
            ga1Var.d(new c60((JsonObject) it.next(), p()));
        }
        return !jsonObjectK.getBoolean("more_reviews_available") ? new tl5.a(ga1Var, null) : new tl5.a(ga1Var, new Page((List<String>) hdb.a(new Object[]{B(), A(array)})));
    }

    @Override
    public tl5.a t(Page page) throws ParsingException {
        ga1 ga1Var = new ga1(n());
        List<String> ids = page.getIds();
        String str = ids.get(0);
        JsonObject jsonObjectZ = z(str, ids.get(1));
        JsonArray array = jsonObjectZ.getArray("results");
        Iterator<Object> it = array.iterator();
        while (it.hasNext()) {
            ga1Var.d(new c60((JsonObject) it.next(), p()));
        }
        return !jsonObjectZ.getBoolean("more_available") ? new tl5.a(ga1Var, null) : new tl5.a(ga1Var, new Page((List<String>) hdb.a(new Object[]{str, A(array)})));
    }

    @Override
    public boolean v() {
        return j60.m(p());
    }

    public final JsonObject z(String str, String str2) throws ParsingException {
        try {
            return oc5.k(f().j("https://bandcamp.com/api/tralbumcollectors/2/reviews", Collections.emptyMap(), ((zb5) ((zb5) ((zb5) ((zb5) ((zb5) ((zb5) ((zb5) ((zb5) tc5.a().n()).E("tralbum_type", "t")).E("tralbum_id", str)).E("token", str2)).B("count", 7)).d("exclude_fan_ids")).j()).j()).H().getBytes(StandardCharsets.UTF_8)).c());
        } catch (IOException | ReCaptchaException e) {
            throw new ParsingException("Could not fetch reviews", e);
        }
    }
}
