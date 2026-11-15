package defpackage;

import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonObject;
import com.grack.nanojson.JsonParserException;
import com.lzy.okgo.model.Progress;
import com.transsion.livecaption.constant.ICode;
import java.nio.charset.StandardCharsets;
import java.util.Collections;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import org.schabi.newpipe.extractor.Page;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.linkhandler.SearchQueryHandler;
import org.schabi.newpipe.extractor.search.SearchExtractor;
import org.schabi.newpipe.extractor.utils.a;

public class gwc extends SearchExtractor {
    public JsonObject g;

    public gwc(StreamingService streamingService, SearchQueryHandler searchQueryHandler) {
        super(streamingService, searchQueryHandler);
    }

    private Page H(JsonArray jsonArray) {
        if (a.n(jsonArray)) {
            return null;
        }
        String string = jsonArray.getObject(0).getObject("nextContinuationData").getString("continuation");
        return new Page("https://music.youtube.com/youtubei/v1/search?ctoken=" + string + "&continuation=" + string + "&prettyPrint=false");
    }

    public static JsonObject I(JsonObject jsonObject) {
        return jsonObject.getObject("musicResponsiveListItemRenderer", null);
    }

    public static void J(String str, ls6 ls6Var, JsonObject jsonObject) {
        if (jsonObject.getString("musicItemRendererDisplayPolicy", "").equals("MUSIC_ITEM_RENDERER_DISPLAY_POLICY_GREY_OUT")) {
        }
        JsonArray array = jsonObject.getArray("flexColumns").getObject(1).getObject("musicResponsiveListItemFlexColumnRenderer").getObject("text").getArray("runs");
        str.hashCode();
        switch (str) {
            case "music_playlists":
            case "music_albums":
                ls6Var.d(new yvc(jsonObject, array, str));
                break;
            case "music_artists":
                ls6Var.d(new zvc(jsonObject));
                break;
            case "music_songs":
            case "music_videos":
                ls6Var.d(new hwc(jsonObject, array, str));
                break;
        }
    }

    public static JsonObject K(JsonObject jsonObject) {
        return jsonObject.getObject("itemSectionRenderer");
    }

    public static boolean L(JsonObject jsonObject) {
        return !jsonObject.isEmpty();
    }

    public static JsonObject M(JsonObject jsonObject) {
        return jsonObject.getArray("contents").getObject(0);
    }

    public static boolean N(JsonObject jsonObject) {
        return jsonObject.has("showingResultsForRenderer");
    }

    public final void F(final ls6 ls6Var, JsonArray jsonArray) {
        final String str = u().getContentFilters().get(0);
        jsonArray.stream().filter(new w50(JsonObject.class)).map(new x50(JsonObject.class)).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return gwc.I((JsonObject) obj);
            }
        }).filter(new guc()).forEachOrdered(new Consumer() {
            @Override
            public final void accept(Object obj) {
                gwc.J(str, ls6Var, (JsonObject) obj);
            }
        });
    }

    public final List G() {
        return (List) this.g.getObject("contents").getObject("tabbedSearchResultsRenderer").getArray("tabs").getObject(0).getObject("tabRenderer").getObject(ICode.CALL.CALL_KEY_CONTENT).getObject("sectionListRenderer").getArray("contents").stream().filter(new w50(JsonObject.class)).map(new x50(JsonObject.class)).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return gwc.K((JsonObject) obj);
            }
        }).filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return gwc.L((JsonObject) obj);
            }
        }).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return gwc.M((JsonObject) obj);
            }
        }).collect(Collectors.toList());
    }

    @Override
    public void q(c23 c23Var) throws ParsingException {
        String str;
        String str2 = u().getContentFilters().get(0);
        str2.hashCode();
        switch (str2) {
            case "music_playlists":
                str = "Eg-KAQwIABAAGAAgACgBMABqChAEEAUQAxAKEAk%3D";
                break;
            case "music_artists":
                str = "Eg-KAQwIABAAGAAgASgAMABqChAEEAUQAxAKEAk%3D";
                break;
            case "music_albums":
                str = "Eg-KAQwIABAAGAEgACgAMABqChAEEAUQAxAKEAk%3D";
                break;
            case "music_songs":
                str = "Eg-KAQwIARAAGAAgACgAMABqChAEEAUQAxAKEAk%3D";
                break;
            case "music_videos":
                str = "Eg-KAQwIABABGAAgACgAMABqChAEEAUQAxAKEAk%3D";
                break;
            default:
                str = null;
                break;
        }
        try {
            this.g = (JsonObject) com.grack.nanojson.a.d().a(cxc.R(f().j("https://music.youtube.com/youtubei/v1/search?prettyPrint=false", cxc.V(), ((zb5) ((zb5) ((zb5) ((zb5) ((zb5) ((zb5) ((zb5) ((zb5) ((zb5) ((zb5) ((zb5) ((zb5) ((zb5) ((zb5) ((zb5) ((zb5) ((zb5) ((zb5) ((zb5) ((zb5) ((zb5) ((zb5) tc5.a().n()).o("context")).o("client")).E("clientName", "WEB_REMIX")).E("clientVersion", cxc.U())).E("hl", "en-GB")).E("gl", g().getCountryCode())).E("platform", "DESKTOP")).B("utcOffsetMinutes", 0)).j()).o(Progress.REQUEST)).d("internalExperimentFlags")).j()).F("useSsl", true)).j()).o("user")).F("lockedSafetyMode", false)).j()).j()).E("query", w())).E("params", str)).j()).H().getBytes(StandardCharsets.UTF_8))));
        } catch (JsonParserException e) {
            throw new ParsingException("Could not parse JSON", e);
        }
    }

    @Override
    public tl5.a r() {
        ls6 ls6Var = new ls6(n());
        Page pageH = null;
        for (JsonObject jsonObject : oc5.a(oc5.a(this.g, "contents.tabbedSearchResultsRenderer.tabs").getObject(0), "tabRenderer.content.sectionListRenderer.contents")) {
            if (jsonObject.has("musicShelfRenderer")) {
                JsonObject object = jsonObject.getObject("musicShelfRenderer");
                F(ls6Var, object.getArray("contents"));
                pageH = H(object.getArray("continuations"));
            }
        }
        return new tl5.a(ls6Var, pageH);
    }

    @Override
    public tl5.a t(Page page) throws ParsingException {
        if (page == null || a.m(page.getUrl())) {
            throw new IllegalArgumentException("Page doesn't contain an URL");
        }
        ls6 ls6Var = new ls6(n());
        try {
            JsonObject object = ((JsonObject) com.grack.nanojson.a.d().a(cxc.R(f().j(page.getUrl(), cxc.V(), ((zb5) ((zb5) ((zb5) ((zb5) ((zb5) ((zb5) ((zb5) ((zb5) ((zb5) ((zb5) ((zb5) ((zb5) ((zb5) ((zb5) ((zb5) ((zb5) ((zb5) ((zb5) ((zb5) ((zb5) tc5.a().n()).o("context")).o("client")).E("clientName", "WEB_REMIX")).E("clientVersion", cxc.U())).E("hl", "en-GB")).E("gl", g().getCountryCode())).E("platform", "DESKTOP")).B("utcOffsetMinutes", 0)).j()).o(Progress.REQUEST)).d("internalExperimentFlags")).j()).F("useSsl", true)).j()).o("user")).F("lockedSafetyMode", false)).j()).j()).j()).H().getBytes(StandardCharsets.UTF_8))))).getObject("continuationContents").getObject("musicShelfContinuation");
            F(ls6Var, object.getArray("contents"));
            return new tl5.a(ls6Var, H(object.getArray("continuations")));
        } catch (JsonParserException e) {
            throw new ParsingException("Could not parse JSON", e);
        }
    }

    @Override
    public List v() {
        return Collections.emptyList();
    }

    @Override
    public String x() {
        for (JsonObject jsonObject : G()) {
            JsonObject object = jsonObject.getObject("didYouMeanRenderer");
            JsonObject object2 = jsonObject.getObject("showingResultsForRenderer");
            if (!object.isEmpty()) {
                return cxc.L(object.getObject("correctedQuery"));
            }
            if (!object2.isEmpty()) {
                return oc5.h(object2, "correctedQueryEndpoint.searchEndpoint.query");
            }
        }
        return "";
    }

    @Override
    public boolean y() {
        return G().stream().anyMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return gwc.N((JsonObject) obj);
            }
        });
    }
}
