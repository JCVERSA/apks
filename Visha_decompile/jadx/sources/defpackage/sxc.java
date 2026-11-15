package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonObject;
import com.transsion.audiotagger.tag.datatype.DataTypes;
import java.nio.charset.StandardCharsets;
import java.util.Iterator;
import java.util.List;
import org.schabi.newpipe.extractor.Page;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.linkhandler.SearchQueryHandler;
import org.schabi.newpipe.extractor.localization.Localization;
import org.schabi.newpipe.extractor.search.SearchExtractor;
import org.schabi.newpipe.extractor.utils.a;

public class sxc extends SearchExtractor {
    public final String g;
    public final boolean h;
    public final boolean i;
    public final boolean j;
    public JsonObject k;

    public sxc(StreamingService streamingService, SearchQueryHandler searchQueryHandler) {
        super(streamingService, searchQueryHandler);
        List<String> contentFilters = searchQueryHandler.getContentFilters();
        String str = a.n(contentFilters) ? null : contentFilters.get(0);
        this.g = str;
        this.h = str == null || TtmlNode.COMBINE_ALL.equals(str) || "videos".equals(str);
        this.i = str == null || TtmlNode.COMBINE_ALL.equals(str) || "channels".equals(str);
        this.j = str == null || TtmlNode.COMBINE_ALL.equals(str) || "playlists".equals(str);
    }

    private Page A(JsonObject jsonObject) {
        if (a.o(jsonObject)) {
            return null;
        }
        return new Page("https://www.youtube.com/youtubei/v1/search?prettyPrint=false", jsonObject.getObject("continuationEndpoint").getObject("continuationCommand").getString("token"));
    }

    @Override
    public void q(c23 c23Var) {
        String strW = super.w();
        Localization localizationH = h();
        String strS = txc.s(this.g);
        aa5 aa5VarH = cxc.y0(localizationH, g()).h("query", strW);
        if (!a.m(strS)) {
            aa5VarH.h("params", strS);
        }
        this.k = cxc.I("search", tc5.b(aa5VarH.b()).getBytes(StandardCharsets.UTF_8), localizationH);
    }

    @Override
    public tl5.a r() throws SearchExtractor.NothingFoundException {
        ls6 ls6Var = new ls6(n());
        Page pageA = null;
        for (JsonObject jsonObject : this.k.getObject("contents").getObject("twoColumnSearchResultsRenderer").getObject("primaryContents").getObject("sectionListRenderer").getArray("contents")) {
            if (jsonObject.has("itemSectionRenderer")) {
                z(ls6Var, jsonObject.getObject("itemSectionRenderer").getArray("contents"));
            } else if (jsonObject.has("continuationItemRenderer")) {
                pageA = A(jsonObject.getObject("continuationItemRenderer"));
            }
        }
        return new tl5.a(ls6Var, pageA);
    }

    @Override
    public tl5.a t(Page page) throws SearchExtractor.NothingFoundException {
        if (page == null || a.m(page.getUrl())) {
            throw new IllegalArgumentException("Page doesn't contain an URL");
        }
        Localization localizationH = h();
        ls6 ls6Var = new ls6(n());
        JsonArray array = cxc.I("search", tc5.b(cxc.y0(localizationH, g()).h("continuation", page.getId()).b()).getBytes(StandardCharsets.UTF_8), localizationH).getArray("onResponseReceivedCommands").getObject(0).getObject("appendContinuationItemsAction").getArray("continuationItems");
        z(ls6Var, array.getObject(0).getObject("itemSectionRenderer").getArray("contents"));
        return new tl5.a(ls6Var, A(array.getObject(1).getObject("continuationItemRenderer")));
    }

    @Override
    public List v() {
        return lvc.f(this.k.getObject("contents").getObject("twoColumnSearchResultsRenderer").getObject("primaryContents").getObject("sectionListRenderer").getArray("contents"));
    }

    @Override
    public String x() {
        JsonObject object = this.k.getObject("contents").getObject("twoColumnSearchResultsRenderer").getObject("primaryContents").getObject("sectionListRenderer").getArray("contents").getObject(0).getObject("itemSectionRenderer");
        JsonObject object2 = object.getArray("contents").getObject(0).getObject("didYouMeanRenderer");
        return !object2.isEmpty() ? oc5.h(object2, "correctedQueryEndpoint.searchEndpoint.query") : (String) gvc.a(cxc.L(object.getArray("contents").getObject(0).getObject("showingResultsForRenderer").getObject("correctedQuery")), "");
    }

    @Override
    public boolean y() {
        return !this.k.getObject("contents").getObject("twoColumnSearchResultsRenderer").getObject("primaryContents").getObject("sectionListRenderer").getArray("contents").getObject(0).getObject("itemSectionRenderer").getArray("contents").getObject(0).getObject("showingResultsForRenderer").isEmpty();
    }

    public final void z(ls6 ls6Var, JsonArray jsonArray) throws SearchExtractor.NothingFoundException {
        ona onaVarO = o();
        Iterator<Object> it = jsonArray.iterator();
        while (it.hasNext()) {
            JsonObject jsonObject = (JsonObject) it.next();
            if (jsonObject.has("backgroundPromoRenderer")) {
                throw new SearchExtractor.NothingFoundException(cxc.L(jsonObject.getObject("backgroundPromoRenderer").getObject("bodyText")));
            }
            if (this.h && jsonObject.has("videoRenderer")) {
                ls6Var.d(new bzc(jsonObject.getObject("videoRenderer"), onaVarO));
            } else if (this.i && jsonObject.has("channelRenderer")) {
                ls6Var.d(new qtc(jsonObject.getObject("channelRenderer")));
            } else if (this.j) {
                if (jsonObject.has("playlistRenderer")) {
                    ls6Var.d(new pxc(jsonObject.getObject("playlistRenderer")));
                } else if (jsonObject.has("showRenderer")) {
                    ls6Var.d(new xxc(jsonObject.getObject("showRenderer")));
                } else if (jsonObject.has("lockupViewModel")) {
                    JsonObject object = jsonObject.getObject("lockupViewModel");
                    if ("LOCKUP_CONTENT_TYPE_PLAYLIST".equals(object.getString(DataTypes.OBJ_CONTENT_TYPE))) {
                        ls6Var.d(new rvc(object));
                    }
                }
            }
        }
    }
}
