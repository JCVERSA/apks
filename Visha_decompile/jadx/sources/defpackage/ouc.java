package defpackage;

import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonObject;
import com.hunantv.imgo.net.entity.AuthInfo;
import com.transsion.hubsdk.api.provider.TranSearchIndexablesContract;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Collections;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;
import org.mozilla.javascript.ES6Iterator;
import org.schabi.newpipe.extractor.Page;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandler;
import org.schabi.newpipe.extractor.localization.Localization;
import org.schabi.newpipe.extractor.utils.a;

public class ouc extends ea1 {
    public boolean g;
    public JsonObject h;

    public ouc(StreamingService streamingService, ListLinkHandler listLinkHandler) {
        super(streamingService, listLinkHandler);
    }

    private void B(ga1 ga1Var, JsonObject jsonObject) {
        String str;
        JsonArray array = jsonObject.getArray("onResponseReceivedEndpoints");
        if (array.isEmpty()) {
            return;
        }
        JsonObject object = array.getObject(array.size() - 1);
        if (object.has("reloadContinuationItemsCommand")) {
            str = "reloadContinuationItemsCommand.continuationItems";
        } else if (!object.has("appendContinuationItemsAction")) {
            return;
        } else {
            str = "appendContinuationItemsAction.continuationItems";
        }
        try {
            JsonArray jsonArray = new JsonArray(oc5.a(object, str));
            int size = jsonArray.size() - 1;
            if (!jsonArray.isEmpty() && jsonArray.getObject(size).has("continuationItemRenderer")) {
                jsonArray.remove(size);
            }
            JsonArray array2 = jsonObject.getObject("frameworkUpdates").getObject("entityBatchUpdate").getArray("mutations");
            String strP = p();
            ona onaVarO = o();
            for (Object obj : jsonArray) {
                if (obj instanceof JsonObject) {
                    A(array2, (JsonObject) obj, ga1Var, strP, onaVarO);
                }
            }
        } catch (Exception unused) {
        }
    }

    public static boolean J(JsonObject jsonObject) {
        try {
            return "comments-section".equals(oc5.h(jsonObject, "itemSectionRenderer.targetId"));
        } catch (ParsingException unused) {
            return false;
        }
    }

    public static String K(JsonObject jsonObject) {
        try {
            return oc5.h(jsonObject.getObject("itemSectionRenderer").getArray("contents").getObject(0), "continuationItemRenderer.continuationEndpoint.continuationCommand.token");
        } catch (ParsingException unused) {
            return null;
        }
    }

    public static boolean L(String str, JsonObject jsonObject) {
        return str.equals(jsonObject.getString("entityKey"));
    }

    public static ParsingException M() {
        return new ParsingException("Could not get comment entity payload mutation");
    }

    public final void A(JsonArray jsonArray, JsonObject jsonObject, ga1 ga1Var, String str, ona onaVar) {
        if (!jsonObject.has("commentThreadRenderer")) {
            if (jsonObject.has("commentViewModel")) {
                JsonObject object = jsonObject.getObject("commentViewModel");
                ga1Var.d(new juc(object, null, G(jsonArray, object.getString("commentKey", "")).getObject("commentEntityPayload"), G(jsonArray, object.getString("toolbarStateKey", "")).getObject("engagementToolbarStateEntityPayload"), str, onaVar));
                return;
            } else {
                if (jsonObject.has("commentRenderer")) {
                    ga1Var.d(new puc(jsonObject.getObject("commentRenderer"), null, str, onaVar));
                    return;
                }
                return;
            }
        }
        JsonObject object2 = jsonObject.getObject("commentThreadRenderer");
        if (object2.has("commentViewModel")) {
            JsonObject object3 = object2.getObject("commentViewModel").getObject("commentViewModel");
            ga1Var.d(new juc(object3, object2.getObject("replies").getObject("commentRepliesRenderer"), G(jsonArray, object3.getString("commentKey", "")).getObject("commentEntityPayload"), G(jsonArray, object3.getString("toolbarStateKey", "")).getObject("engagementToolbarStateEntityPayload"), str, onaVar));
        } else if (object2.has("comment")) {
            ga1Var.d(new puc(object2.getObject("comment").getObject("commentRenderer"), object2.getObject("replies").getObject("commentRepliesRenderer"), str, onaVar));
        }
    }

    public final tl5.a C(JsonObject jsonObject) {
        ga1 ga1Var = new ga1(n());
        B(ga1Var, jsonObject);
        return new tl5.a(ga1Var, H(jsonObject));
    }

    public final String D(JsonObject jsonObject) {
        JsonArray jsonArrayF = F(jsonObject);
        if (jsonArrayF == null) {
            return null;
        }
        String str = (String) jsonArrayF.stream().filter(new w50(JsonObject.class)).map(new x50(JsonObject.class)).filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return ouc.J((JsonObject) obj);
            }
        }).findFirst().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ouc.K((JsonObject) obj);
            }
        }).orElse(null);
        this.g = str == null;
        return str;
    }

    public final tl5.a E() {
        return new tl5.a(Collections.emptyList(), null, Collections.emptyList());
    }

    public final JsonArray F(JsonObject jsonObject) {
        try {
            return oc5.a(jsonObject, "contents.twoColumnWatchNextResults.results.results.contents");
        } catch (ParsingException unused) {
            return null;
        }
    }

    public final JsonObject G(JsonArray jsonArray, final String str) {
        return ((JsonObject) jsonArray.stream().filter(new w50(JsonObject.class)).map(new x50(JsonObject.class)).filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return ouc.L(str, (JsonObject) obj);
            }
        }).findFirst().orElseThrow(new Supplier() {
            @Override
            public final Object get() {
                return ouc.M();
            }
        })).getObject(TranSearchIndexablesContract.TranRawData.PAYLOAD);
    }

    public final Page H(JsonObject jsonObject) {
        JsonArray array = jsonObject.getArray("onResponseReceivedEndpoints");
        if (array.isEmpty()) {
            return null;
        }
        try {
            JsonObject object = array.getObject(array.size() - 1);
            JsonArray array2 = object.getObject("reloadContinuationItemsCommand", object.getObject("appendContinuationItemsAction")).getArray("continuationItems");
            if (array2.isEmpty()) {
                return null;
            }
            JsonObject object2 = array2.getObject(array2.size() - 1).getObject("continuationItemRenderer");
            return I(oc5.h(object2, object2.has(AuthInfo.Component.CODE_BUTTON) ? "button.buttonRenderer.command.continuationCommand.token" : "continuationEndpoint.continuationCommand.token"));
        } catch (Exception unused) {
            return null;
        }
    }

    public final Page I(String str) {
        return new Page(p(), str);
    }

    @Override
    public void q(c23 c23Var) {
        Localization localizationH = h();
        String strB = tc5.b(cxc.y0(localizationH, g()).h("videoId", i()).b());
        Charset charset = StandardCharsets.UTF_8;
        String strD = D(cxc.I(ES6Iterator.NEXT_METHOD, strB.getBytes(charset), localizationH));
        if (strD == null) {
            return;
        }
        this.h = cxc.I(ES6Iterator.NEXT_METHOD, tc5.b(cxc.y0(localizationH, g()).h("continuation", strD).b()).getBytes(charset), localizationH);
    }

    @Override
    public tl5.a r() {
        return this.g ? E() : C(this.h);
    }

    @Override
    public tl5.a t(Page page) {
        if (this.g) {
            return E();
        }
        if (page == null || a.m(page.getId())) {
            throw new IllegalArgumentException("Page doesn't have the continuation.");
        }
        Localization localizationH = h();
        return C(cxc.I(ES6Iterator.NEXT_METHOD, tc5.b(cxc.y0(localizationH, g()).h("continuation", page.getId()).b()).getBytes(StandardCharsets.UTF_8), localizationH));
    }

    @Override
    public int u() throws ExtractionException {
        a();
        if (this.g) {
            return -1;
        }
        try {
            return Integer.parseInt(a.u(cxc.L(this.h.getArray("onResponseReceivedEndpoints").getObject(0).getObject("reloadContinuationItemsCommand").getArray("continuationItems").getObject(0).getObject("commentsHeaderRenderer").getObject("countText"))));
        } catch (Exception e) {
            throw new ExtractionException("Unable to get comments count", e);
        }
    }

    @Override
    public boolean v() {
        return this.g;
    }
}
