package defpackage;

import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonObject;
import com.transsion.livecaption.constant.ICode;
import java.nio.charset.StandardCharsets;
import java.util.Collections;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;
import org.schabi.newpipe.extractor.Page;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.exceptions.ContentNotAvailableException;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandler;
import org.schabi.newpipe.extractor.localization.Localization;
import org.schabi.newpipe.extractor.playlist.PlaylistInfo;
import org.schabi.newpipe.extractor.playlist.a;
import org.schabi.newpipe.extractor.stream.Description;

public class oxc extends a {
    public JsonObject g;
    public JsonObject h;
    public JsonObject i;
    public JsonObject j;
    public boolean k;

    public oxc(StreamingService streamingService, ListLinkHandler listLinkHandler) {
        super(streamingService, listLinkHandler);
    }

    public static void U(qy9 qy9Var, ona onaVar, JsonObject jsonObject) {
        if (jsonObject.has("playlistVideoRenderer")) {
            qy9Var.d(new bzc(jsonObject.getObject("playlistVideoRenderer"), onaVar));
            return;
        }
        if (jsonObject.has("richItemRenderer")) {
            JsonObject object = jsonObject.getObject("richItemRenderer");
            if (object.has(ICode.CALL.CALL_KEY_CONTENT)) {
                JsonObject object2 = object.getObject(ICode.CALL.CALL_KEY_CONTENT);
                if (object2.has("reelItemRenderer")) {
                    qy9Var.d(new rxc(object2.getObject("reelItemRenderer")));
                }
            }
        }
    }

    public static JsonObject V(JsonObject jsonObject) {
        return jsonObject.getObject("itemSectionRenderer").getArray("contents").getObject(0);
    }

    public static boolean W(JsonObject jsonObject) {
        return jsonObject.has("playlistVideoListRenderer") || jsonObject.has("richGridRenderer");
    }

    public static boolean X(JsonObject jsonObject) {
        return jsonObject.has("playlistSidebarPrimaryInfoRenderer");
    }

    public static JsonObject Y(JsonObject jsonObject) {
        return jsonObject.getObject("playlistSidebarPrimaryInfoRenderer");
    }

    public static ParsingException Z() {
        return new ParsingException("Could not get playlist info");
    }

    public static boolean a0(JsonObject jsonObject) {
        return jsonObject.getObject("playlistSidebarSecondaryInfoRenderer").getObject("videoOwner").has("videoOwnerRenderer");
    }

    public static JsonObject b0(JsonObject jsonObject) {
        return jsonObject.getObject("playlistSidebarSecondaryInfoRenderer").getObject("videoOwner").getObject("videoOwnerRenderer");
    }

    public static ParsingException c0() {
        return new ParsingException("Could not get uploader info");
    }

    @Override
    public List B() throws ParsingException {
        JsonArray array = this.k ? R().getObject("playlistHeaderBanner").getObject("heroPlaylistThumbnailRenderer").getObject("thumbnail").getArray("thumbnails") : this.h.getObject("thumbnailRenderer").getObject("playlistVideoThumbnailRenderer").getObject("thumbnail").getArray("thumbnails");
        if (!org.schabi.newpipe.extractor.utils.a.n(array)) {
            return cxc.F(array);
        }
        JsonArray array2 = this.g.getObject("microformat").getObject("microformatDataRenderer").getObject("thumbnail").getArray("thumbnails");
        if (org.schabi.newpipe.extractor.utils.a.n(array2)) {
            throw new ParsingException("Could not get playlist thumbnails");
        }
        return cxc.F(array2);
    }

    @Override
    public List C() throws ParsingException {
        if (this.k) {
            return Collections.emptyList();
        }
        try {
            return cxc.F(T().getObject("thumbnail").getArray("thumbnails"));
        } catch (Exception e) {
            throw new ParsingException("Could not get playlist uploader avatars", e);
        }
    }

    @Override
    public String D() throws ParsingException {
        try {
            return cxc.L(this.k ? R().getObject("ownerText") : T().getObject("title"));
        } catch (Exception e) {
            throw new ParsingException("Could not get playlist uploader name", e);
        }
    }

    @Override
    public String E() throws ParsingException {
        try {
            return cxc.P(this.k ? R().getObject("ownerText").getArray("runs").getObject(0).getObject("navigationEndpoint") : T().getObject("navigationEndpoint"));
        } catch (Exception e) {
            throw new ParsingException("Could not get playlist uploader url", e);
        }
    }

    public final boolean O() {
        return this.g.has("header") && !this.g.has("sidebar");
    }

    public final void P(final qy9 qy9Var, JsonArray jsonArray) {
        final ona onaVarO = o();
        jsonArray.stream().filter(new w50(JsonObject.class)).map(new x50(JsonObject.class)).forEach(new Consumer(onaVarO) {
            public final ona c;

            @Override
            public final void accept(Object obj) {
                oxc.U(this.b, this.c, (JsonObject) obj);
            }
        });
    }

    public final Page Q(JsonArray jsonArray) {
        if (org.schabi.newpipe.extractor.utils.a.n(jsonArray)) {
            return null;
        }
        JsonObject object = jsonArray.getObject(jsonArray.size() - 1);
        if (!object.has("continuationItemRenderer")) {
            return null;
        }
        return new Page("https://www.youtube.com/youtubei/v1/browse?prettyPrint=false", tc5.b(cxc.y0(h(), g()).h("continuation", object.getObject("continuationItemRenderer").getObject("continuationEndpoint").getObject("continuationCommand").getString("token")).b()).getBytes(StandardCharsets.UTF_8));
    }

    public final JsonObject R() {
        if (this.j == null) {
            this.j = this.g.getObject("header").getObject("playlistHeaderRenderer");
        }
        return this.j;
    }

    public final JsonObject S() {
        if (this.h == null) {
            this.h = (JsonObject) this.g.getObject("sidebar").getObject("playlistSidebarRenderer").getArray("items").stream().filter(new w50(JsonObject.class)).map(new x50(JsonObject.class)).filter(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return oxc.X((JsonObject) obj);
                }
            }).map(new Function() {
                @Override
                public final Object apply(Object obj) {
                    return oxc.Y((JsonObject) obj);
                }
            }).findFirst().orElseThrow(new Supplier() {
                @Override
                public final Object get() {
                    return oxc.Z();
                }
            });
        }
        return this.h;
    }

    public final JsonObject T() {
        if (this.i == null) {
            this.i = (JsonObject) this.g.getObject("sidebar").getObject("playlistSidebarRenderer").getArray("items").stream().filter(new w50(JsonObject.class)).map(new x50(JsonObject.class)).filter(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return oxc.a0((JsonObject) obj);
                }
            }).map(new Function() {
                @Override
                public final Object apply(Object obj) {
                    return oxc.b0((JsonObject) obj);
                }
            }).findFirst().orElseThrow(new Supplier() {
                @Override
                public final Object get() {
                    return oxc.c0();
                }
            });
        }
        return this.i;
    }

    @Override
    public String k() {
        String strL = cxc.L(S().getObject("title"));
        return !org.schabi.newpipe.extractor.utils.a.m(strL) ? strL : this.g.getObject("microformat").getObject("microformatDataRenderer").getString("title");
    }

    @Override
    public void q(c23 c23Var) throws ContentNotAvailableException {
        Localization localizationH = h();
        JsonObject jsonObjectI = cxc.I("browse", tc5.b(cxc.y0(localizationH, g()).h("browseId", "VL" + i()).h("params", "wgYCCAA%3D").b()).getBytes(StandardCharsets.UTF_8), localizationH);
        this.g = jsonObjectI;
        cxc.l(jsonObjectI);
        this.k = O();
    }

    @Override
    public tl5.a r() {
        JsonObject object;
        qy9 qy9Var = new qy9(n());
        Page pageQ = null;
        JsonObject jsonObject = (JsonObject) this.g.getObject("contents").getObject("twoColumnBrowseResultsRenderer").getArray("tabs").getObject(0).getObject("tabRenderer").getObject(ICode.CALL.CALL_KEY_CONTENT).getObject("sectionListRenderer").getArray("contents").stream().filter(new w50(JsonObject.class)).map(new x50(JsonObject.class)).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return oxc.V((JsonObject) obj);
            }
        }).filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return oxc.W((JsonObject) obj);
            }
        }).findFirst().orElse(null);
        if (jsonObject != null) {
            if (jsonObject.has("playlistVideoListRenderer")) {
                object = jsonObject.getObject("playlistVideoListRenderer");
            } else {
                if (!jsonObject.has("richGridRenderer")) {
                    return new tl5.a(qy9Var, null);
                }
                object = jsonObject.getObject("richGridRenderer");
            }
            JsonArray array = object.getArray("contents");
            P(qy9Var, array);
            pageQ = Q(array);
        }
        return new tl5.a(qy9Var, pageQ);
    }

    @Override
    public tl5.a t(Page page) {
        if (page == null || org.schabi.newpipe.extractor.utils.a.m(page.getUrl())) {
            throw new IllegalArgumentException("Page doesn't contain an URL");
        }
        qy9 qy9Var = new qy9(n());
        JsonArray array = cxc.I("browse", page.getBody(), h()).getArray("onResponseReceivedActions").getObject(0).getObject("appendContinuationItemsAction").getArray("continuationItems");
        P(qy9Var, array);
        return new tl5.a(qy9Var, Q(array));
    }

    @Override
    public Description v() {
        return new Description(cxc.M(S().getObject("description"), true), 1);
    }

    @Override
    public PlaylistInfo.PlaylistType w() {
        return cxc.s(p());
    }

    @Override
    public long x() {
        String strL;
        String strL2;
        if (this.k) {
            String strL3 = cxc.L(R().getObject("numVideosText"));
            if (strL3 != null) {
                try {
                    return Long.parseLong(org.schabi.newpipe.extractor.utils.a.u(strL3));
                } catch (NumberFormatException unused) {
                }
            }
            String strL4 = cxc.L(R().getArray("byline").getObject(0).getObject("text"));
            if (strL4 != null) {
                try {
                    return Long.parseLong(org.schabi.newpipe.extractor.utils.a.u(strL4));
                } catch (NumberFormatException unused2) {
                }
            }
        }
        JsonArray array = (this.k ? R() : S()).getArray("briefStats");
        if (!array.isEmpty() && (strL2 = cxc.L(array.getObject(0))) != null) {
            return Long.parseLong(org.schabi.newpipe.extractor.utils.a.u(strL2));
        }
        JsonArray array2 = (this.k ? R() : S()).getArray("stats");
        if (array2.isEmpty() || (strL = cxc.L(array2.getObject(0))) == null) {
            return -1L;
        }
        return Long.parseLong(org.schabi.newpipe.extractor.utils.a.u(strL));
    }
}
