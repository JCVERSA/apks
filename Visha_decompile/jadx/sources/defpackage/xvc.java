package defpackage;

import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonObject;
import com.transsion.hubsdk.api.lighting.TranSceneConfig;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import org.schabi.newpipe.extractor.Image;
import org.schabi.newpipe.extractor.Page;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.exceptions.ContentNotAvailableException;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandler;
import org.schabi.newpipe.extractor.localization.Localization;
import org.schabi.newpipe.extractor.playlist.PlaylistInfo;
import org.schabi.newpipe.extractor.playlist.a;
import org.schabi.newpipe.extractor.stream.Description;
import org.schabi.newpipe.extractor.utils.ImageSuffix;

public class xvc extends a {
    public static final List j;
    public JsonObject g;
    public JsonObject h;
    public String i;

    static {
        ImageSuffix imageSuffix = new ImageSuffix("default.jpg", 90, 120, Image.ResolutionLevel.LOW);
        Image.ResolutionLevel resolutionLevel = Image.ResolutionLevel.MEDIUM;
        j = hdb.a(new Object[]{imageSuffix, new ImageSuffix("mqdefault.jpg", 180, TranSceneConfig.SCENE_TYPE_GAME_MLBB_MONSTER_KILL, resolutionLevel), new ImageSuffix("hqdefault.jpg", TranSceneConfig.SCENE_TYPE_GAME_HOK_MONSTER_KILL, 480, resolutionLevel)});
    }

    public xvc(StreamingService streamingService, ListLinkHandler listLinkHandler) {
        super(streamingService, listLinkHandler);
    }

    public static JsonObject M(JsonObject jsonObject) {
        return jsonObject.getObject("playlistPanelVideoRenderer");
    }

    public static bzc N(ona onaVar, JsonObject jsonObject) {
        return new bzc(jsonObject, onaVar);
    }

    public static Image O(String str, ImageSuffix imageSuffix) {
        return new Image(str + imageSuffix.getSuffix(), imageSuffix.getHeight(), imageSuffix.getWidth(), imageSuffix.getResolutionLevel());
    }

    @Override
    public List B() throws ParsingException {
        try {
            return K(this.h.getString("playlistId"));
        } catch (Exception e) {
            try {
                return L(this.g.getObject("currentVideoEndpoint").getObject("watchEndpoint").getString("videoId"));
            } catch (Exception unused) {
                throw new ParsingException("Could not get playlist thumbnails", e);
            }
        }
    }

    @Override
    public List C() {
        return Collections.emptyList();
    }

    @Override
    public String D() {
        return "YouTube";
    }

    @Override
    public String E() {
        return "";
    }

    public final void I(final qy9 qy9Var, List list) {
        if (list == null) {
            return;
        }
        final ona onaVarO = o();
        Stream map = list.stream().filter(new w50(JsonObject.class)).map(new x50(JsonObject.class)).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return xvc.M((JsonObject) obj);
            }
        }).filter(new guc()).map(new Function(onaVarO) {
            public final ona a;

            @Override
            public final Object apply(Object obj) {
                return xvc.N(this.a, (JsonObject) obj);
            }
        });
        Objects.requireNonNull(qy9Var);
        map.forEachOrdered(new Consumer() {
            @Override
            public final void accept(Object obj) {
                qy9Var.d((bzc) obj);
            }
        });
    }

    public final Page J(JsonObject jsonObject, Map map) throws ExtractionException {
        JsonObject jsonObject2 = (JsonObject) jsonObject.getArray("contents").get(jsonObject.getArray("contents").size() - 1);
        if (jsonObject2 == null || jsonObject2.getObject("playlistPanelVideoRenderer") == null) {
            throw new ExtractionException("Could not extract next page url");
        }
        JsonObject object = jsonObject2.getObject("playlistPanelVideoRenderer").getObject("navigationEndpoint").getObject("watchEndpoint");
        String string = object.getString("playlistId");
        String string2 = object.getString("videoId");
        return new Page("https://www.youtube.com/youtubei/v1/next?prettyPrint=false", null, null, map, tc5.b(cxc.y0(h(), g()).h("videoId", string2).h("playlistId", string).f("playlistIndex", object.getInt("index")).h("params", object.getString("params")).b()).getBytes(StandardCharsets.UTF_8));
    }

    public final List K(String str) {
        return L(cxc.t(str));
    }

    public final List L(String str) {
        final String str2 = "https://i.ytimg.com/vi/" + str + "/";
        return (List) j.stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return xvc.O(str2, (ImageSuffix) obj);
            }
        }).collect(Collectors.toUnmodifiableList());
    }

    @Override
    public String k() throws ParsingException {
        String strK = cxc.K(this.h, "title");
        if (org.schabi.newpipe.extractor.utils.a.m(strK)) {
            throw new ParsingException("Could not get playlist name");
        }
        return strK;
    }

    @Override
    public void q(c23 c23Var) throws MalformedURLException, ExtractionException {
        Localization localizationH = h();
        URL urlX = org.schabi.newpipe.extractor.utils.a.x(p());
        String strI = i();
        String strH = org.schabi.newpipe.extractor.utils.a.h(urlX, "v");
        String strH2 = org.schabi.newpipe.extractor.utils.a.h(urlX, "index");
        aa5 aa5VarH = cxc.y0(localizationH, g()).h("playlistId", strI);
        if (strH != null) {
            aa5VarH.h("videoId", strH);
        }
        if (strH2 != null) {
            aa5VarH.f("playlistIndex", Integer.parseInt(strH2));
        }
        byte[] bytes = tc5.b(aa5VarH.b()).getBytes(StandardCharsets.UTF_8);
        fu8 fu8VarK = f().k("https://www.youtube.com/youtubei/v1/next?prettyPrint=false", cxc.T(), bytes, localizationH);
        JsonObject jsonObjectK = oc5.k(cxc.R(fu8VarK));
        this.g = jsonObjectK;
        JsonObject object = jsonObjectK.getObject("contents").getObject("twoColumnWatchNextResults").getObject("playlist").getObject("playlist");
        this.h = object;
        if (!org.schabi.newpipe.extractor.utils.a.o(object)) {
            this.i = cxc.q("VISITOR_INFO1_LIVE", fu8VarK);
            return;
        }
        ExtractionException extractionException = new ExtractionException("Could not get playlistData");
        if (!cxc.X()) {
            throw new ContentNotAvailableException("Consent is required in some countries to view Mix playlists", extractionException);
        }
        throw extractionException;
    }

    @Override
    public tl5.a r() {
        qy9 qy9Var = new qy9(n());
        I(qy9Var, this.h.getArray("contents"));
        HashMap map = new HashMap();
        map.put("VISITOR_INFO1_LIVE", this.i);
        return new tl5.a(qy9Var, J(this.h, map));
    }

    @Override
    public tl5.a t(Page page) {
        if (page == null || org.schabi.newpipe.extractor.utils.a.m(page.getUrl())) {
            throw new IllegalArgumentException("Page doesn't contain an URL");
        }
        if (!page.getCookies().containsKey("VISITOR_INFO1_LIVE")) {
            throw new IllegalArgumentException("Cookie 'VISITOR_INFO1_LIVE' is missing");
        }
        qy9 qy9Var = new qy9(n());
        JsonObject object = oc5.k(cxc.R(f().k(page.getUrl(), cxc.T(), page.getBody(), h()))).getObject("contents").getObject("twoColumnWatchNextResults").getObject("playlist").getObject("playlist");
        JsonArray array = object.getArray("contents");
        I(qy9Var, array.subList(object.getInt("currentIndex") + 1, array.size()));
        return new tl5.a(qy9Var, J(object, page.getCookies()));
    }

    @Override
    public Description v() {
        return Description.EMPTY_DESCRIPTION;
    }

    @Override
    public PlaylistInfo.PlaylistType w() {
        return cxc.r(this.h.getString("playlistId"));
    }

    @Override
    public long x() {
        return -2L;
    }
}
