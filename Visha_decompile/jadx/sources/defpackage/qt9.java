package defpackage;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonObject;
import com.grack.nanojson.JsonParserException;
import com.grack.nanojson.a;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Collections;
import java.util.List;
import java.util.function.IntUnaryOperator;
import org.schabi.newpipe.extractor.Page;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.linkhandler.SearchQueryHandler;
import org.schabi.newpipe.extractor.search.SearchExtractor;
import org.schabi.newpipe.extractor.utils.Parser;

public class qt9 extends SearchExtractor {
    public JsonObject g;

    public qt9(StreamingService streamingService, SearchQueryHandler searchQueryHandler) {
        super(streamingService, searchQueryHandler);
    }

    public static int E(int i) {
        return 10;
    }

    public static int F(int i) {
        return i + 10;
    }

    public final yz4 B(JsonArray jsonArray) {
        ls6 ls6Var = new ls6(n());
        for (Object obj : jsonArray) {
            if (obj instanceof JsonObject) {
                JsonObject jsonObject = (JsonObject) obj;
                String string = jsonObject.getString("kind", "");
                string.hashCode();
                switch (string) {
                    case "user":
                        ls6Var.d(new vs9(jsonObject));
                        break;
                    case "track":
                        ls6Var.d(new vt9(jsonObject));
                        break;
                    case "playlist":
                        ls6Var.d(new mt9(jsonObject));
                        break;
                }
            }
        }
        return ls6Var;
    }

    public final Page C(String str, IntUnaryOperator intUnaryOperator) throws ParsingException {
        int iD = D(str);
        return new Page(str.replace("&offset=" + iD, "&offset=" + intUnaryOperator.applyAsInt(iD)));
    }

    public final int D(String str) throws ParsingException {
        try {
            return Integer.parseInt((String) Parser.f(new URL(str).getQuery()).get(TypedValues.CycleType.S_WAVE_OFFSET));
        } catch (MalformedURLException e) {
            throw new ParsingException("Could not get offset from page URL", e);
        }
    }

    @Override
    public void q(c23 c23Var) throws SearchExtractor.NothingFoundException, ParsingException {
        try {
            JsonObject jsonObject = (JsonObject) a.d().a(f().e(p(), h()).c());
            this.g = jsonObject;
            if (jsonObject.getArray("collection").isEmpty()) {
                throw new SearchExtractor.NothingFoundException("Nothing found");
            }
        } catch (JsonParserException e) {
            throw new ParsingException("Could not parse json response", e);
        }
    }

    @Override
    public tl5.a r() {
        return this.g.getInt("total_results") > 10 ? new tl5.a(B(this.g.getArray("collection")), C(p(), new IntUnaryOperator() {
            @Override
            public final int applyAsInt(int i) {
                return qt9.E(i);
            }
        })) : new tl5.a(B(this.g.getArray("collection")), null);
    }

    @Override
    public tl5.a t(Page page) throws ParsingException {
        if (page == null || org.schabi.newpipe.extractor.utils.a.m(page.getUrl())) {
            throw new IllegalArgumentException("Page doesn't contain an URL");
        }
        try {
            JsonObject jsonObject = (JsonObject) a.d().a(f().e(page.getUrl(), h()).c());
            JsonArray array = jsonObject.getArray("collection");
            return D(page.getUrl()) + 10 < jsonObject.getInt("total_results") ? new tl5.a(B(array), C(page.getUrl(), new IntUnaryOperator() {
                @Override
                public final int applyAsInt(int i) {
                    return qt9.F(i);
                }
            })) : new tl5.a(B(array), null);
        } catch (JsonParserException e) {
            throw new ParsingException("Could not parse json response", e);
        }
    }

    @Override
    public List v() {
        return Collections.emptyList();
    }

    @Override
    public String x() {
        return "";
    }

    @Override
    public boolean y() {
        return false;
    }
}
